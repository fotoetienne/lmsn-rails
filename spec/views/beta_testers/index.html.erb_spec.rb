require 'spec_helper'

describe "beta_testers/index.html.erb" do
  before(:each) do
    assign(:beta_testers, [
      stub_model(BetaTester,
        :name => "Name",
        :email => "Email"
      ),
      stub_model(BetaTester,
        :name => "Name",
        :email => "Email"
      )
    ])
  end

  it "renders a list of beta_testers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
