require 'rails_helper'

RSpec.describe "spree/vendors/new", type: :view do
  before(:each) do
    assign(:spree_vendor, Spree::Vendor.new(
      :name => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :phone => "MyString",
      :fax => "MyString",
      :active => false,
      :leadtimedays => 1
    ))
  end

  it "renders new spree_vendor form" do
    render

    assert_select "form[action=?][method=?]", spree_vendors_path, "post" do

      assert_select "input#spree_vendor_name[name=?]", "spree_vendor[name]"

      assert_select "input#spree_vendor_address1[name=?]", "spree_vendor[address1]"

      assert_select "input#spree_vendor_address2[name=?]", "spree_vendor[address2]"

      assert_select "input#spree_vendor_city[name=?]", "spree_vendor[city]"

      assert_select "input#spree_vendor_state[name=?]", "spree_vendor[state]"

      assert_select "input#spree_vendor_country[name=?]", "spree_vendor[country]"

      assert_select "input#spree_vendor_phone[name=?]", "spree_vendor[phone]"

      assert_select "input#spree_vendor_fax[name=?]", "spree_vendor[fax]"

      assert_select "input#spree_vendor_active[name=?]", "spree_vendor[active]"

      assert_select "input#spree_vendor_leadtimedays[name=?]", "spree_vendor[leadtimedays]"
    end
  end
end
