require "rails_helper"

RSpec.feature "Create Apartment" do
  scenario "allow flisters to create new apartment" do
    visit '/'

    click_link "Add New Apartment"

    fill_in "Title", with: "Apartment one"
    fill_in "Description", with: "This is three bedroom apartment"
    click_button "Create Apartment"

    expect(page).to have_content("Apartment created successfully")
    expect(page.current_path).to eq(apartments_path)

  end
end