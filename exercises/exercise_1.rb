require_relative '../setup'
# require 'active_record'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

class Stores < ActiveRecord::Base
    has_many :employees
end

class Employees < ActiveRecord::Base
    belongs_to :store
end

burnaby = Stores.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel:true);
richmond = Stores.create(name: "Richmond", annual_revenue: 1260000 , mens_apparel: false, womens_apparel:true);
gastown = Stores.create(name: "Gastown", annual_revenue: 190000 , mens_apparel: true, womens_apparel:false);

puts Stores.count(:all)