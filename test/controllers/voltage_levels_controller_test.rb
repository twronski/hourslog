require 'test_helper'

class VoltageLevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @voltage_level = voltage_levels(:one)
  end

  test "should get index" do
    get voltage_levels_url
    assert_response :success
  end

  test "should get new" do
    get new_voltage_level_url
    assert_response :success
  end

  test "should create voltage_level" do
    assert_difference('VoltageLevel.count') do
      post voltage_levels_url, params: { voltage_level: { name: @voltage_level.name } }
    end

    assert_redirected_to voltage_level_url(VoltageLevel.last)
  end

  test "should show voltage_level" do
    get voltage_level_url(@voltage_level)
    assert_response :success
  end

  test "should get edit" do
    get edit_voltage_level_url(@voltage_level)
    assert_response :success
  end

  test "should update voltage_level" do
    patch voltage_level_url(@voltage_level), params: { voltage_level: { name: @voltage_level.name } }
    assert_redirected_to voltage_level_url(@voltage_level)
  end

  test "should destroy voltage_level" do
    assert_difference('VoltageLevel.count', -1) do
      delete voltage_level_url(@voltage_level)
    end

    assert_redirected_to voltage_levels_url
  end
end
