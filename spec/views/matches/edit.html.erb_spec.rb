require 'rails_helper'

RSpec.describe "matches/edit", type: :view do
  let(:match) {
    Match.create!(
      match_number: 1
    )
  }

  before(:each) do
    assign(:match, match)
  end

  it "renders the edit match form" do
    render

    assert_select "form[action=?][method=?]", match_path(match), "post" do

      assert_select "input[name=?]", "match[match_number]"
    end
  end
end
