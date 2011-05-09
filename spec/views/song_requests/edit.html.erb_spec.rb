require 'spec_helper'

describe "song_requests/edit.html.erb" do
  before(:each) do
    @song_request = assign(:song_request, stub_model(SongRequest,
      :dj => nil,
      :song => nil,
      :singer => nil,
      :singer_name => "MyString",
      :key => "MyString",
      :notes => "MyString"
    ))
  end

  it "renders the edit song_request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => song_requests_path(@song_request), :method => "post" do
      assert_select "input#song_request_dj", :name => "song_request[dj]"
      assert_select "input#song_request_song", :name => "song_request[song]"
      assert_select "input#song_request_singer", :name => "song_request[singer]"
      assert_select "input#song_request_singer_name", :name => "song_request[singer_name]"
      assert_select "input#song_request_key", :name => "song_request[key]"
      assert_select "input#song_request_notes", :name => "song_request[notes]"
    end
  end
end
