require 'spec_helper'

describe "horario_entregas/index" do
  before(:each) do
    assign(:horario_entregas, [
      stub_model(HorarioEntrega,
        :horario => "Horario"
      ),
      stub_model(HorarioEntrega,
        :horario => "Horario"
      )
    ])
  end

  it "renders a list of horario_entregas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Horario".to_s, :count => 2
  end
end
