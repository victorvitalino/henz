require "rails_helper"

RSpec.describe FootholdsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/footholds").to route_to("footholds#index")
    end

    it "routes to #new" do
      expect(:get => "/footholds/new").to route_to("footholds#new")
    end

    it "routes to #show" do
      expect(:get => "/footholds/1").to route_to("footholds#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/footholds/1/edit").to route_to("footholds#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/footholds").to route_to("footholds#create")
    end

    it "routes to #update" do
      expect(:put => "/footholds/1").to route_to("footholds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/footholds/1").to route_to("footholds#destroy", :id => "1")
    end

  end
end
