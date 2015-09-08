require 'rails_helper'

RSpec.describe "spree/cases/show", type: :view do
  before(:each) do
    @spree_case = assign(:spree_case, Spree::Case.create!(
      :variant => nil,
      :unitpercase => "9.99",
      :vendor => nil,
      :cost => "9.99",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Location/)
  end
end
