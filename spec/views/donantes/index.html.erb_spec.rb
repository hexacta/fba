require 'spec_helper'

describe "donantes/index" do
  before(:each) do
    assign(:donantes, [
      stub_model(Donante,
        :codigo => "Codigo",
        :donante => "Donante"
      ),
      stub_model(Donante,
        :codigo => "Codigo",
        :donante => "Donante"
      )
    ])
  end

  it "renders a list of donantes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Codigo".to_s, :count => 2
    assert_select "tr>td", :text => "Donante".to_s, :count => 2
  end
end
