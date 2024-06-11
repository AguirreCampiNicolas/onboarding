# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
Product.destroy_all

supplier1 = Supplier.create(email: 'supplier1@example.com', password: 'asdasd', password_confirmation: 'asdasd')
supplier2 = Supplier.create(email: 'supplier2@example.com', password: 'asdasd', password_confirmation: 'asdasd')

Client.create([
  {email: 'client1@example.com', password: 'asdasd', password_confirmation: 'asdasd', company_name: 'c1 company'},
  {email: 'client2@example.com', password: 'asdasd', password_confirmation: 'asdasd', company_name: 'c2 company'}
])

Product.create([
  {
    name: "Producto 1",
    price: 110.0,
    rate: 5,
    description: "Descripción del producto 1",
    vegan_or_vegetarian: true,
    sugar_free: false,
    no_tacc: true,
    apetizer: true,
    for_sharing: false,
    user: supplier1
  },
  {
    name: "Producto 2",
    price: 250.0,
    rate: 4,
    description: "Descripción del producto 2",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: false,
    apetizer: false,
    for_sharing: true,
    user: supplier2
  },
  {
    name: "Producto 3",
    price: 300.0,
    rate: 3,
    description: "Descripción del producto 3",
    vegan_or_vegetarian: true,
    sugar_free: true,
    no_tacc: true,
    apetizer: true,
    for_sharing: true,
    user: supplier1
  }
])
