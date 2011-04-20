require "spec_helper"

describe BetaTestersController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/beta_testers" }.should route_to(:controller => "beta_testers", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/beta_testers/new" }.should route_to(:controller => "beta_testers", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/beta_testers/1" }.should route_to(:controller => "beta_testers", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/beta_testers/1/edit" }.should route_to(:controller => "beta_testers", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/beta_testers" }.should route_to(:controller => "beta_testers", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/beta_testers/1" }.should route_to(:controller => "beta_testers", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/beta_testers/1" }.should route_to(:controller => "beta_testers", :action => "destroy", :id => "1")
    end

  end
end
