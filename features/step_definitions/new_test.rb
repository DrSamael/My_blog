module FridayStepsHelper
  def is_it_friday?(day)
    day == 'Friday' ? "Yep" : "Nope"
  end
end

World FridayStepsHelper

Given('today is {string}') do |today|
  @today = today
end

Given('today is Friday') do
  @today = 'Friday'
end

When('I asked whether is Friday yet') do
  @actual_value = is_it_friday?(@today)
end

Then('I should be told {string}') do |expected_value|
  expect(@actual_value).to eq(expected_value)
end
