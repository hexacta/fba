require 'spec_helper'

describe "HorarioEntregas" do
  describe "GET /horario_entregas" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get horario_entregas_path
      response.status.should be(200)
    end
  end
end
