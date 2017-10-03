Given /^I am on homepage$/ do
	visit Community
  
end

When /^click on community tab$/ do
	on Community do |page|
		page.email_id =  Common.resident_user('username')
        page.pass_id =  Common.resident_user('pwd')
        page.sub_type
        sleep 2
		page.com
    end
end

When /^I click on rsvp button$/ do
	on Community do |page|
		page.rsvp
	end
end

Then /^I should be able to see the chenged status$/ do
 
end

When /^I enter all details under reservation tab$/ do
	on Community do |page|
		page.reserve
    end
  
end

Then /^I should be able to submit it successfully$/ do

end

When /^I click on maintaince tab$/ do

end

Then /^I should be able to fillin all the details$/ do

end
