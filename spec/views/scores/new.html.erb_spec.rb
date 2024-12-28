require 'rails_helper'

RSpec.describe "scores/new", type: :view do
  before(:each) do
    assign(:score, Score.new(
      user_id: nil,
      point: 1
    ))
  end

  it "renders new score form" do
    render

    assert_select "form[action=?][method=?]", scores_path, "post" do
      assert_select "input[name=?]", "score[user_id_id]"

      assert_select "input[name=?]", "score[point]"
    end
  end
end
