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
        @client = Client.create(name: "Test User", email: "test1@example1.com", district: "Salam",
                      password: "1234567", password_confirmation: "1234567")
    end
    When /^the client submits valid signup information$/ do
          fill_in "client_name",    with: @client.name
          fill_in "client_email",    with: @client.email
          select('Salam',from: "client_district")
          fill_in "client_password", with: @client.password
          fill_in "client_password_confirmation", with: @client.password_confirmation
  click_button(class: "btn btn-large btn-primary")
  
    end
    Then /^client should see his name and email in the page$/ do
      visit client_path(@client)
      page.should have_content(@client.email)
      page.should have_content(@client.name)
    end
      Then /^he should see his district$/ do
   expect(page).to have_content(@client.district)     
end


Given /^a client should visit the signin page$/ do
  visit signin_path
    @client = Client.create(name: "Client1", email: "client@example.com", district: "Salam",
                      password: "123456", password_confirmation: "123456")
end
When /^the client signin his account and visit order page$/ do
    fill_in "Email",    with: @client.email
  fill_in "Password", with: @client.password
  click_button "Sign in"
end

Then /^client should make order$/ do
  visit order_path(@client)
  select('SACO',from: "order_pickup")
  click_button "Create Order"
end
Then /^he should see an order details$/ do
  page.should have_content("Your Orders")
end
