Given(/^We want to count with Fizzbuzz$/) do
  @fizzbuzz = Fizzbuzz.new(3, 5)
end

When(/^(\d+) is not divisible with both (\d+) and (\d+)$/) do |number, arg2, arg3|
  @result = @fizzbuzz.count(number)
end

Then(/^we will be counted as '(\d+)'$/) do |expected|
    expect(@result).to eq(expected)
end
