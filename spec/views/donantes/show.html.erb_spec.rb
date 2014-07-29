require 'spec_helper'

describe "donantes/show" do
  before(:each) do
    @donante = assign(:donante, stub_model(Donante,
      :codigo => "Codigo",
      :donante => "Donante"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Codigo/)
    rendered.should match(/Donante/)
  end
end
