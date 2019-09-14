require 'test_helper'

class MainEquipmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @main_equipment = main_equipments(:one)
  end

  test "should get index" do
    get main_equipments_url
    assert_response :success
  end

  test "should get new" do
    get new_main_equipment_url
    assert_response :success
  end

  test "should create main_equipment" do
    assert_difference('MainEquipment.count') do
      post main_equipments_url, params: { main_equipment: { name: @main_equipment.name } }
    end

    assert_redirected_to main_equipment_url(MainEquipment.last)
  end

  test "should show main_equipment" do
    get main_equipment_url(@main_equipment)
    assert_response :success
  end

  test "should get edit" do
    get edit_main_equipment_url(@main_equipment)
    assert_response :success
  end

  test "should update main_equipment" do
    patch main_equipment_url(@main_equipment), params: { main_equipment: { name: @main_equipment.name } }
    assert_redirected_to main_equipment_url(@main_equipment)
  end

  test "should destroy main_equipment" do
    assert_difference('MainEquipment.count', -1) do
      delete main_equipment_url(@main_equipment)
    end

    assert_redirected_to main_equipments_url
  end
end
