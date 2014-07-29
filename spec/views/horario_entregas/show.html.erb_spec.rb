require 'spec_helper'

describe "horario_entregas/show" do
  before(:each) do
    @horario_entrega = assign(:horario_entrega, stub_model(HorarioEntrega,
      :horario => "Horario"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Horario/)
  end
end
