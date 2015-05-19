require 'rails_helper'

feature "Alerts" do
  scenario "notice flash messages should be dismisssable", js: true do
    visit '/products'
    expect(page).to have_text("Listing Products")

    click_link "New Product"
    expect(page).to have_text("New Product")

    fill_in "Name", with: "Nike T-Shirt"
    fill_in "Description", with: "Men's T-Shirt in red"
    fill_in "Price", with: "15.00"

    click_button 'Create Product'
    expect(page).to have_text("Product was successfully created.")
    
    #for launchy
    #save_and_open_page
    within '.alert-success' do
      click_button 'Close'
    end

    expect(page).not_to have_text("Product was successfully created.")
  end


  scenario "alert flash messages should be dismisssable", js: true do
    visit '/products'
    expect(page).to have_text("Listing Products")

    click_link "New Product"
    expect(page).to have_text("New Product")

    fill_in "Name", with: "Nike T-Shirt"
    fill_in "Description", with: "Men's T-Shirt in red"
    fill_in "Price", with: ""

    click_button 'Create Product'
    expect(page).to have_text("Failed to create product - please check for errors.")
    
    #for launchy
    save_and_open_page
    within '.alert-danger' do
      click_button 'Close'
    end

    expect(page).not_to have_text("Failed to create product - please check for errors.")
  end
end