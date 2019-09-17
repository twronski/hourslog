require "application_system_test_case"

class SuggestionBoxesTest < ApplicationSystemTestCase
  setup do
    @suggestion_box = suggestion_boxes(:one)
  end

  test "visiting the index" do
    visit suggestion_boxes_url
    assert_selector "h1", text: "Suggestion Boxes"
  end

  test "creating a Suggestion box" do
    visit suggestion_boxes_url
    click_on "New Suggestion Box"

    fill_in "Description", with: @suggestion_box.description
    fill_in "Name", with: @suggestion_box.name
    fill_in "Status", with: @suggestion_box.status
    click_on "Create Suggestion box"

    assert_text "Suggestion box was successfully created"
    click_on "Back"
  end

  test "updating a Suggestion box" do
    visit suggestion_boxes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @suggestion_box.description
    fill_in "Name", with: @suggestion_box.name
    fill_in "Status", with: @suggestion_box.status
    click_on "Update Suggestion box"

    assert_text "Suggestion box was successfully updated"
    click_on "Back"
  end

  test "destroying a Suggestion box" do
    visit suggestion_boxes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Suggestion box was successfully destroyed"
  end
end
