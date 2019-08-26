require 'test_helper'

class MainSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @main_skill = main_skills(:one)
  end

  test "should get index" do
    get main_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_main_skill_url
    assert_response :success
  end

  test "should create main_skill" do
    assert_difference('MainSkill.count') do
      post main_skills_url, params: { main_skill: { name: @main_skill.name } }
    end

    assert_redirected_to main_skill_url(MainSkill.last)
  end

  test "should show main_skill" do
    get main_skill_url(@main_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_main_skill_url(@main_skill)
    assert_response :success
  end

  test "should update main_skill" do
    patch main_skill_url(@main_skill), params: { main_skill: { name: @main_skill.name } }
    assert_redirected_to main_skill_url(@main_skill)
  end

  test "should destroy main_skill" do
    assert_difference('MainSkill.count', -1) do
      delete main_skill_url(@main_skill)
    end

    assert_redirected_to main_skills_url
  end
end
