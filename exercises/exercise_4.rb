require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey  = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel:true);
whistler = Store.create(name: "Whistler", annual_revenue: 1900000  , mens_apparel: true, womens_apparel:false);
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000  , mens_apparel: true, womens_apparel:true);

@store4 = Store.find_by(id:4)
@store5 = Store.find_by(id:5)
@store6 = Store.find_by(id:6)

@mens_stores = Store.where("mens_apparel = true")
@mens_stores.each { |store| 
    puts store.name
    puts store.annual_revenue }

puts "---------"

@womens_stores_less_than_mil = Store.where(["womens_apparel = ? and annual_revenue < ?", true, 10000000])
@womens_stores_less_than_mil.each { |store| 
    puts store.name
    puts store.annual_revenue }
