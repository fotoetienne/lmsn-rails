require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe BetaTestersController do

  def mock_beta_tester(stubs={})
    @mock_beta_tester ||= mock_model(BetaTester, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all beta_testers as @beta_testers" do
      BetaTester.stub(:all) { [mock_beta_tester] }
      get :index
      assigns(:beta_testers).should eq([mock_beta_tester])
    end
  end

  describe "GET show" do
    it "assigns the requested beta_tester as @beta_tester" do
      BetaTester.stub(:find).with("37") { mock_beta_tester }
      get :show, :id => "37"
      assigns(:beta_tester).should be(mock_beta_tester)
    end
  end

  describe "GET new" do
    it "assigns a new beta_tester as @beta_tester" do
      BetaTester.stub(:new) { mock_beta_tester }
      get :new
      assigns(:beta_tester).should be(mock_beta_tester)
    end
  end

  describe "GET edit" do
    it "assigns the requested beta_tester as @beta_tester" do
      BetaTester.stub(:find).with("37") { mock_beta_tester }
      get :edit, :id => "37"
      assigns(:beta_tester).should be(mock_beta_tester)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created beta_tester as @beta_tester" do
        BetaTester.stub(:new).with({'these' => 'params'}) { mock_beta_tester(:save => true) }
        post :create, :beta_tester => {'these' => 'params'}
        assigns(:beta_tester).should be(mock_beta_tester)
      end

      it "redirects to the created beta_tester" do
        BetaTester.stub(:new) { mock_beta_tester(:save => true) }
        post :create, :beta_tester => {}
        response.should redirect_to(beta_tester_url(mock_beta_tester))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved beta_tester as @beta_tester" do
        BetaTester.stub(:new).with({'these' => 'params'}) { mock_beta_tester(:save => false) }
        post :create, :beta_tester => {'these' => 'params'}
        assigns(:beta_tester).should be(mock_beta_tester)
      end

      it "re-renders the 'new' template" do
        BetaTester.stub(:new) { mock_beta_tester(:save => false) }
        post :create, :beta_tester => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested beta_tester" do
        BetaTester.stub(:find).with("37") { mock_beta_tester }
        mock_beta_tester.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :beta_tester => {'these' => 'params'}
      end

      it "assigns the requested beta_tester as @beta_tester" do
        BetaTester.stub(:find) { mock_beta_tester(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:beta_tester).should be(mock_beta_tester)
      end

      it "redirects to the beta_tester" do
        BetaTester.stub(:find) { mock_beta_tester(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(beta_tester_url(mock_beta_tester))
      end
    end

    describe "with invalid params" do
      it "assigns the beta_tester as @beta_tester" do
        BetaTester.stub(:find) { mock_beta_tester(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:beta_tester).should be(mock_beta_tester)
      end

      it "re-renders the 'edit' template" do
        BetaTester.stub(:find) { mock_beta_tester(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested beta_tester" do
      BetaTester.stub(:find).with("37") { mock_beta_tester }
      mock_beta_tester.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the beta_testers list" do
      BetaTester.stub(:find) { mock_beta_tester }
      delete :destroy, :id => "1"
      response.should redirect_to(beta_testers_url)
    end
  end

end
