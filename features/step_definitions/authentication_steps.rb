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
  @client = Client.create(name: "Example User", email: "user@example.com", district: "Ulia",
                      password: "123456", password_confirmation: "123456")
end

When /^the client submits valid signin information$/ do
  fill_in "Email",    with: @client.email
  fill_in "Password", with: @client.password
  click_button "Sign in"
end

Then /^they should see their profile page$/ do
  page.should have_content(@client.name)
end

Then /^they should see a signout link$/ do
  page.should have_link('Sign out', href: signout_path)
  end
Given /^a client visits the signup page$/ do
   visit signup_path
   end
When /^they submit invalid signup information$/ do
  click_button "Create an account"
  end
Then /^they should see an error messages$/ do
  page.should have_selector('div.alert.alert-error')
  end

      Given /^the client filled in the information$/ do
        @client = Client.create(name: "Test User", email: "test@example.com", district: "Uliaa",
                      password: "1234567", password_confirmation: "1234567")
    end
    When /^the client submits valid signup information$/ do
          fill_in "Name",    with: @client.name
          fill_in "Email",    with: @client.email
          fill_in "Choose_your_District",    with: @client.district
          fill_in "Password", with: @client.password
          fill_in "password_confirmation", with: @client.password_confirmation
  click_button "Create an account"
    end
    Then /^client should see his profile page$/ do
      page.should have_content(@client.name)
    end
      Then /^they should see a settings link$/ do
   page.should have_link('Settings', href: edit_client_path(current_client))     
end