require 'spec_helper'

describe "horario_entregas/new" do
  before(:each) do
    assign(:horario_entrega, stub_model(HorarioEntrega,
      :horario => "MyString"
    ).as_new_record)
  end

  it "renders new horario_entrega form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", horario_entregas_path, "post" do
      assert_select "input#horario_entrega_horario[name=?]", "horario_entrega[horario]"
    end
  end
end
