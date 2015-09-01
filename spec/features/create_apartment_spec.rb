require "rails_helper"

RSpec.feature "Create Apartment" do
  scenario "allow flisters to create new apartment" do
    visit '/'
    
    click_link "Add New Apartment"
    
    fill_in "title", with: "Apartment one"
    fill_in "description", with: "This is three bedroom apartment"
    click_button "Add Apartment"

    expect(page).to have_content("Apartment added successfully")
    expect(page.current_path).to eq(apartments_path)

  end
end