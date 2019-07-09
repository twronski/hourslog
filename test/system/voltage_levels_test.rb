require "application_system_test_case"

class VoltageLevelsTest < ApplicationSystemTestCase
  setup do
    @voltage_level = voltage_levels(:one)
  end

  test "visiting the index" do
    visit voltage_levels_url
    assert_selector "h1", text: "Voltage Levels"
  end

  test "creating a Voltage level" do
    visit voltage_levels_url
    click_on "New Voltage Level"

    fill_in "Name", with: @voltage_level.name
    click_on "Create Voltage level"

    assert_text "Voltage level was successfully created"
    click_on "Back"
  end

  test "updating a Voltage level" do
    visit voltage_levels_url
    click_on "Edit", match: :first

    fill_in "Name", with: @voltage_level.name
    click_on "Update Voltage level"

    assert_text "Voltage level was successfully updated"
    click_on "Back"
  end

  test "destroying a Voltage level" do
    visit voltage_levels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Voltage level was successfully destroyed"
  end
end
