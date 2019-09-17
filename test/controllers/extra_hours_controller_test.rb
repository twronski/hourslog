require 'test_helper'

class ExtraHoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @extra_hour = extra_hours(:one)
  end

  test "should get index" do
    get extra_hours_url
    assert_response :success
  end

  test "should get new" do
    get new_extra_hour_url
    assert_response :success
  end

  test "should create extra_hour" do
    assert_difference('ExtraHour.count') do
      post extra_hours_url, params: { extra_hour: { execution_date: @extra_hour.execution_date, profile_id: @extra_hour.profile_id, project_id: @extra_hour.project_id, status: @extra_hour.status } }
    end

    assert_redirected_to extra_hour_url(ExtraHour.last)
  end

  test "should show extra_hour" do
    get extra_hour_url(@extra_hour)
    assert_response :success
  end

  test "should get edit" do
    get edit_extra_hour_url(@extra_hour)
    assert_response :success
  end

  test "should update extra_hour" do
    patch extra_hour_url(@extra_hour), params: { extra_hour: { execution_date: @extra_hour.execution_date, profile_id: @extra_hour.profile_id, project_id: @extra_hour.project_id, status: @extra_hour.status } }
    assert_redirected_to extra_hour_url(@extra_hour)
  end

  test "should destroy extra_hour" do
    assert_difference('ExtraHour.count', -1) do
      delete extra_hour_url(@extra_hour)
    end

    assert_redirected_to extra_hours_url
  end
end
