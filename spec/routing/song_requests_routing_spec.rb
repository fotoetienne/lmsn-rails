require "spec_helper"

describe SongRequestsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/song_requests" }.should route_to(:controller => "song_requests", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/song_requests/new" }.should route_to(:controller => "song_requests", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/song_requests/1" }.should route_to(:controller => "song_requests", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/song_requests/1/edit" }.should route_to(:controller => "song_requests", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/song_requests" }.should route_to(:controller => "song_requests", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/song_requests/1" }.should route_to(:controller => "song_requests", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/song_requests/1" }.should route_to(:controller => "song_requests", :action => "destroy", :id => "1")
    end

  end
end
