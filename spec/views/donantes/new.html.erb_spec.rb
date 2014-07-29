require 'spec_helper'

describe "donantes/new" do
  before(:each) do
    assign(:donante, stub_model(Donante,
      :codigo => "MyString",
      :donante => "MyString"
    ).as_new_record)
  end

  it "renders new donante form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", donantes_path, "post" do
      assert_select "input#donante_codigo[name=?]", "donante[codigo]"
      assert_select "input#donante_donante[name=?]", "donante[donante]"
    end
  end
end
