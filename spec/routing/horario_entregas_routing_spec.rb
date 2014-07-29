require "spec_helper"

describe HorarioEntregasController do
  describe "routing" do

    it "routes to #index" do
      get("/horario_entregas").should route_to("horario_entregas#index")
    end

    it "routes to #new" do
      get("/horario_entregas/new").should route_to("horario_entregas#new")
    end

    it "routes to #show" do
      get("/horario_entregas/1").should route_to("horario_entregas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/horario_entregas/1/edit").should route_to("horario_entregas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/horario_entregas").should route_to("horario_entregas#create")
    end

    it "routes to #update" do
      put("/horario_entregas/1").should route_to("horario_entregas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/horario_entregas/1").should route_to("horario_entregas#destroy", :id => "1")
    end

  end
end
