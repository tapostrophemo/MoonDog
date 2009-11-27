
def login
  visit '/login'
  fill_in "Username", :with => "Sam"
  fill_in "Password", :with => "pass"
  click_button("Login")
end

Given /^I am logged in$/ do
  login
end
