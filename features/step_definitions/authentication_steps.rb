
def login(username, password)
  visit '/login'
  fill_in "Username", :with => username
  fill_in "Password", :with => password
  click_button("Login")
end

Given /^I am logged in$/ do
  login("Sam", "pass")
end
