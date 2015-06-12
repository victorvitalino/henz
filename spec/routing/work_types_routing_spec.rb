require "rails_helper"

RSpec.describe WorkTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/work_types").to route_to("work_types#index")
    end

    it "routes to #new" do
      expect(:get => "/work_types/new").to route_to("work_types#new")
    end

    it "routes to #show" do
      expect(:get => "/work_types/1").to route_to("work_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/work_types/1/edit").to route_to("work_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/work_types").to route_to("work_types#create")
    end

    it "routes to #update" do
      expect(:put => "/work_types/1").to route_to("work_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/work_types/1").to route_to("work_types#destroy", :id => "1")
    end

  end
end
