require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Brian", last_name:"Duong", hourly_rate: 60)
@store1.employees.create(first_name: "Tom", last_name:"Dufus", hourly_rate: 20)
@store2.employees.create(first_name: "French", last_name:"Montana", hourly_rate: 30)
@store2.employees.create(first_name: "Justin", last_name:"Bieber", hourly_rate: 20)
@store4.employees.create(first_name: "Billy", last_name:"Jones", hourly_rate: 20)
@store4.employees.create(first_name: "Josh", last_name:"Ly", hourly_rate: 15)