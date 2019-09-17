require 'test_helper'

class ProfileSubSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile_sub_skill = profile_sub_skills(:one)
  end

  test "should get index" do
    get profile_sub_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_sub_skill_url
    assert_response :success
  end

  test "should create profile_sub_skill" do
    assert_difference('ProfileSubSkill.count') do
      post profile_sub_skills_url, params: { profile_sub_skill: { expiration_date: @profile_sub_skill.expiration_date, level: @profile_sub_skill.level, profile_id: @profile_sub_skill.profile_id, status: @profile_sub_skill.status, sub_skill_id: @profile_sub_skill.sub_skill_id } }
    end

    assert_redirected_to profile_sub_skill_url(ProfileSubSkill.last)
  end

  test "should show profile_sub_skill" do
    get profile_sub_skill_url(@profile_sub_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_sub_skill_url(@profile_sub_skill)
    assert_response :success
  end

  test "should update profile_sub_skill" do
    patch profile_sub_skill_url(@profile_sub_skill), params: { profile_sub_skill: { expiration_date: @profile_sub_skill.expiration_date, level: @profile_sub_skill.level, profile_id: @profile_sub_skill.profile_id, status: @profile_sub_skill.status, sub_skill_id: @profile_sub_skill.sub_skill_id } }
    assert_redirected_to profile_sub_skill_url(@profile_sub_skill)
  end

  test "should destroy profile_sub_skill" do
    assert_difference('ProfileSubSkill.count', -1) do
      delete profile_sub_skill_url(@profile_sub_skill)
    end

    assert_redirected_to profile_sub_skills_url
  end
end
