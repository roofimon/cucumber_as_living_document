class Fizzbuzz
  def initialize(fizz_value, buzz_value)
    @fizz = fizz_value
    @buzz = buzz_value
  end

  def count(number)
    if number % @fizz == 0
      'Fizz'
    elsif number % 5 == 0
      'Buzz'
    else
      number.to_s
    end
  end
end
