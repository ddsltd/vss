require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get About" do
    get :About
    assert_response :success
  end

  test "should get Help" do
    get :Help
    assert_response :success
  end

  test "should get ContactUs" do
    get :ContactUs
    assert_response :success
  end

  test "should get copyright" do
    get :copyright
    assert_response :success
  end

end
