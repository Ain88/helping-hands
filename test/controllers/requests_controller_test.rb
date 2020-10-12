require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get requests_url
    assert_response :success
  end

  test "should create request" do
      post requests_url, params: { request:
        {
          typev: 1,
          title: "test title",
          location: "test title",
          description: "test description",
          owner_id: 2,
          address: "test address",
          counter: 2,
          is_active: 0,
          rep_date: "2020-09-07T06:56:01.000Z",
          check_mark: 0,
          fulfilled: 0
        }
      }
    assert_response :success
  end

  test "should show request" do
    get request_url(@request)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_url(@request)
    assert_response :success
  end

  test "should update request" do
    patch request_url(@request), params: { request: { typev: 2 } }
    assert_response :success
  end

  test "should destroy request" do
    delete request_url(@request)
    assert_response :success
  end

end
