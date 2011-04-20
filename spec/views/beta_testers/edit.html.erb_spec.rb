require 'spec_helper'

describe "beta_testers/edit.html.erb" do
  before(:each) do
    @beta_tester = assign(:beta_tester, stub_model(BetaTester,
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit beta_tester form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => beta_testers_path(@beta_tester), :method => "post" do
      assert_select "input#beta_tester_name", :name => "beta_tester[name]"
      assert_select "input#beta_tester_email", :name => "beta_tester[email]"
    end
  end
end
