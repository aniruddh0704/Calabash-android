require 'calabash-android/calabash_steps'

Given(/^my app is running$/) do
  
end

Then(/^I enter "(.*?)" into field with id "(.*?)"$/) do |text, id|
  enter_text("android.widget.EditText id:'#{id}'", text)
end

Then(/^I press button with id "(.*?)"$/) do |id|
 tap_when_element_exists("android.widget.Button id:'#{id}'")
end

Then(/^I hide keyboard$/) do
  perform_action('hide_soft_keyboard')
end

Then(/^I see error message$/) do
  q=query("TextView id:'message'")
  message=q[0]["text"]
  message='Invalid username or password!'
end

Then(/^I drag field with id "(.*?)"$/) do |id|
   drag("android.widget.SeekBar id:'amount'",:right)
end


Then(/^wait (\d+) seconds$/) do |seconds|
  sleep(seconds.to_i)
end

Then(/^wait for text "(.*?)" to appear$/) do |arg1|
 if("web-view css:textContent == 'Your balance is: 0.00$' || 'Your balance is: -00.00$'")    
       screenshot_embed    
       raise "Value should not less then zero"
  
 else
       puts "Value is positive"

end
end