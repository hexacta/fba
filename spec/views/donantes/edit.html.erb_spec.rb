require 'spec_helper'

describe "donantes/edit" do
  before(:each) do
    @donante = assign(:donante, stub_model(Donante,
      :codigo => "MyString",
      :donante => "MyString"
    ))
  end

  it "renders the edit donante form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", donante_path(@donante), "post" do
      assert_select "input#donante_codigo[name=?]", "donante[codigo]"
      assert_select "input#donante_donante[name=?]", "donante[donante]"
    end
  end
end
