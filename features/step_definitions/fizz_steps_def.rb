Given(/^We want to count (\d+)$/) do |number|
  @target_number = number.to_i
end

Given(/^it divisible by (\d+)$/) do |three|
  @fizz_value = three.to_i
end

Given(/^not (\d+)$/) do |five|
  @buzz_value = five.to_i
end

When(/^I count with Fizzbuzz$/) do
  @fizzbuzz = Fizzbuzz.new(@fizz_value, @buzz_value)
  @result   = @fizzbuzz.count(@target_number)
end

Then(/^I count 'Fizz'$/) do
  expect(@result).to eq('Fizz')
end
