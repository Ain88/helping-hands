require 'test_helper'

class UserssControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should create user" do
      post users_url, params: { user:
        {
          f_name: "test",
          l_name: "test",
          email: "testemail@hotmail.com",
          password_digest: "test"
        }
      }
    assert_response :success
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

end
