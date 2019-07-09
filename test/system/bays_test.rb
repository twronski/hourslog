require "application_system_test_case"

class BaysTest < ApplicationSystemTestCase
  setup do
    @bay = bays(:one)
  end

  test "visiting the index" do
    visit bays_url
    assert_selector "h1", text: "Bays"
  end

  test "creating a Bay" do
    visit bays_url
    click_on "New Bay"

    fill_in "Name", with: @bay.name
    click_on "Create Bay"

    assert_text "Bay was successfully created"
    click_on "Back"
  end

  test "updating a Bay" do
    visit bays_url
    click_on "Edit", match: :first

    fill_in "Name", with: @bay.name
    click_on "Update Bay"

    assert_text "Bay was successfully updated"
    click_on "Back"
  end

  test "destroying a Bay" do
    visit bays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bay was successfully destroyed"
  end
end
