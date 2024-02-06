require_relative 'ar.rb'

first_product = Product.first
#analysing the coloums(category_id), the product table belong to the category table 
number_of_products = Product.count

above_10_begins_C = Product.where("price > ?" , 10).where("name LIKE ?", "C%").pluck(:name)

low_stock = Product.where("stock_quantity < ?", 5).count

category_first_product = first_product.category.name


new_beverage = first_product.category.products.build( name:  'new beverage',
                                  description: 'a new beverage',
                                  price:  '10',
                                  stock_quantity: '30')

new_beverage.save

beverage_category = Category.find_by(name: "Beverages")
products_over_20 = beverage_category.products.where("price > ?", 20)

if products_over_20.any?
    puts "products found in #{beverage_category.name} are : \n"
    products_over_20.each do |p|
      puts "- #{p.name}: $#{p.price}"  # Changed from products_over_20.name to p.name
    end
  else
    puts "No products found"  # Added puts to output the message
  end
  

puts "\n\nInspecting the found products #{first_product.inspect}\n"
puts "------------------------------------------------------------------\n\n"
puts "There are #{number_of_products} in the products table.\n"
puts "------------------------------------------------------------------\n\n"
puts "The first Product in the database is #{first_product.name}.\n"
puts "------------------------------------------------------------------\n\n"
puts "The names of all products above $10 with names that begin with the letter C are: \n#{above_10_begins_C}"
puts "------------------------------------------------------------------\n\n"
puts "Total number of products with a low stock quantity: #{low_stock}"
puts "------------------------------------------------------------------\n\n"
puts "The product category is: #{category_first_product}"
puts "------------------------------------------------------------------\n\n"
puts new_beverage.inspect
puts "------------------------------------------------------------------\n\n"
