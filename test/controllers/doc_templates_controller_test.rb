require 'test_helper'

class DocTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doc_template = doc_templates(:one)
  end

  test "should get index" do
    get doc_templates_url
    assert_response :success
  end

  test "should get new" do
    get new_doc_template_url
    assert_response :success
  end

  test "should create doc_template" do
    assert_difference('DocTemplate.count') do
      post doc_templates_url, params: { doc_template: { description: @doc_template.description, title: @doc_template.title } }
    end

    assert_redirected_to doc_template_url(DocTemplate.last)
  end

  test "should show doc_template" do
    get doc_template_url(@doc_template)
    assert_response :success
  end

  test "should get edit" do
    get edit_doc_template_url(@doc_template)
    assert_response :success
  end

  test "should update doc_template" do
    patch doc_template_url(@doc_template), params: { doc_template: { description: @doc_template.description, title: @doc_template.title } }
    assert_redirected_to doc_template_url(@doc_template)
  end

  test "should destroy doc_template" do
    assert_difference('DocTemplate.count', -1) do
      delete doc_template_url(@doc_template)
    end

    assert_redirected_to doc_templates_url
  end
end
