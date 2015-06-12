require "rails_helper"

RSpec.describe VehicleConsumptionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/vehicle_consumptions").to route_to("vehicle_consumptions#index")
    end

    it "routes to #new" do
      expect(:get => "/vehicle_consumptions/new").to route_to("vehicle_consumptions#new")
    end

    it "routes to #show" do
      expect(:get => "/vehicle_consumptions/1").to route_to("vehicle_consumptions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/vehicle_consumptions/1/edit").to route_to("vehicle_consumptions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/vehicle_consumptions").to route_to("vehicle_consumptions#create")
    end

    it "routes to #update" do
      expect(:put => "/vehicle_consumptions/1").to route_to("vehicle_consumptions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vehicle_consumptions/1").to route_to("vehicle_consumptions#destroy", :id => "1")
    end

  end
end
