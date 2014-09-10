require 'spec_helper'

describe "registries/show" do
  before(:each) do
    @registry = assign(:registry, stub_model(Registry,
      :total_value => 1.5,
      :reg_type => "Reg Type",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    rendered.should match(/Reg Type/)
    rendered.should match(/Description/)
  end
end
