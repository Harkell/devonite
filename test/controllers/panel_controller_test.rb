require 'test_helper'

class PanelControllerTest < ActionController::TestCase
  test "should get pageedit" do
    get :pageedit
    assert_response :success
  end

  test "should get requestchange" do
    get :requestchange
    assert_response :success
  end

  test "should get statistics" do
    get :statistics
    assert_response :success
  end

  test "should get payment" do
    get :payment
    assert_response :success
  end

end
