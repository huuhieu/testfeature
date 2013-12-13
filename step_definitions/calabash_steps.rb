require 'calabash-android/calabash_steps'
#Given /^I see 
#Given /^I start my app$/ do
#	macro 'I see "Welcom to Team Six Project"'
#	macro 'I see "Sort Algorithms"'
#end

#Then /^I see main menu$/ do
#	macro 'I wait for "What is the algorithm that you want to work with" to appear'
#end

Given /^I start my app$/ do
	element_exists("TextView marked:'Welcom to Team Six Projects'")
	query("button")
end

Then /^I see main menu$/ do
	element_exists("What is the algorithm that you want to work with")
end

Then /^I take a nice picture of my main screen$/ do
	screenshot({:prefix => nil, :name=>"my.png"})
end

Given /^I want to use Counting Sort feature$/ do
	touch("button index:2")
	wait_for_elements_exist(["TextView marked:'Sorting Algorithms Project'"])
	check_element_exists("TextView marked:'Counting Sort is chosen'")
end

Then /^I enter number of digits i want to sort$/ do
	query("edittext index:0", setText:"5")
	touch("button index:0")
end

Then /^I want to get a new random number array$/ do
	wait_for_elements_exist(["TextView marked:'Sorting Algorithms Project'"])
	check_element_exists("TextView id:'TextView2'")
	touch("button index:1")
	check_element_exists("TextView id:'TextView2'")
	touch("button index:1")
end

Given /^I want to use TimSort feature$/ do
	touch("button index:1")
end

Then /^I want use TimSort to sort 6 numbers$/ do
	wait_for_elements_exist(["TextView marked:'Sorting Algorithms Project'"])
	check_element_exists("TextView marked:'Tim Sort is chosen'")
	query("edittext index:0", setText:"10")
	touch("button index:0")
end

But /^I dont like this number array, so I chose a new number array$/ do
	touch("button index:1")
	touch("button index:0")
end

Then /^I see number array after timsort and sort steps$/ do
	wait_for_elements_exist(["TextView marked:'Sorting Algorithms Project'"])
	check_element_exists("TextView marked:'Timsort with steps'")
	touch("button index:0")
end

Then /^I see number array after merge sort and sort steps$/ do
	wait_for_elements_exist(["TextView marked:'Sorting Algorithms Project'"])
	check_element_exists("TextView marked:'Merge Sort with steps'")
	touch("button index:0")
end

Given /^I want to use MergeSort feature$/ do
	touch("button index:0")
end

Then /^I want to use MergeSort to sort 9 numbers$/ do
	wait_for_elements_exist(["TextView marked:'Sorting Algorithms Project'"])
	check_element_exists("TextView marked:'Merge Sort is chosen'")
	query("edittext index:0", setText:"9")
	touch("button index:0")
end

And /^I see random number array, I like it so I want to use it$/ do
	touch("button index:0")
end
