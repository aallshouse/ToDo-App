Given /^I have something I need to do$/ do
  visit new_task_path
end

When /^I create a task item named "([^"]*)"$/ do |title|
  fill_in "Title", :with => title
end

Then /^I see "([^"]*)" in my list of task items$/ do |text|
  page.has_content?(text).should be_true
end
