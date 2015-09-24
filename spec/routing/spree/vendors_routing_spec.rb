require "rails_helper"

RSpec.describe Spree::VendorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/spree/vendors").to route_to("spree/vendors#index")
    end

    it "routes to #new" do
      expect(:get => "/spree/vendors/new").to route_to("spree/vendors#new")
    end

    it "routes to #show" do
      expect(:get => "/spree/vendors/1").to route_to("spree/vendors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/spree/vendors/1/edit").to route_to("spree/vendors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/spree/vendors").to route_to("spree/vendors#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/spree/vendors/1").to route_to("spree/vendors#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/spree/vendors/1").to route_to("spree/vendors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/spree/vendors/1").to route_to("spree/vendors#destroy", :id => "1")
    end

  end
end
