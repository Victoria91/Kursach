require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  test "should get sale" do
    get :sale
    assert_response :success
  end

  test "should get histogram" do
    get :histogram
    assert_response :success
  end

end
