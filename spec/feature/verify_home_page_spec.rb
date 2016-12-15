require 'rails_helper'

RSpec.feature "Verify Home Page" do
    
  before do
    visit root_path      
  end
    
  scenario "has Home and New Post links" do
    #visit root_path
    expect(page).to have_content('Home')
    expect(page).to have_content('New Post')
  end
  
  scenario "Home link links to Home Page" do
    expect(page).to have_link('Home', href: root_path)
  end
  
  scenario "New Post links to New Post Page" do
    expect(page).to have_link('New Post', href: new_post_path)
  end
end