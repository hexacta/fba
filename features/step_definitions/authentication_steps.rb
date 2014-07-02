Given /^a user visits the signin page$/ do
  visit signin_path
end

When /^they submit invalid signin information$/ do
  click_button I18n.t(:signin)
end

Then /^they should see an error message$/ do
  expect(page).to have_selector('div.alert.alert-error')
end

Given /^the user has an account$/ do
  @user = User.create(name: "Example User", email: "user@example.com",
                      password: "foobar", password_confirmation: "foobar")
end

When /^the user submits valid signin information$/ do
  fill_valid_signin @user
end

Then /^they should see their profile page$/ do
  expect(page).to have_title(@user.name)
end

Then /^they should see a signout link$/ do
  expect(page).to have_link(I18n.t(:signout), href: signout_path)
end