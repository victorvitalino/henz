require "rails_helper"

RSpec.describe DeskSuppliesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/desk_supplies").to route_to("desk_supplies#index")
    end

    it "routes to #new" do
      expect(:get => "/desk_supplies/new").to route_to("desk_supplies#new")
    end

    it "routes to #show" do
      expect(:get => "/desk_supplies/1").to route_to("desk_supplies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/desk_supplies/1/edit").to route_to("desk_supplies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/desk_supplies").to route_to("desk_supplies#create")
    end

    it "routes to #update" do
      expect(:put => "/desk_supplies/1").to route_to("desk_supplies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/desk_supplies/1").to route_to("desk_supplies#destroy", :id => "1")
    end

  end
end
