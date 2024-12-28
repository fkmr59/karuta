require 'rails_helper'

RSpec.describe "scores/show", type: :view do
  before(:each) do
    assign(:score, Score.create!(
      user_id: nil,
      point: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
