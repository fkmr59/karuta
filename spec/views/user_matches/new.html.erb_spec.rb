require 'rails_helper'

RSpec.describe "user_matches/new", type: :view do
  before(:each) do
    assign(:user_match, UserMatch.new(
      user: nil,
      match: nil
    ))
  end

  it "renders new user_match form" do
    render

    assert_select "form[action=?][method=?]", user_matches_path, "post" do

      assert_select "input[name=?]", "user_match[user_id]"

      assert_select "input[name=?]", "user_match[match_id]"
    end
  end
end
