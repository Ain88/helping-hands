require "rails_helper"

RSpec.describe NotesChannel, :type => :channel do
  it "successfully subscribes" do
    stub_connection stream: 'abc'
    subscribe
    expect(subscription).to be_confirmed
    expect(subscription.stream).to eq 'abc'
  end

end
