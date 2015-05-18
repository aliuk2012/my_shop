require 'rails_helper'

feature "Welcome Page" do 
  #background
  scenario "When visiting the home page the user should see 'Welcome aboard'" do
    visit '/'
    expect(page).to have_text('Welcome aboard')
  end
end