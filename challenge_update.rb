require_relative 'ar.rb'

more_than_40 = Product.where("stock_quantity > ?", 40)
more_than_40.update_all("stock_quantity = stock_quantity + 1")