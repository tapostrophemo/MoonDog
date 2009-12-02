
def contains(texts)
  texts.each do |t|
    response.should contain t
  end
end

def does_not_contain(texts)
  texts.each do |t|
    response.should_not contain t
  end
end

def login(username, password)
  visit '/login'
  fill_in "Username", :with => username
  fill_in "Password", :with => password
  click_button("Login")
end

Given /^I am logged in$/ do
  login("Sam", "pass")
end

When /^I login using "([^\"]*)", "([^\"]*)"$/ do |username, password|
  login(username, password)
end

Then /^I should be successfully logged in as "([^\"]*)"$/ do |username|
  user = User.find_by_username(username)
#  user.should == current_user
  contains ['Logout', 'Edit profile', 'Successfully logged in']
  does_not_contain ['Login', 'Register']
end

Then /^I should be logged out$/ do
  contains ['Login', 'Register', 'Successfully logged out']
  does_not_contain ['Logout', 'Edit profile']
end
