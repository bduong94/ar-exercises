require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
@userstorename = gets

@store7 = Store.create(name: @userstorename)
puts @store7.errors[:annual_revenue]
puts @store7.errors[:mens_apparel]
puts @store7.errors[:womens_apparel]