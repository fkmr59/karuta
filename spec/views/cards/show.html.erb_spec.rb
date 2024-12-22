require 'rails_helper'

RSpec.describe "cards/show", type: :view do
  before(:each) do
    assign(:card, Card.create!(
      card_text: "MyText",
      card_flag: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
