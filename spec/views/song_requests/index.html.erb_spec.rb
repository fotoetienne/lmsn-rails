require 'spec_helper'

describe "song_requests/index.html.erb" do
  before(:each) do
    assign(:song_requests, [
      stub_model(SongRequest,
        :dj => nil,
        :song => nil,
        :singer => nil,
        :singer_name => "Singer Name",
        :key => "Key",
        :notes => "Notes"
      ),
      stub_model(SongRequest,
        :dj => nil,
        :song => nil,
        :singer => nil,
        :singer_name => "Singer Name",
        :key => "Key",
        :notes => "Notes"
      )
    ])
  end

  it "renders a list of song_requests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Singer Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Key".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
  end
end
