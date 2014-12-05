require 'rails_helper'

RSpec.describe "elections/show", :type => :view do
  before(:each) do
    @election = assign(:election, Election.create!(
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
