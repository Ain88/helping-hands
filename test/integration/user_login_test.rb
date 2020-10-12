require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest

  test "login test" do
    post '/users',
    params: { email: 'test', password: 'test' }
    assert_response :success

  end

end
