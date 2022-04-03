require_relative '../setup'
require 'active_record'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

class Store < ActiveRecord::Base
    has_many :employees
    validates :name, length: { minimum: 3}
    validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validate :has_apparel

    def has_apparel
        if mens_apparel == false && womens_apparel == false
            errors.add(:mens_apparel, :womens_apparel, "Need at least one store")
        end
    end
end

class Employee < ActiveRecord::Base
    belongs_to :store
    validates :store_id, numericality: { only_integer: true}
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
end

burnaby = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel:true);
richmond = Store.create(name: "Richmond", annual_revenue: 1260000 , mens_apparel: false, womens_apparel:true);
gastown = Store.create(name: "Gastown", annual_revenue: 190000 , mens_apparel: true, womens_apparel:false);

puts Store.count(:all)