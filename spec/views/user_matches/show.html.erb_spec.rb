require 'rails_helper'

RSpec.describe "user_matches/show", type: :view do
  before(:each) do
    assign(:user_match, UserMatch.create!(
      user: nil,
      match: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
