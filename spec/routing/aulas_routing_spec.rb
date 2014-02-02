require "spec_helper"

describe AulasController do
  describe "routing" do

    it "routes to #index" do
      get("/aulas").should route_to("aulas#index")
    end

    it "routes to #new" do
      get("/aulas/new").should route_to("aulas#new")
    end

    it "routes to #show" do
      get("/aulas/1").should route_to("aulas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/aulas/1/edit").should route_to("aulas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/aulas").should route_to("aulas#create")
    end

    it "routes to #update" do
      put("/aulas/1").should route_to("aulas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/aulas/1").should route_to("aulas#destroy", :id => "1")
    end

  end
end
