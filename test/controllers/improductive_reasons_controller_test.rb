require 'test_helper'

class ImproductiveReasonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @improductive_reason = improductive_reasons(:one)
  end

  test "should get index" do
    get improductive_reasons_url
    assert_response :success
  end

  test "should get new" do
    get new_improductive_reason_url
    assert_response :success
  end

  test "should create improductive_reason" do
    assert_difference('ImproductiveReason.count') do
      post improductive_reasons_url, params: { improductive_reason: { description: @improductive_reason.description, name: @improductive_reason.name } }
    end

    assert_redirected_to improductive_reason_url(ImproductiveReason.last)
  end

  test "should show improductive_reason" do
    get improductive_reason_url(@improductive_reason)
    assert_response :success
  end

  test "should get edit" do
    get edit_improductive_reason_url(@improductive_reason)
    assert_response :success
  end

  test "should update improductive_reason" do
    patch improductive_reason_url(@improductive_reason), params: { improductive_reason: { description: @improductive_reason.description, name: @improductive_reason.name } }
    assert_redirected_to improductive_reason_url(@improductive_reason)
  end

  test "should destroy improductive_reason" do
    assert_difference('ImproductiveReason.count', -1) do
      delete improductive_reason_url(@improductive_reason)
    end

    assert_redirected_to improductive_reasons_url
  end
end
