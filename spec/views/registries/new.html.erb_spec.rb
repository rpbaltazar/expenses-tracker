require 'spec_helper'

describe "registries/new" do
  before(:each) do
    assign(:registry, stub_model(Registry,
      :total_value => 1.5,
      :reg_type => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new registry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", registries_path, "post" do
      assert_select "input#registry_total_value[name=?]", "registry[total_value]"
      assert_select "input#registry_reg_type[name=?]", "registry[reg_type]"
      assert_select "input#registry_description[name=?]", "registry[description]"
    end
  end
end
