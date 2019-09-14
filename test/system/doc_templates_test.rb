require "application_system_test_case"

class DocTemplatesTest < ApplicationSystemTestCase
  setup do
    @doc_template = doc_templates(:one)
  end

  test "visiting the index" do
    visit doc_templates_url
    assert_selector "h1", text: "Doc Templates"
  end

  test "creating a Doc template" do
    visit doc_templates_url
    click_on "New Doc Template"

    fill_in "Description", with: @doc_template.description
    fill_in "Title", with: @doc_template.title
    click_on "Create Doc template"

    assert_text "Doc template was successfully created"
    click_on "Back"
  end

  test "updating a Doc template" do
    visit doc_templates_url
    click_on "Edit", match: :first

    fill_in "Description", with: @doc_template.description
    fill_in "Title", with: @doc_template.title
    click_on "Update Doc template"

    assert_text "Doc template was successfully updated"
    click_on "Back"
  end

  test "destroying a Doc template" do
    visit doc_templates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Doc template was successfully destroyed"
  end
end
