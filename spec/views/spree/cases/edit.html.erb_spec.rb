require 'rails_helper'

RSpec.describe "spree/cases/edit", type: :view do
  before(:each) do
    @spree_case = assign(:spree_case, Spree::Case.create!(
      :variant => nil,
      :unitpercase => "9.99",
      :vendor => nil,
      :cost => "9.99",
      :location => "MyString"
    ))
  end

  it "renders the edit spree_case form" do
    render

    assert_select "form[action=?][method=?]", spree_case_path(@spree_case), "post" do

      assert_select "input#spree_case_variant_id[name=?]", "spree_case[variant_id]"

      assert_select "input#spree_case_unitpercase[name=?]", "spree_case[unitpercase]"

      assert_select "input#spree_case_vendor_id[name=?]", "spree_case[vendor_id]"

      assert_select "input#spree_case_cost[name=?]", "spree_case[cost]"

      assert_select "input#spree_case_location[name=?]", "spree_case[location]"
    end
  end
end
