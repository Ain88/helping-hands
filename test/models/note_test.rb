require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  def setup
    @note = Note.new(
      :text => "test"
    )
  end

  test "Note test should work" do
    assert @note.valid?
  end
end
