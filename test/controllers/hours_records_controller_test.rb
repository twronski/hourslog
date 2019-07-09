require 'test_helper'

class HoursRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hours_record = hours_records(:one)
  end

  test "should get index" do
    get hours_records_url
    assert_response :success
  end

  test "should get new" do
    get new_hours_record_url
    assert_response :success
  end

  test "should create hours_record" do
    assert_difference('HoursRecord.count') do
      post hours_records_url, params: { hours_record: { activity_id: @hours_record.activity_id, bay_id: @hours_record.bay_id, day: @hours_record.day, man_hour: @hours_record.man_hour, project_id: @hours_record.project_id, user_id: @hours_record.user_id, voltage_level_id: @hours_record.voltage_level_id } }
    end

    assert_redirected_to hours_record_url(HoursRecord.last)
  end

  test "should show hours_record" do
    get hours_record_url(@hours_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_hours_record_url(@hours_record)
    assert_response :success
  end

  test "should update hours_record" do
    patch hours_record_url(@hours_record), params: { hours_record: { activity_id: @hours_record.activity_id, bay_id: @hours_record.bay_id, day: @hours_record.day, man_hour: @hours_record.man_hour, project_id: @hours_record.project_id, user_id: @hours_record.user_id, voltage_level_id: @hours_record.voltage_level_id } }
    assert_redirected_to hours_record_url(@hours_record)
  end

  test "should destroy hours_record" do
    assert_difference('HoursRecord.count', -1) do
      delete hours_record_url(@hours_record)
    end

    assert_redirected_to hours_records_url
  end
end
