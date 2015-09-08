require "rails_helper"

RSpec.describe Spree::CasesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/spree/cases").to route_to("spree/cases#index")
    end

    it "routes to #new" do
      expect(:get => "/spree/cases/new").to route_to("spree/cases#new")
    end

    it "routes to #show" do
      expect(:get => "/spree/cases/1").to route_to("spree/cases#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/spree/cases/1/edit").to route_to("spree/cases#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/spree/cases").to route_to("spree/cases#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/spree/cases/1").to route_to("spree/cases#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/spree/cases/1").to route_to("spree/cases#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/spree/cases/1").to route_to("spree/cases#destroy", :id => "1")
    end

  end
end
