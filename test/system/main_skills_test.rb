require "application_system_test_case"

class MainSkillsTest < ApplicationSystemTestCase
  setup do
    @main_skill = main_skills(:one)
  end

  test "visiting the index" do
    visit main_skills_url
    assert_selector "h1", text: "Main Skills"
  end

  test "creating a Main skill" do
    visit main_skills_url
    click_on "New Main Skill"

    fill_in "Name", with: @main_skill.name
    click_on "Create Main skill"

    assert_text "Main skill was successfully created"
    click_on "Back"
  end

  test "updating a Main skill" do
    visit main_skills_url
    click_on "Edit", match: :first

    fill_in "Name", with: @main_skill.name
    click_on "Update Main skill"

    assert_text "Main skill was successfully updated"
    click_on "Back"
  end

  test "destroying a Main skill" do
    visit main_skills_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Main skill was successfully destroyed"
  end
end
