require "application_system_test_case"

class SubSkillsTest < ApplicationSystemTestCase
  setup do
    @sub_skill = sub_skills(:one)
  end

  test "visiting the index" do
    visit sub_skills_url
    assert_selector "h1", text: "Sub Skills"
  end

  test "creating a Sub skill" do
    visit sub_skills_url
    click_on "New Sub Skill"

    fill_in "Name", with: @sub_skill.name
    click_on "Create Sub skill"

    assert_text "Sub skill was successfully created"
    click_on "Back"
  end

  test "updating a Sub skill" do
    visit sub_skills_url
    click_on "Edit", match: :first

    fill_in "Name", with: @sub_skill.name
    click_on "Update Sub skill"

    assert_text "Sub skill was successfully updated"
    click_on "Back"
  end

  test "destroying a Sub skill" do
    visit sub_skills_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sub skill was successfully destroyed"
  end
end
