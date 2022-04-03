require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@sum = Stores.sum("annual_revenue")
puts @sum
@average = Stores.average("annual_revenue")
puts @average
@total_stores_higher_than_mil = Stores.where("annual_revenue > 1000000").count(:all)
puts @total_stores_higher_than_mil