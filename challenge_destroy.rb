require_relative 'ar.rb'

product_delete = Product.find_by(name: "test_1")
product_delete.destroy