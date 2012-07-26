require 'test_helper'

class TimerControllerTest < ActionController::TestCase
  test "should get pretty_print" do
    get :pretty_print
    assert_response :success
  end

end
