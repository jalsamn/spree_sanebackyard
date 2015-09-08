require 'rails_helper'

RSpec.describe "spree/cases/index", type: :view do
  before(:each) do
    assign(:spree_cases, [
      Spree::Case.create!(
        :variant => nil,
        :unitpercase => "9.99",
        :vendor => nil,
        :cost => "9.99",
        :location => "Location"
      ),
      Spree::Case.create!(
        :variant => nil,
        :unitpercase => "9.99",
        :vendor => nil,
        :cost => "9.99",
        :location => "Location"
      )
    ])
  end

  it "renders a list of spree/cases" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
