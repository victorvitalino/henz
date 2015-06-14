require "rails_helper"

RSpec.describe ProviderTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/provider_types").to route_to("provider_types#index")
    end

    it "routes to #new" do
      expect(:get => "/provider_types/new").to route_to("provider_types#new")
    end

    it "routes to #show" do
      expect(:get => "/provider_types/1").to route_to("provider_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/provider_types/1/edit").to route_to("provider_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/provider_types").to route_to("provider_types#create")
    end

    it "routes to #update" do
      expect(:put => "/provider_types/1").to route_to("provider_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/provider_types/1").to route_to("provider_types#destroy", :id => "1")
    end

  end
end
