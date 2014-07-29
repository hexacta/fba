require 'spec_helper'

describe "horario_entregas/edit" do
  before(:each) do
    @horario_entrega = assign(:horario_entrega, stub_model(HorarioEntrega,
      :horario => "MyString"
    ))
  end

  it "renders the edit horario_entrega form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", horario_entrega_path(@horario_entrega), "post" do
      assert_select "input#horario_entrega_horario[name=?]", "horario_entrega[horario]"
    end
  end
end
