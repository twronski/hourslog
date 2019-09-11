require 'test_helper'

class EvaluationControllerTest < ActionDispatch::IntegrationTest
  test "should get rate" do
    get evaluation_rate_url
    assert_response :success
  end

end
