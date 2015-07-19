require 'test_helper'

class UserscontrollerControllerTest < ActionController::TestCase
  test "should get add_points" do
    get :add_points
    assert_response :success
  end

  test "should get remove_points" do
    get :remove_points
    assert_response :success
  end

end
