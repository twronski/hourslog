require 'test_helper'

class SuggestionBoxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suggestion_box = suggestion_boxes(:one)
  end

  test "should get index" do
    get suggestion_boxes_url
    assert_response :success
  end

  test "should get new" do
    get new_suggestion_box_url
    assert_response :success
  end

  test "should create suggestion_box" do
    assert_difference('SuggestionBox.count') do
      post suggestion_boxes_url, params: { suggestion_box: { description: @suggestion_box.description, name: @suggestion_box.name, status: @suggestion_box.status } }
    end

    assert_redirected_to suggestion_box_url(SuggestionBox.last)
  end

  test "should show suggestion_box" do
    get suggestion_box_url(@suggestion_box)
    assert_response :success
  end

  test "should get edit" do
    get edit_suggestion_box_url(@suggestion_box)
    assert_response :success
  end

  test "should update suggestion_box" do
    patch suggestion_box_url(@suggestion_box), params: { suggestion_box: { description: @suggestion_box.description, name: @suggestion_box.name, status: @suggestion_box.status } }
    assert_redirected_to suggestion_box_url(@suggestion_box)
  end

  test "should destroy suggestion_box" do
    assert_difference('SuggestionBox.count', -1) do
      delete suggestion_box_url(@suggestion_box)
    end

    assert_redirected_to suggestion_boxes_url
  end
end
