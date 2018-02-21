Given("user is on the landing page") do
  visit root_path
end

Given("we are on the Login page") do
    visit new_user_session_path
end

Given("user is on the Sign up page") do
  visit new_user_registration_path
end

Given("the following user exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end

When("he clicks {string}") do |button|
  click_link_or_button button
end

When("he fills in {string} with {string}") do |field, input|
  fill_in field, with: input
end

When("he sees message {string}") do |message|
  expect(page).to have_content(message)
end

When("show me the page") do
  save_and_open_page
end
