class Product < ActiveRecord::Base
  # This AR object is linked with the products table.

  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.

  #Inspecting the found products #<Product id: 155, name: "Chai", description: "10 boxes x 30 bags", price: #<BigDecimal:5572333c4c68,'0.18E2',9(18)>, stock_quantity: 39, category_id: 1, created_at: "2011-11-18 04:48:44", updated_at: "2011-11-18 04:48:44">
  validates :name, :description, :price, :stock_quantity, presence: true 
  validates :name, uniqueness:true, length:{minimum: 4}
  belongs_to :category
end