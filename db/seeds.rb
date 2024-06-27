# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clean DB
Product.destroy_all
User.destroy_all
Category.destroy_all
Admin.destroy_all

puts "Creating Admin:"
puts "admin@admin.com | asdasd"
# Admin
Admin.create!(
  email: "admin@admin.com",
  password: 'asdasd',
  password_confirmation: 'asdasd'
)

puts "Creating suppliers"
# Suppliers
supplier1 = Supplier.create(email: 'supplier1@gmail.com', password: 'asdasd', password_confirmation: 'asdasd', name: "supplier 1")
supplier2 = Supplier.create(email: 'supplier2@gmail.com', password: 'asdasd', password_confirmation: 'asdasd', name: "supplier 2")

# Services
regalos = 'Regalos'
catering = 'Catering'
merchandising = 'Merchandising'
eventos = 'Eventos'

# Categories
food_box = Category. create(name: "Food Box")
snacks = Category. create(name: "Snacks")
bakery = Category. create(name: "Bakery")

# Clients
Client.create!([
  {
    email: 'client1@gmail.com',
    name: 'client1',
    last_name:'client1thethird',
    phone: '095114540',
    password: 'asdasd',
    password_confirmation: 'asdasd',
    company_name: 'c1 company'
  },
  {
    email: 'client2@gmail.com',
    name: 'client2',
    last_name:'client2thethird',
    phone: '095114541',
    password: 'asdasd',
    password_confirmation: 'asdasd',
    company_name: 'c2 company'
  }
])

puts "Creating Products..."
# Products
Product.create!([
  {
    name: "Mini box salada",
    price: 495,
    rate: 4.59,
    description: "Cada mini box salada contiene: 2 scones de queso, 1 sandwich de jamon y queso, 1 botella de agua.",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: false,
    apetizer: true,
    for_sharing: false,
    user: supplier1,
    type: regalos,
    category: food_box
  },
  {
    name: "Caja de snacks",
    price: 250,
    rate: 4.8,
    description: "Variedad de snacks salados y dulces en una caja compacta.",
    vegan_or_vegetarian: true,
    sugar_free: false,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier1,
    type: catering,
    category: snacks
  },
  {
    name: "Box desayuno",
    price: 600,
    rate: 4.7,
    description: "Incluye jugo de naranja, croissants, yogurt y granola.",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: false,
    apetizer: false,
    for_sharing: true,
    user: supplier2,
    type: eventos,
    category: food_box
  },
  {
    name: "Pizza Margherita",
    price: 1200,
    rate: 4.6,
    description: "Pizza clásica con tomate, mozzarella y albahaca.",
    vegan_or_vegetarian: true,
    sugar_free: false,
    no_tacc: false,
    apetizer: false,
    for_sharing: true,
    user: supplier1,
    type: merchandising,
    category: bakery
  },
  {
    name: "Ensalada César",
    price: 800,
    rate: 4.5,
    description: "Ensalada fresca con pollo, queso parmesano y aderezo César.",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: true,
    apetizer: true,
    for_sharing: false,
    user: supplier2,
    type: catering,
    category: food_box
  },
  {
    name: "Mix de frutos secos",
    price: 350,
    rate: 4.9,
    description: "Una mezcla de almendras, nueces y pasas.",
    vegan_or_vegetarian: true,
    sugar_free: true,
    no_tacc: true,
    apetizer: true,
    for_sharing: true,
    user: supplier1,
    type: regalos,
    category: snacks
  },
  {
    name: "Bagels surtidos",
    price: 950,
    rate: 4.4,
    description: "Bagels de diferentes sabores con acompañamientos.",
    vegan_or_vegetarian: false,
    sugar_free: false,
    no_tacc: false,
    apetizer: false,
    for_sharing: true,
    user: supplier2,
    type: eventos,
    category: bakery
  },
  {
    name: "Brownies de chocolate",
    price: 700,
    rate: 4.7,
    description: "Brownies caseros de chocolate negro.",
    vegan_or_vegetarian: false,
    sugar_free: false,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier1,
    type: catering,
    category: bakery
  },
  {
    name: "Caja de frutas",
    price: 500,
    rate: 4.8,
    description: "Selección de frutas frescas de temporada.",
    vegan_or_vegetarian: true,
    sugar_free: true,
    no_tacc: true,
    apetizer: false,
    for_sharing: true,
    user: supplier2,
    type: regalos,
    category: food_box
  },
  {
    name: "Sandwiches surtidos",
    price: 1500,
    rate: 4.6,
    description: "Variedad de sandwiches con diferentes rellenos.",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier1,
    type: eventos,
    category: food_box
  },
  {
    name: "Galletas de avena",
    price: 400,
    rate: 4.5,
    description: "Galletas saludables hechas con avena y pasas.",
    vegan_or_vegetarian: true,
    sugar_free: false,
    no_tacc: true,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: merchandising,
    category: bakery
  },
  {
    name: "Empanadas de carne",
    price: 900,
    rate: 4.8,
    description: "Empanadas rellenas de carne sazonada.",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier1,
    type: catering,
    category: snacks
  },
  {
    name: "Ensalada de frutas",
    price: 600,
    rate: 4.7,
    description: "Ensalada fresca con una variedad de frutas.",
    vegan_or_vegetarian: true,
    sugar_free: true,
    no_tacc: true,
    apetizer: false,
    for_sharing: true,
    user: supplier2,
    type: regalos,
    category: food_box
  },
  {
    name: "Quiche Lorraine",
    price: 1300,
    rate: 4.6,
    description: "Quiche tradicional con bacon y queso.",
    vegan_or_vegetarian: false,
    sugar_free: false,
    no_tacc: false,
    apetizer: false,
    for_sharing: true,
    user: supplier1,
    type: eventos,
    category: bakery
  },
  {
    name: "Chips de vegetales",
    price: 550,
    rate: 4.8,
    description: "Crujientes chips hechos de vegetales mixtos.",
    vegan_or_vegetarian: true,
    sugar_free: true,
    no_tacc: true,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: catering,
    category: snacks
  },
  {
    name: "Tortilla Española",
    price: 850,
    rate: 4.9,
    description: "Clásica tortilla de papas y cebolla.",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: true,
    apetizer: false,
    for_sharing: true,
    user: supplier1,
    type: merchandising,
    category: food_box
  },
  {
    name: "Muffins de arándanos",
    price: 650,
    rate: 4.6,
    description: "Muffins caseros con arándanos frescos.",
    vegan_or_vegetarian: false,
    sugar_free: false,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: catering,
    category: bakery
  },
  {
    name: "Queso y fiambres",
    price: 1200,
    rate: 4.5,
    description: "Tabla de quesos y fiambres variados.",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: true,
    apetizer: true,
    for_sharing: true,
    user: supplier1,
    type: eventos,
    category: snacks
  },
  {
    name: "Sándwich vegetariano",
    price: 700,
    rate: 4.7,
    description: "Sándwich saludable con vegetales frescos.",
    vegan_or_vegetarian: true,
    sugar_free: true,
    no_tacc: true,
    apetizer: false,
    for_sharing: true,
    user: supplier2,
    type: regalos,
    category: food_box
  },
  {
    name: "Galletas de chocolate",
    price: 450,
    rate: 4.9,
    description: "Galletas con chispas de chocolate.",
    vegan_or_vegetarian: false,
    sugar_free: false,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier1,
    type: catering,
    category: bakery
  },
  {
    name: "Focaccia de romero",
    price: 750,
    rate: 4.8,
    description: "Pan italiano con romero y sal marina.",
    vegan_or_vegetarian: true,
    sugar_free: true,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: merchandising,
    category: bakery
  },
  {
    name: "Bocadillos de jamón",
    price: 950,
    rate: 4.6,
    description: "Pequeños bocadillos rellenos de jamón serrano.",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier1,
    type: eventos,
    category: snacks
  },
  {
    name: "Salchichas cocktail",
    price: 800,
    rate: 4.7,
    description: "Salchichas pequeñas con diferentes salsas.",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: true,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: catering,
    category: snacks
  },
  {
    name: "Pasta boloñesa",
    price: 1350,
    rate: 4.6,
    description: "Pasta con salsa boloñesa casera.",
    vegan_or_vegetarian: false,
    sugar_free: false,
    no_tacc: false,
    apetizer: false,
    for_sharing: true,
    user: supplier1,
    type: regalos,
    category: food_box
  },
  {
    name: "Croissants",
    price: 450,
    rate: 4.8,
    description: "Croissants frescos y mantecosos.",
    vegan_or_vegetarian: false,
    sugar_free: false,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: merchandising,
    category: bakery
  },
  {
    name: "Scones de queso",
    price: 500,
    rate: 4.7,
    description: "Scones salados con queso cheddar.",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier1,
    type: eventos,
    category: bakery
  },
  {
    name: "Tabla de quesos",
    price: 2000,
    rate: 4.9,
    description: "Selección de quesos gourmet con acompañamientos.",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: true,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: catering,
    category: snacks
  },
  {
    name: "Wraps de pollo",
    price: 900,
    rate: 4.5,
    description: "Wraps rellenos de pollo, lechuga y tomate.",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: false,
    apetizer: false,
    for_sharing: true,
    user: supplier1,
    type: regalos,
    category: food_box
  },
  {
    name: "Bruschetta de tomate",
    price: 750,
    rate: 4.8,
    description: "Pan tostado con tomate fresco y albahaca.",
    vegan_or_vegetarian: true,
    sugar_free: true,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: catering,
    category: snacks
  },
  {
    name: "Galletas de jengibre",
    price: 400,
    rate: 4.6,
    description: "Galletas especiadas con jengibre y canela.",
    vegan_or_vegetarian: true,
    sugar_free: false,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier1,
    type: eventos,
    category: bakery
  },
  {
    name: "Tarta de manzana",
    price: 1200,
    rate: 4.9,
    description: "Tarta casera de manzana con canela.",
    vegan_or_vegetarian: false,
    sugar_free: false,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: regalos,
    category: bakery
  },
  {
    name: "Sushi variado",
    price: 1800,
    rate: 4.9,
    description: "Selección de sushi fresco con sashimi, nigiri y maki.",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier1,
    type: merchandising,
    category: food_box
  },
  {
    name: "Pastel de chocolate",
    price: 850,
    rate: 4.7,
    description: "Pastel húmedo de chocolate con ganache.",
    vegan_or_vegetarian: false,
    sugar_free: false,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: catering,
    category: bakery
  },
  {
    name: "Fresas con chocolate",
    price: 600,
    rate: 4.8,
    description: "Fresas frescas cubiertas con chocolate negro.",
    vegan_or_vegetarian: true,
    sugar_free: false,
    no_tacc: true,
    apetizer: true,
    for_sharing: true,
    user: supplier1,
    type: eventos,
    category: snacks
  },
  {
    name: "Pan de ajo",
    price: 400,
    rate: 4.7,
    description: "Pan crujiente con mantequilla de ajo.",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: regalos,
    category: bakery
  },
  {
    name: "Ensalada griega",
    price: 800,
    rate: 4.6,
    description: "Ensalada con tomate, pepino, aceitunas y queso feta.",
    vegan_or_vegetarian: true,
    sugar_free: true,
    no_tacc: true,
    apetizer: false,
    for_sharing: true,
    user: supplier1,
    type: catering,
    category: food_box
  },
  {
    name: "Trufas de chocolate",
    price: 700,
    rate: 4.8,
    description: "Trufas caseras de chocolate negro.",
    vegan_or_vegetarian: false,
    sugar_free: false,
    no_tacc: true,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: merchandising,
    category: snacks
  },
  {
    name: "Rollos de canela",
    price: 650,
    rate: 4.7,
    description: "Rollos de canela glaseados.",
    vegan_or_vegetarian: false,
    sugar_free: false,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier1,
    type: eventos,
    category: bakery
  },
  {
    name: "Ceviche de pescado",
    price: 950,
    rate: 4.9,
    description: "Pescado marinado en cítricos con cebolla y cilantro.",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: true,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: regalos,
    category: food_box
  },
  {
    name: "Panqueques",
    price: 500,
    rate: 4.6,
    description: "Panqueques servidos con miel y frutas.",
    vegan_or_vegetarian: true,
    sugar_free: false,
    no_tacc: false,
    apetizer: false,
    for_sharing: true,
    user: supplier1,
    type: catering,
    category: bakery
  },
  {
    name: "Quesadillas de queso",
    price: 750,
    rate: 4.8,
    description: "Quesadillas rellenas de queso derretido.",
    vegan_or_vegetarian: true,
    sugar_free: true,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: merchandising,
    category: food_box
  },
  {
    name: "Alfajores de maicena",
    price: 600,
    rate: 4.7,
    description: "Alfajores rellenos de dulce de leche y cubiertos con coco.",
    vegan_or_vegetarian: false,
    sugar_free: false,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier1,
    type: eventos,
    category: bakery
  },
  {
    name: "Tarta de limón",
    price: 850,
    rate: 4.9,
    description: "Tarta de limón con merengue.",
    vegan_or_vegetarian: false,
    sugar_free: false,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: regalos,
    category: bakery
  },
  {
    name: "Café gourmet",
    price: 300,
    rate: 4.6,
    description: "Café recién molido de alta calidad.",
    vegan_or_vegetarian: true,
    sugar_free: true,
    no_tacc: true,
    apetizer: false,
    for_sharing: true,
    user: supplier1,
    type: catering,
    category: snacks
  },
  {
    name: "Macarons franceses",
    price: 1200,
    rate: 4.8,
    description: "Macarons delicados de diferentes sabores.",
    vegan_or_vegetarian: false,
    sugar_free: false,
    no_tacc: true,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: merchandising,
    category: bakery
  },
  {
    name: "Ensalada de quinoa",
    price: 750,
    rate: 4.7,
    description: "Ensalada nutritiva con quinoa y vegetales.",
    vegan_or_vegetarian: true,
    sugar_free: true,
    no_tacc: true,
    apetizer: false,
    for_sharing: true,
    user: supplier1,
    type: eventos,
    category: food_box
  }
])
