require 'test_helper'

class SubSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_skill = sub_skills(:one)
  end

  test "should get index" do
    get sub_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_skill_url
    assert_response :success
  end

  test "should create sub_skill" do
    assert_difference('SubSkill.count') do
      post sub_skills_url, params: { sub_skill: { name: @sub_skill.name } }
    end

    assert_redirected_to sub_skill_url(SubSkill.last)
  end

  test "should show sub_skill" do
    get sub_skill_url(@sub_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_skill_url(@sub_skill)
    assert_response :success
  end

  test "should update sub_skill" do
    patch sub_skill_url(@sub_skill), params: { sub_skill: { name: @sub_skill.name } }
    assert_redirected_to sub_skill_url(@sub_skill)
  end

  test "should destroy sub_skill" do
    assert_difference('SubSkill.count', -1) do
      delete sub_skill_url(@sub_skill)
    end

    assert_redirected_to sub_skills_url
  end
end
