require 'test_helper'

class GradeReportsControllerTest < ActionController::TestCase
  test "should get generate_report" do
    get :generate_report
    assert_response :success
  end

end
