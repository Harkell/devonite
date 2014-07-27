require 'test_helper'

class FrontControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get howitworks" do
    get :howitworks
    assert_response :success
  end

  test "should get blog" do
    get :blog
    assert_response :success
  end

  test "should get connect" do
    get :connect
    assert_response :success
  end

end
