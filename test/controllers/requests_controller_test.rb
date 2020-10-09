require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get requests_url
    assert_response :success
  end

  test "should get new" do
    get requests_url
    assert_response :success
  end

  test "should show request" do
    get requests_url(@request)
    assert_response :success
  end
end
