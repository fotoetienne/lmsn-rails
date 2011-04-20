require 'spec_helper'

describe "beta_testers/show.html.erb" do
  before(:each) do
    @beta_tester = assign(:beta_tester, stub_model(BetaTester,
      :name => "Name",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
  end
end
