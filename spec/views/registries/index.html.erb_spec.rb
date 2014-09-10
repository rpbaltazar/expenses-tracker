require 'spec_helper'

describe "registries/index" do
  before(:each) do
    assign(:registries, [
      stub_model(Registry,
        :total_value => 1.5,
        :reg_type => "Reg Type",
        :description => "Description"
      ),
      stub_model(Registry,
        :total_value => 1.5,
        :reg_type => "Reg Type",
        :description => "Description"
      )
    ])
  end

  it "renders a list of registries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Reg Type".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
