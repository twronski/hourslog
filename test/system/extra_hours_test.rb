require "application_system_test_case"

class ExtraHoursTest < ApplicationSystemTestCase
  setup do
    @extra_hour = extra_hours(:one)
  end

  test "visiting the index" do
    visit extra_hours_url
    assert_selector "h1", text: "Extra Hours"
  end

  test "creating a Extra hour" do
    visit extra_hours_url
    click_on "New Extra Hour"

    fill_in "Execution date", with: @extra_hour.execution_date
    fill_in "Profile", with: @extra_hour.profile_id
    fill_in "Project", with: @extra_hour.project_id
    fill_in "Status", with: @extra_hour.status
    click_on "Create Extra hour"

    assert_text "Extra hour was successfully created"
    click_on "Back"
  end

  test "updating a Extra hour" do
    visit extra_hours_url
    click_on "Edit", match: :first

    fill_in "Execution date", with: @extra_hour.execution_date
    fill_in "Profile", with: @extra_hour.profile_id
    fill_in "Project", with: @extra_hour.project_id
    fill_in "Status", with: @extra_hour.status
    click_on "Update Extra hour"

    assert_text "Extra hour was successfully updated"
    click_on "Back"
  end

  test "destroying a Extra hour" do
    visit extra_hours_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Extra hour was successfully destroyed"
  end
end
