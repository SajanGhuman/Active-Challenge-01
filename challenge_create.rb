require_relative 'ar.rb'

#-----------------create-----------
product_create = Product.create(name:"test_1",description:"Japanese rice balls", price:"7", stock_quantity:"Confections")

#------------------new-------------
product_new = Product.new
product_new.name = "test_2"
product_new.description = "Japanese rice balls"
product_new.price = 7
product_new.stock_quantity = "Confections"
product_new.save

#----------------manual-------------
products_manual = Product.new do |p|
    p.name = "test_3"
    p.description = "Japanese rice balls"
    p.price = 7
    p.stock_quantity = "Confections"
end
#------------------------------------

#------------Mising_Coloumn-----------
product_missing = Product.new
product_missing.name = "test_4"
product_missing.price = "7"

if product_missing.save
    puts "Products saved:"
  else
    puts "Failed to save:"
    product_missing.errors.full_messages.each do |error|
      puts error
    end
  end