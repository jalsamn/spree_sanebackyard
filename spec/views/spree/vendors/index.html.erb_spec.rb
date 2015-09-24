require 'rails_helper'

RSpec.describe "spree/vendors/index", type: :view do
  before(:each) do
    assign(:spree_vendors, [
      Spree::Vendor.create!(
        :name => "Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :country => "Country",
        :phone => "Phone",
        :fax => "Fax",
        :active => false,
        :leadtimedays => 1
      ),
      Spree::Vendor.create!(
        :name => "Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :country => "Country",
        :phone => "Phone",
        :fax => "Fax",
        :active => false,
        :leadtimedays => 1
      )
    ])
  end

  it "renders a list of spree/vendors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
