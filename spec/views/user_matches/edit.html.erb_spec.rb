require 'rails_helper'

RSpec.describe "user_matches/edit", type: :view do
  let(:user_match) {
    UserMatch.create!(
      user: nil,
      match: nil
    )
  }

  before(:each) do
    assign(:user_match, user_match)
  end

  it "renders the edit user_match form" do
    render

    assert_select "form[action=?][method=?]", user_match_path(user_match), "post" do
      assert_select "input[name=?]", "user_match[user_id]"

      assert_select "input[name=?]", "user_match[match_id]"
    end
  end
end
