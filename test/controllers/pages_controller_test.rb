require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get publisher" do
    get :publisher
    assert_response :success
  end

  test "should get writer" do
    get :writer
    assert_response :success
  end

end
