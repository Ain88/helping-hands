require 'test_helper'

class MessageControllerTest < ActionDispatch::IntegrationTest
  setup do
    @message = messages(:one)
  end

  test "should get index" do
    get messages_url
    assert_response :success
  end

  # test "should create message" do
  #     post messages_url, params: { message:
  #       {
  #         body: "thank you",
  #         sender_id: 3,
  #         requests_id: 2,
  #         receiver_id: 1,
  #         check_mark: 0
  #       }
  #     }
  #   assert_response :success
  # end

  test "should show message" do
    get message_url(@message)
    assert_response :success
  end

  test "should get edit" do
    get edit_message_url(@message)
    assert_response :success
  end

  test "should destroy message" do
    delete message_url(@message)
    assert_response :success
  end
end
