require 'test_helper'

class AccessTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @access_template = access_templates(:one)
  end

  test "should get index" do
    get access_templates_url
    assert_response :success
  end

  test "should get new" do
    get new_access_template_url
    assert_response :success
  end

  test "should create access_template" do
    assert_difference('AccessTemplate.count') do
      post access_templates_url, params: { access_template: { description: @access_template.description, mandatory: @access_template.mandatory, name: @access_template.name } }
    end

    assert_redirected_to access_template_url(AccessTemplate.last)
  end

  test "should show access_template" do
    get access_template_url(@access_template)
    assert_response :success
  end

  test "should get edit" do
    get edit_access_template_url(@access_template)
    assert_response :success
  end

  test "should update access_template" do
    patch access_template_url(@access_template), params: { access_template: { description: @access_template.description, mandatory: @access_template.mandatory, name: @access_template.name } }
    assert_redirected_to access_template_url(@access_template)
  end

  test "should destroy access_template" do
    assert_difference('AccessTemplate.count', -1) do
      delete access_template_url(@access_template)
    end

    assert_redirected_to access_templates_url
  end
end
