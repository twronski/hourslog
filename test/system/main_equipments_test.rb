require "application_system_test_case"

class MainEquipmentsTest < ApplicationSystemTestCase
  setup do
    @main_equipment = main_equipments(:one)
  end

  test "visiting the index" do
    visit main_equipments_url
    assert_selector "h1", text: "Main Equipments"
  end

  test "creating a Main equipment" do
    visit main_equipments_url
    click_on "New Main Equipment"

    fill_in "Name", with: @main_equipment.name
    click_on "Create Main equipment"

    assert_text "Main equipment was successfully created"
    click_on "Back"
  end

  test "updating a Main equipment" do
    visit main_equipments_url
    click_on "Edit", match: :first

    fill_in "Name", with: @main_equipment.name
    click_on "Update Main equipment"

    assert_text "Main equipment was successfully updated"
    click_on "Back"
  end

  test "destroying a Main equipment" do
    visit main_equipments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Main equipment was successfully destroyed"
  end
end
