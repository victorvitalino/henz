require "rails_helper"

RSpec.describe CurriculumsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/curriculums").to route_to("curriculums#index")
    end

    it "routes to #new" do
      expect(:get => "/curriculums/new").to route_to("curriculums#new")
    end

    it "routes to #show" do
      expect(:get => "/curriculums/1").to route_to("curriculums#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/curriculums/1/edit").to route_to("curriculums#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/curriculums").to route_to("curriculums#create")
    end

    it "routes to #update" do
      expect(:put => "/curriculums/1").to route_to("curriculums#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/curriculums/1").to route_to("curriculums#destroy", :id => "1")
    end

  end
end
