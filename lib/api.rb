require 'sinatra'
require './fizzbuzz'

get '/count/fizzbuzz/:value' do
  @fizzbuzz = Fizzbuzz.new(3, 5)
  "Hello #{@fizzbuzz.count(params['value'].to_i)}"
end
