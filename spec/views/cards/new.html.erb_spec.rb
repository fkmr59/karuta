require 'rails_helper'

RSpec.describe "cards/new", type: :view do
  before(:each) do
    assign(:card, Card.new(
      card_text: "MyText",
      card_flag: 1
    ))
  end

  it "renders new card form" do
    render

    assert_select "form[action=?][method=?]", cards_path, "post" do

      assert_select "textarea[name=?]", "card[card_text]"

      assert_select "input[name=?]", "card[card_flag]"
    end
  end
end
