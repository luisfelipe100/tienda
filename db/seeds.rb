# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Product.destroy_all

category1 = Category.create(name: 'Category 1')
category2 = Category.create(name: 'Category 2')
category3= Category.create(name: 'Category 3')

Product.create name: 'Product 1', price: 100, category_id: category1.id
Product.create name: 'Product 2', price: 150, category_id: category1
category1.products << Product.create(name: 'Producto 3', price: 150)

product = category2.products.build(name: 'Product 4', price: 200)
puts product.inspect
product.save
puts product.inspect
product.destroy

puts '----------------------------'
pro=Product.last
pro.premium = true
pro.save
puts pro.inspect
puts '----------------------------'

Category.all.each do |c|
  c.name = c.name.upcase
  c.save
end

Category.all.each {|c| puts c.name}
