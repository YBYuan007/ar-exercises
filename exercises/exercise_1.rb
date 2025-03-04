require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
# Exercise 1: Create 3 stores
# Use Active Record's create class method multiple times to create 3 stores in the database:
# Burnaby (annual_revenue of 300000, carries men's and women's apparel)
# Richmond (annual_revenue of 1260000 carries women's apparel only)
# Gastown (annual_revenue of 190000 carries men's apparel only)
# Output (puts) the number of the stores using ActiveRecord's count method, to ensure that there are three stores in the database.


Store.create(name: "burnaby_store", annual_revenue: 300000, womens_apparel: true, mens_apparel: true)
Store.create(name: "richmond_store", annual_revenue: 1260000, womens_apparel: true, mens_apparel: false)
Store.create(name: "gastown_store", annual_revenue: 190000, womens_apparel: false, mens_apparel: true)
puts Store.count

## bad example 
# Store.create(name: "!!!!!", annual_revenue: 0, womens_apparel: false, mens_apparel: true)
w = Store.create(name: "good", annual_revenue: 1, womens_apparel: false, mens_apparel: false)
puts w.errors.full_messages




