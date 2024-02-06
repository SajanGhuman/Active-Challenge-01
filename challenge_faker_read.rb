require_relative 'ar.rb'
require 'faker'

categories = Category.all

categories.each do |c|
    puts "Category: #{c.name}"

    c.products.each do |p|
        puts "Product => Name: #{p.name}, Price: #{p.price}\n"
    end 
    puts "\n\n\n"
end