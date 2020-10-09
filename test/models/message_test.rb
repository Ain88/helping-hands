require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  def setup
    @user = User.new(:email => "testemail@hotmail.com",
            :f_name => "testname",
            :l_name => "testlname",
            :password =>"password",
            :photo => "dfdfdfdf")
    @user.save
  @request = Request.new(
    :typev => "1",
    :location => "49.2870593,-123.1214756",
    :description => "Your role is to assist with set up of the Relay Station equipment and supplies, assisting and directing runners",
    :title => "Marathon event associate",
    :owner_id => @user.id,
    :address => "535 Thurlow St, Vancouver, BC",
    :counter => 2,
    :cur_counter => 0,
    :is_active => 0,
    :rep_date => "2020-09-07T06:56:01.000Z",
    :check_mark => 0,
    :fulfilled => 0
    )
    @request.save
    @message = Message.new(
      :requests_id => @request.id,
      :sender_id => 2,
      :receiver_id => 3,
      :check_mark => 0,
      :body => "Thank you so much"
      )
 end
   test "Message should work" do
     assert @message.valid?
   end
end
