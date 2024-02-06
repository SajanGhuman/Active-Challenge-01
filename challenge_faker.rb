require_relative 'ar.rb'
require 'faker'

10.times do
  category = Category.create(name: Faker::Commerce.department(max: 1))
  
  10.times do
    product = category.products.create(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.sentence,
      price: Faker::Commerce.price(range: 1..100),
      stock_quantity: Faker::Number.between(from: 1, to: 100)
    )
  end
end
