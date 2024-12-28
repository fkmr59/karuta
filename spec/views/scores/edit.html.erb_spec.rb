require 'rails_helper'

RSpec.describe "scores/edit", type: :view do
  let(:score) {
    Score.create!(
      user_id: nil,
      point: 1
    )
  }

  before(:each) do
    assign(:score, score)
  end

  it "renders the edit score form" do
    render

    assert_select "form[action=?][method=?]", score_path(score), "post" do
      assert_select "input[name=?]", "score[user_id_id]"

      assert_select "input[name=?]", "score[point]"
    end
  end
end
