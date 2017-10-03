Given /^I am on Ayu website$/ do
	visit LoginPage

end
########################Invalid Scenario steps########################
When /^I enter invalid email ID\/Password$/ do
	on LoginPage do |page|
      page.invalid_email
      sleep 2
 end
  
end

When /^I click on sign in button$/ do
 
end

Then /^I should see the error message displayed$/ do
end

When /^I enter the email which is not registered$/ do

end

Then /^I should see the error message$/ do

end
###############################valid Scenario####################
When /^I enter all my credentials$/ do
	on LoginPage do |page|
page.email_id =  Common.resident_user('username')
page.pass_id =  Common.resident_user('pwd')
end
end

When /^click on sign in button$/ do
on LoginPage do |page|
 page.sub_type
 sleep 2
end
end

Then /^I should see homepage$/ do

end
