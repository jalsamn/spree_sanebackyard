require 'rails_helper'

RSpec.describe "spree/vendors/show", type: :view do
  before(:each) do
    @spree_vendor = assign(:spree_vendor, Spree::Vendor.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address1/)
    expect(rendered).to match(/Address2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Fax/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
  end
end
