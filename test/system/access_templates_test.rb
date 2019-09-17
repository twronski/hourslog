require "application_system_test_case"

class AccessTemplatesTest < ApplicationSystemTestCase
  setup do
    @access_template = access_templates(:one)
  end

  test "visiting the index" do
    visit access_templates_url
    assert_selector "h1", text: "Access Templates"
  end

  test "creating a Access template" do
    visit access_templates_url
    click_on "New Access Template"

    fill_in "Description", with: @access_template.description
    check "Mandatory" if @access_template.mandatory
    fill_in "Name", with: @access_template.name
    click_on "Create Access template"

    assert_text "Access template was successfully created"
    click_on "Back"
  end

  test "updating a Access template" do
    visit access_templates_url
    click_on "Edit", match: :first

    fill_in "Description", with: @access_template.description
    check "Mandatory" if @access_template.mandatory
    fill_in "Name", with: @access_template.name
    click_on "Update Access template"

    assert_text "Access template was successfully updated"
    click_on "Back"
  end

  test "destroying a Access template" do
    visit access_templates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Access template was successfully destroyed"
  end
end
