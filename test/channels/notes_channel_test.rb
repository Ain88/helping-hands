require "test_helper"

class NotesChannelTest < ActionCable::Channel::TestCase
  test "subscribes and stream" do
    
    assert_has_stream "abc"
  end

end
