Given(/^I am on the "elections" page$/) do
  visit "/elections"
end

Given(/^I follow "New Election"$/) do
  click_link "New Election"
end

Given(/^fill out the form$/) do
  @election_name = Time.now.to_s
  fill_in "Name", with: @election_name
  fill_in "Description", with: "description"
end

When(/^I press "Create Election"$/) do
  click_button "Create Election"
end

Then(/^an election should have been created$/) do
  expect(page).to have_content(@election_name)
end