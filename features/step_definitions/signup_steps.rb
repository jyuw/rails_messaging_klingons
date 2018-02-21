Given("We are on the {string} page") do |string|
  visit new_user_registration_path
end

When("He clicks {string}") do |button|
  click_on button
end

Then("He should be on the {string} page") do |string|
  page.current_path == string
end

When("He fills in {string} with {string}") do |field, input|
  # page.find(field).set(input)
  fill_in(field, :with => input)
end

When("He sees message {string}") do |message|
  expect(page).to have_content(message)
end

When("Show me the page") do
  save_and_open_page
end

Given("User is on the landing page") do
  visit root_path
end

When("He should be on {string} page") do |string|
  visit new_user_registration_path
end

Given("The following user exists") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.hashes.each do |user|
    User.create(user)
  end
end
