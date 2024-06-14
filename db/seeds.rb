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

# Suppliers
supplier1 = Supplier.create(email: 'supplier1@gmail.com', password: 'asdasd', password_confirmation: 'asdasd')
supplier2 = Supplier.create(email: 'supplier2@gmail.com', password: 'asdasd', password_confirmation: 'asdasd')

# Services
regalos = 'Regalos'
catering = 'Catering'
merchandising = 'Merchandising'
eventos = 'Eventos'

# Clients
Client.create([
  {
    email: 'client1@gmail.com',
    name: 'client1',
    phone: '095114540',
    password: 'asdasd',
    password_confirmation: 'asdasd',
    company_name: 'c1 company'
  },
  {
    email: 'client2@gmail.com',
    name: 'client2',
    phone: '095114541',
    password: 'asdasd',
    password_confirmation: 'asdasd',
    company_name: 'c2 company'
  }
])

# Products
Product.create([
  {
    name: "Ensalada César",
    price: 8.99,
    rate: 5,
    description: "Ensalada fresca con pollo, queso parmesano y aderezo César",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: true,
    apetizer: true,
    for_sharing: false,
    user: supplier1,
    type: regalos
  },
  {
    name: "Pizza Margherita",
    price: 12.99,
    rate: 4,
    description: "Pizza clásica con tomate, mozzarella y albahaca",
    vegan_or_vegetarian: true,
    sugar_free: false,
    no_tacc: false,
    apetizer: false,
    for_sharing: true,
    user: supplier1,
    type: catering
  },
  {
    name: "Tacos al Pastor",
    price: 10.50,
    rate: 5,
    description: "Tacos mexicanos con cerdo adobado, piña y cilantro",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: true,
    apetizer: false,
    for_sharing: true,
    user: supplier2,
    type: regalos
  },
  {
    name: "Sushi Variado",
    price: 18.00,
    rate: 5,
    description: "Selección de sushi fresco con sashimi, nigiri y maki",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: regalos
  },
  {
    name: "Hamburguesa Clásica",
    price: 9.99,
    rate: 4,
    description: "Hamburguesa de res con lechuga, tomate y cebolla",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: false,
    apetizer: false,
    for_sharing: false,
    user: supplier1,
    type: regalos
  },
  {
    name: "Pasta Alfredo",
    price: 13.50,
    rate: 5,
    description: "Pasta con salsa Alfredo cremosa y parmesano",
    vegan_or_vegetarian: false,
    sugar_free: false,
    no_tacc: false,
    apetizer: false,
    for_sharing: false,
    user: supplier1,
    type: regalos
  },
  {
    name: "Falafel",
    price: 7.50,
    rate: 4,
    description: "Bolas de garbanzo fritas, servidas con hummus y pita",
    vegan_or_vegetarian: true,
    sugar_free: true,
    no_tacc: true,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: regalos
  },
  {
    name: "Pad Thai",
    price: 14.00,
    rate: 5,
    description: "Plato tailandés con fideos de arroz, camarones y salsa de tamarindo",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: true,
    apetizer: false,
    for_sharing: true,
    user: supplier2,
    type: regalos
  },
  {
    name: "Burrito de Pollo",
    price: 11.50,
    rate: 4,
    description: "Burrito relleno de pollo, frijoles y queso",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: false,
    apetizer: false,
    for_sharing: true,
    user: supplier1,
    type: catering
  },
  {
    name: "Enchiladas Verdes",
    price: 12.00,
    rate: 5,
    description: "Enchiladas de pollo con salsa verde y crema",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: false,
    apetizer: false,
    for_sharing: true,
    user: supplier1,
    type: catering
  },
  {
    name: "Empanadas de Carne",
    price: 6.50,
    rate: 4,
    description: "Empanadas rellenas de carne sazonada",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: regalos
  },
  {
    name: "Gnocchi de Papa",
    price: 13.99,
    rate: 5,
    description: "Gnocchi de papa con salsa de tomate y albahaca",
    vegan_or_vegetarian: true,
    sugar_free: false,
    no_tacc: false,
    apetizer: false,
    for_sharing: false,
    user: supplier2,
    type: regalos
  },
  {
    name: "Churrasco",
    price: 19.99,
    rate: 5,
    description: "Corte de carne asada con chimichurri",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: true,
    apetizer: false,
    for_sharing: false,
    user: supplier1,
    type: regalos
  },
  {
    name: "Paella",
    price: 25.00,
    rate: 5,
    description: "Plato español con arroz, mariscos y azafrán",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: true,
    apetizer: false,
    for_sharing: true,
    user: supplier1,
    type: catering
  },
  {
    name: "Bruschetta",
    price: 7.00,
    rate: 4,
    description: "Pan tostado con tomate, albahaca y aceite de oliva",
    vegan_or_vegetarian: true,
    sugar_free: true,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: regalos
  },
  {
    name: "Ravioles de Espinaca",
    price: 14.50,
    rate: 5,
    description: "Pasta rellena de espinaca y ricota, con salsa de tomate",
    vegan_or_vegetarian: true,
    sugar_free: false,
    no_tacc: false,
    apetizer: false,
    for_sharing: false,
    user: supplier2,
    type: regalos
  },
  {
    name: "Tiramisu",
    price: 6.99,
    rate: 5,
    description: "Postre italiano con capas de mascarpone y café",
    vegan_or_vegetarian: false,
    sugar_free: false,
    no_tacc: false,
    apetizer: false,
    for_sharing: true,
    user: supplier1,
    type: catering
  },
  {
    name: "Sopa de Miso",
    price: 4.50,
    rate: 4,
    description: "Sopa japonesa con miso, tofu y algas",
    vegan_or_vegetarian: true,
    sugar_free: true,
    no_tacc: true,
    apetizer: true,
    for_sharing: true,
    user: supplier1,
    type: catering
  },
  {
    name: "Curry de Pollo",
    price: 15.00,
    rate: 5,
    description: "Curry de pollo con arroz basmati",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: true,
    apetizer: false,
    for_sharing: true,
    user: supplier2,
    type: regalos
  },
  {
    name: "Salteado de Vegetales",
    price: 12.00,
    rate: 4,
    description: "Vegetales salteados con salsa de soja",
    vegan_or_vegetarian: true,
    sugar_free: true,
    no_tacc: true,
    apetizer: false,
    for_sharing: true,
    user: supplier2,
    type: regalos
  },
  {
    name: "Pollo a la Parrilla",
    price: 14.99,
    rate: 4,
    description: "Pollo marinado y asado a la parrilla",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: true,
    apetizer: false,
    for_sharing: false,
    user: supplier1,
    type: regalos
  },
  {
    name: "Ceviche",
    price: 13.50,
    rate: 5,
    description: "Pescado marinado en cítricos con cebolla y cilantro",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: true,
    apetizer: true,
    for_sharing: true,
    user: supplier1,
    type: catering
  },
  {
    name: "Quesadilla de Queso",
    price: 8.00,
    rate: 4,
    description: "Quesadilla rellena de queso derretido",
    vegan_or_vegetarian: true,
    sugar_free: true,
    no_tacc: false,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: regalos
  },
  {
    name: "Moussaka",
    price: 16.00,
    rate: 5,
    description: "Plato griego con berenjenas, carne y bechamel",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: false,
    apetizer: false,
    for_sharing: true,
    user: supplier2,
    type: regalos
  },
  {
    name: "Arepas",
    price: 7.99,
    rate: 4,
    description: "Tortillas de maíz rellenas de carne y queso",
    vegan_or_vegetarian: false,
    sugar_free: true,
    no_tacc: true,
    apetizer: true,
    for_sharing: true,
    user: supplier1,
    type: catering
  },
  {
    name: "Shakshuka",
    price: 11.00,
    rate: 5,
    description: "Plato del Medio Oriente con huevos pochados en salsa de tomate",
    vegan_or_vegetarian: true,
    sugar_free: true,
    no_tacc: true,
    apetizer: false,
    for_sharing: true,
    user: supplier1,
    type: catering
  },
  {
    name: "Panqueques",
    price: 6.00,
    rate: 4,
    description: "Panqueques servidos con miel y frutas",
    vegan_or_vegetarian: true,
    sugar_free: false,
    no_tacc: false,
    apetizer: false,
    for_sharing: true,
    user: supplier2,
    type: regalos
  },
  {
    name: "Samosas",
    price: 5.50,
    rate: 4,
    description: "Empanadillas indias rellenas de patata y guisantes",
    vegan_or_vegetarian: true,
    sugar_free: true,
    no_tacc: true,
    apetizer: true,
    for_sharing: true,
    user: supplier2,
    type: regalos
  },
  {
    name: "Polenta",
    price: 10.00,
    rate: 4,
    description: "Polenta cremosa servida con salsa de tomate",
    vegan_or_vegetarian: true,
    sugar_free: true,
    no_tacc: true,
    apetizer: false,
    for_sharing: true,
    user: supplier1,
    type: catering
  },
  {
    name: "Baklava",
    price: 7.00,
    rate: 5,
    description: "Postre de capas de masa filo con nueces y miel",
    vegan_or_vegetarian: true,
    sugar_free: false,
    no_tacc: false,
    apetizer: false,
    for_sharing: true,
    user: supplier1
  }
])
