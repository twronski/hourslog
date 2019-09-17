require 'test_helper'

class ImprovementActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @improvement_action = improvement_actions(:one)
  end

  test "should get index" do
    get improvement_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_improvement_action_url
    assert_response :success
  end

  test "should create improvement_action" do
    assert_difference('ImprovementAction.count') do
      post improvement_actions_url, params: { improvement_action: { description: @improvement_action.description, status: @improvement_action.status, title: @improvement_action.title } }
    end

    assert_redirected_to improvement_action_url(ImprovementAction.last)
  end

  test "should show improvement_action" do
    get improvement_action_url(@improvement_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_improvement_action_url(@improvement_action)
    assert_response :success
  end

  test "should update improvement_action" do
    patch improvement_action_url(@improvement_action), params: { improvement_action: { description: @improvement_action.description, status: @improvement_action.status, title: @improvement_action.title } }
    assert_redirected_to improvement_action_url(@improvement_action)
  end

  test "should destroy improvement_action" do
    assert_difference('ImprovementAction.count', -1) do
      delete improvement_action_url(@improvement_action)
    end

    assert_redirected_to improvement_actions_url
  end
end
