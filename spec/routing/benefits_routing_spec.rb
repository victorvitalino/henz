require "rails_helper"

RSpec.describe BenefitsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/benefits").to route_to("benefits#index")
    end

    it "routes to #new" do
      expect(:get => "/benefits/new").to route_to("benefits#new")
    end

    it "routes to #show" do
      expect(:get => "/benefits/1").to route_to("benefits#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/benefits/1/edit").to route_to("benefits#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/benefits").to route_to("benefits#create")
    end

    it "routes to #update" do
      expect(:put => "/benefits/1").to route_to("benefits#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/benefits/1").to route_to("benefits#destroy", :id => "1")
    end

  end
end
