require 'rails_helper'

RSpec.describe "scores/index", type: :view do
  before(:each) do
    assign(:scores, [
      Score.create!(
        user_id: nil,
        point: 2
      ),
      Score.create!(
        user_id: nil,
        point: 2
      )
    ])
  end

  it "renders a list of scores" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
