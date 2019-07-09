require "application_system_test_case"

class HoursRecordsTest < ApplicationSystemTestCase
  setup do
    @hours_record = hours_records(:one)
  end

  test "visiting the index" do
    visit hours_records_url
    assert_selector "h1", text: "Hours Records"
  end

  test "creating a Hours record" do
    visit hours_records_url
    click_on "New Hours Record"

    fill_in "Activity", with: @hours_record.activity_id
    fill_in "Bay", with: @hours_record.bay_id
    fill_in "Day", with: @hours_record.day
    fill_in "Man hour", with: @hours_record.man_hour
    fill_in "Project", with: @hours_record.project_id
    fill_in "User", with: @hours_record.user_id
    fill_in "Voltage level", with: @hours_record.voltage_level_id
    click_on "Create Hours record"

    assert_text "Hours record was successfully created"
    click_on "Back"
  end

  test "updating a Hours record" do
    visit hours_records_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @hours_record.activity_id
    fill_in "Bay", with: @hours_record.bay_id
    fill_in "Day", with: @hours_record.day
    fill_in "Man hour", with: @hours_record.man_hour
    fill_in "Project", with: @hours_record.project_id
    fill_in "User", with: @hours_record.user_id
    fill_in "Voltage level", with: @hours_record.voltage_level_id
    click_on "Update Hours record"

    assert_text "Hours record was successfully updated"
    click_on "Back"
  end

  test "destroying a Hours record" do
    visit hours_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hours record was successfully destroyed"
  end
end
