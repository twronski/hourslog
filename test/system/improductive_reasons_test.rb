require "application_system_test_case"

class ImproductiveReasonsTest < ApplicationSystemTestCase
  setup do
    @improductive_reason = improductive_reasons(:one)
  end

  test "visiting the index" do
    visit improductive_reasons_url
    assert_selector "h1", text: "Improductive Reasons"
  end

  test "creating a Improductive reason" do
    visit improductive_reasons_url
    click_on "New Improductive Reason"

    fill_in "Description", with: @improductive_reason.description
    fill_in "Name", with: @improductive_reason.name
    click_on "Create Improductive reason"

    assert_text "Improductive reason was successfully created"
    click_on "Back"
  end

  test "updating a Improductive reason" do
    visit improductive_reasons_url
    click_on "Edit", match: :first

    fill_in "Description", with: @improductive_reason.description
    fill_in "Name", with: @improductive_reason.name
    click_on "Update Improductive reason"

    assert_text "Improductive reason was successfully updated"
    click_on "Back"
  end

  test "destroying a Improductive reason" do
    visit improductive_reasons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Improductive reason was successfully destroyed"
  end
end
