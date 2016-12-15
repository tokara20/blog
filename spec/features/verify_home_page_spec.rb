require 'rails_helper'

RSpec.feature "Visitor visits Home Page" do
    
  before do
    visit root_path      
  end
    
  scenario "and it has Home and New Post links" do
    #visit root_path
    expect(page).to have_content('Home')
    expect(page).to have_content('New Post')
  end
  
  scenario "it has a link to the Home Page" do
    expect(page).to have_link('Home', href: root_path)
  end
  
  scenario "it has a link to the New Post Page" do
    expect(page).to have_link('New Post', href: new_post_path)
  end
end