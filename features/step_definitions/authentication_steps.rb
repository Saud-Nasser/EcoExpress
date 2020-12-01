Given /^a client visits the signin page$/ do
  visit signin_path
end
When /^they submit invalid signin information$/ do
  click_button "Sign in"
end

Then /^they should see an error message$/ do
  page.should have_selector('div.alert.alert-error')
end
Given /^the client has an account$/ do
  @client = Client.create(name: "Example User", email: "user@example.com",
                      password: "123456", password_confirmation: "123456")
end

When /^the client submits valid signin information$/ do
  fill_in "Email",    with: @client.email
  fill_in "Password", with: @client.password
  click_button "Sign in"
end

Then /^they should see their profile page$/ do
  page.should have_selector('h1', text: @client.name)
end

Then /^they should see a signout link$/ do
  page.should have_link('Sign out', href: signout_path)
end