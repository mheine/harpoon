require "rails_helper"

feature "Election management" do
  scenario "Admin creates an election" do
    visit "/elections"
    click_link "New Election"

    @election_name = Time.now.to_s
    fill_in "Name", with: @election_name
    fill_in "Description", with: "description"

    click_button "Create Election"
    expect(page).to have_content(@election_name)
  end
end
