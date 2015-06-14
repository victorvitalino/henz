require "rails_helper"

RSpec.describe VehicleServicesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/vehicle_services").to route_to("vehicle_services#index")
    end

    it "routes to #new" do
      expect(:get => "/vehicle_services/new").to route_to("vehicle_services#new")
    end

    it "routes to #show" do
      expect(:get => "/vehicle_services/1").to route_to("vehicle_services#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/vehicle_services/1/edit").to route_to("vehicle_services#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/vehicle_services").to route_to("vehicle_services#create")
    end

    it "routes to #update" do
      expect(:put => "/vehicle_services/1").to route_to("vehicle_services#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vehicle_services/1").to route_to("vehicle_services#destroy", :id => "1")
    end

  end
end
