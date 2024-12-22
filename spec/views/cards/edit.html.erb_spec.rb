require 'rails_helper'

RSpec.describe "cards/edit", type: :view do
  let(:card) {
    Card.create!(
      card_text: "MyText",
      card_flag: 1
    )
  }

  before(:each) do
    assign(:card, card)
  end

  it "renders the edit card form" do
    render

    assert_select "form[action=?][method=?]", card_path(card), "post" do
      assert_select "textarea[name=?]", "card[card_text]"

      assert_select "input[name=?]", "card[card_flag]"
    end
  end
end
