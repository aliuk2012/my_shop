require 'rails_helper'

feature "Users authorization and secruity" do
  scenario "User is not logged in show sign in button" do
    visit '/products'
    expect(page).to have_text('Sign In')
    expect(page).not_to have_text('Sign Out')
  end

  scenario "User is logged in show sign in button" do
    login_as_user

    visit '/products'
    expect(page).not_to have_text('Sign In')
    expect(page).to have_text('Sign Out')
  end

end