Given /^I have no users$/ do
  User.delete(:all)
end
