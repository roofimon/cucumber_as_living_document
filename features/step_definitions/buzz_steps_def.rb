Given(/^it is not divisible by (\d+)$/) do |three|
  @fizz_value = three.to_i
end

Given(/^(\d+)$/) do |five|
  @buzz_value = five.to_i
end

Then(/^I count 'Buzz'$/) do
  expect(@result).to eq('Buzz')
end
