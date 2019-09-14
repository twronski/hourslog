require "application_system_test_case"

class ProfileSubSkillsTest < ApplicationSystemTestCase
  setup do
    @profile_sub_skill = profile_sub_skills(:one)
  end

  test "visiting the index" do
    visit profile_sub_skills_url
    assert_selector "h1", text: "Profile Sub Skills"
  end

  test "creating a Profile sub skill" do
    visit profile_sub_skills_url
    click_on "New Profile Sub Skill"

    fill_in "Expiration date", with: @profile_sub_skill.expiration_date
    fill_in "Level", with: @profile_sub_skill.level
    fill_in "Profile", with: @profile_sub_skill.profile_id
    fill_in "Status", with: @profile_sub_skill.status
    fill_in "Sub skill", with: @profile_sub_skill.sub_skill_id
    click_on "Create Profile sub skill"

    assert_text "Profile sub skill was successfully created"
    click_on "Back"
  end

  test "updating a Profile sub skill" do
    visit profile_sub_skills_url
    click_on "Edit", match: :first

    fill_in "Expiration date", with: @profile_sub_skill.expiration_date
    fill_in "Level", with: @profile_sub_skill.level
    fill_in "Profile", with: @profile_sub_skill.profile_id
    fill_in "Status", with: @profile_sub_skill.status
    fill_in "Sub skill", with: @profile_sub_skill.sub_skill_id
    click_on "Update Profile sub skill"

    assert_text "Profile sub skill was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile sub skill" do
    visit profile_sub_skills_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile sub skill was successfully destroyed"
  end
end
