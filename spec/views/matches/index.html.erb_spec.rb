require 'rails_helper'

RSpec.describe "matches/index", type: :view do
  before(:each) do
    assign(:matches, [
      Match.create!(
        match_number: 2
      ),
      Match.create!(
        match_number: 2
      )
    ])
  end

  it "renders a list of matches" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
