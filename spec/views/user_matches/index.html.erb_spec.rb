require 'rails_helper'

RSpec.describe "user_matches/index", type: :view do
  before(:each) do
    assign(:user_matches, [
      UserMatch.create!(
        user: nil,
        match: nil
      ),
      UserMatch.create!(
        user: nil,
        match: nil
      )
    ])
  end

  it "renders a list of user_matches" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
