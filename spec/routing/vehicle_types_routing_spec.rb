require "rails_helper"

RSpec.describe VehicleTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/vehicle_types").to route_to("vehicle_types#index")
    end

    it "routes to #new" do
      expect(:get => "/vehicle_types/new").to route_to("vehicle_types#new")
    end

    it "routes to #show" do
      expect(:get => "/vehicle_types/1").to route_to("vehicle_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/vehicle_types/1/edit").to route_to("vehicle_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/vehicle_types").to route_to("vehicle_types#create")
    end

    it "routes to #update" do
      expect(:put => "/vehicle_types/1").to route_to("vehicle_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vehicle_types/1").to route_to("vehicle_types#destroy", :id => "1")
    end

  end
end
