require "application_system_test_case"

class ImprovementActionsTest < ApplicationSystemTestCase
  setup do
    @improvement_action = improvement_actions(:one)
  end

  test "visiting the index" do
    visit improvement_actions_url
    assert_selector "h1", text: "Improvement Actions"
  end

  test "creating a Improvement action" do
    visit improvement_actions_url
    click_on "New Improvement Action"

    fill_in "Description", with: @improvement_action.description
    fill_in "Status", with: @improvement_action.status
    fill_in "Title", with: @improvement_action.title
    click_on "Create Improvement action"

    assert_text "Improvement action was successfully created"
    click_on "Back"
  end

  test "updating a Improvement action" do
    visit improvement_actions_url
    click_on "Edit", match: :first

    fill_in "Description", with: @improvement_action.description
    fill_in "Status", with: @improvement_action.status
    fill_in "Title", with: @improvement_action.title
    click_on "Update Improvement action"

    assert_text "Improvement action was successfully updated"
    click_on "Back"
  end

  test "destroying a Improvement action" do
    visit improvement_actions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Improvement action was successfully destroyed"
  end
end
