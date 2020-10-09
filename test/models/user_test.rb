require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(:email => "testemail@hotmail.com",
            :f_name => "testname",
            :l_name => "testlname",
            :password =>"password",
            :photo => "dfdfdfdf")
  end

  test "email should be unique" do
    @user.save
    user2 = User.new(:email => "testemail@hotmail.com",
            :f_name => "testname",
            :l_name => "testlname",
            :password =>"password",
            :photo => "dfdfdfdf")
    assert_not user2.valid?
  end

  test "user password should be more than 4 characters" do
    @user.password = "123"
    assert_not @user.valid?
  end

  test "user email should pass the validation" do
    @user.email = "123hotmail.com"
    assert_not @user.valid?
  end

  test "user first name should not more than 2 characters" do
    @user.f_name = "t"
    @user.l_name = "test"
    assert_not @user.valid?
  end

end
