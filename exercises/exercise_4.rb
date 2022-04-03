require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey  = Stores.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel:true);
whistler = Stores.create(name: "Whistler", annual_revenue: 1900000  , mens_apparel: true, womens_apparel:false);
yaletown = Stores.create(name: "Yaletown", annual_revenue: 430000  , mens_apparel: true, womens_apparel:true);

@mens_stores = Stores.where("mens_apparel = true")
@mens_stores.each { |store| 
    puts store.name
    puts store.annual_revenue }

puts "---------"

@womens_stores_less_than_mil = Stores.where(["womens_apparel = ? and annual_revenue < ?", true, 10000000])
@womens_stores_less_than_mil.each { |store| 
    puts store.name
    puts store.annual_revenue }
