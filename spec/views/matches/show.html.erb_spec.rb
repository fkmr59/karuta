require 'rails_helper'

RSpec.describe "matches/show", type: :view do
  before(:each) do
    assign(:match, Match.create!(
      match_number: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
