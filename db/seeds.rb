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
puts "Clean DB..."
Product.destroy_all
User.destroy_all
Category.destroy_all
Admin.destroy_all

# Admin
puts "Creating Admin:"
puts "admin@admin.com | asdasd"
Admin.create!(email: "admin@admin.com", password: 'asdasd', password_confirmation: 'asdasd')

puts "Creating suppliers"
# Suppliers
supplier1 = Supplier.create!(email: 'supplier1@gmail.com', password: 'asdasd', password_confirmation: 'asdasd', name: "supplier 1")
supplier2 = Supplier.create!(email: 'supplier2@gmail.com', password: 'asdasd', password_confirmation: 'asdasd', name: "supplier 2")

# Services
regalos = 'Regalos'
catering = 'Catering'
merchandising = 'Merchandising'
eventos = 'Eventos'

# Categories
puts "Creating Categories..."
food_box = Category.create!(name: "Food Box")
snacks = Category.create!(name: "Snacks")
bakery = Category.create!(name: "Bakery")

# Clients
puts "Creating Clients..."
Client.create!([
  { email: 'client1@gmail.com', name: 'client1', last_name:'client1thethird', phone: '095114540', password: 'asdasd', password_confirmation: 'asdasd', company_name: 'c1 company' },
  { email: 'client2@gmail.com', name: 'client2', last_name:'client2thethird', phone: '095114541', password: 'asdasd', password_confirmation: 'asdasd', company_name: 'c2 company' }
])

# Products
puts "Creating Products..."
product1 = Product.create!(name: "Mini box salada", price: 495, rate: 4.59, description: "Cada mini box salada contiene: 2 scones de queso, 1 sandwich de jamon y queso, 1 botella de agua.", vegan_or_vegetarian: false, sugar_free: true, no_tacc: false, apetizer: true, for_sharing: false, user: supplier1, type: regalos, category: food_box)
product2 = Product.create!(name: "Caja de snacks", price: 250, rate: 4.8, description: "Variedad de snacks salados y dulces en una caja compacta.", vegan_or_vegetarian: true, sugar_free: false, no_tacc: false, apetizer: true, for_sharing: true, user: supplier1, type: catering, category: snacks)
product3 = Product.create!(name: "Box desayuno", price: 600, rate: 4.7, description: "Incluye jugo de naranja, croissants, yogurt y granola.", vegan_or_vegetarian: false, sugar_free: true, no_tacc: false, apetizer: false, for_sharing: true, user: supplier2, type: eventos, category: food_box)
product4 = Product.create!(name: "Pizza Margherita", price: 1200, rate: 4.6, description: "Pizza clásica con tomate, mozzarella y albahaca.", vegan_or_vegetarian: true, sugar_free: false, no_tacc: false, apetizer: false, for_sharing: true, user: supplier1, type: merchandising, category: bakery)
product5 = Product.create!(name: "Ensalada César", price: 800, rate: 4.5, description: "Ensalada fresca con pollo, queso parmesano y aderezo César.", vegan_or_vegetarian: false, sugar_free: true, no_tacc: true, apetizer: true, for_sharing: false, user: supplier2, type: catering, category: food_box)
product6 = Product.create!(name: "Mix de frutos secos", price: 350, rate: 4.9, description: "Una mezcla de almendras, nueces y pasas.", vegan_or_vegetarian: true, sugar_free: true, no_tacc: true, apetizer: true, for_sharing: true, user: supplier1, type: regalos, category: snacks)
product7 = Product.create!(name: "Bagels surtidos", price: 950, rate: 4.4, description: "Bagels de diferentes sabores con acompañamientos.", vegan_or_vegetarian: false, sugar_free: false, no_tacc: false, apetizer: false, for_sharing: true, user: supplier2, type: eventos, category: bakery)
product8 = Product.create!(name: "Brownies de chocolate", price: 700, rate: 4.7, description: "Brownies caseros de chocolate negro.", vegan_or_vegetarian: false, sugar_free: false, no_tacc: false, apetizer: true, for_sharing: true, user: supplier1, type: catering, category: bakery)
product9 = Product.create!(name: "Caja de frutas", price: 500, rate: 4.8, description: "Selección de frutas frescas de temporada.", vegan_or_vegetarian: true, sugar_free: true, no_tacc: true, apetizer: false, for_sharing: true, user: supplier2, type: regalos, category: food_box)
product10 = Product.create!(name: "Sandwiches surtidos", price: 1500, rate: 4.6, description: "Variedad de sandwiches con diferentes rellenos.", vegan_or_vegetarian: false, sugar_free: true, no_tacc: false, apetizer: true, for_sharing: true, user: supplier1, type: eventos, category: food_box)
product11 = Product.create!(name: "Galletas de avena", price: 400, rate: 4.5, description: "Galletas saludables hechas con avena y pasas.", vegan_or_vegetarian: true, sugar_free: false, no_tacc: true, apetizer: true, for_sharing: true, user: supplier2, type: merchandising, category: bakery)
product12 = Product.create!(name: "Empanadas de carne", price: 900, rate: 4.8, description: "Empanadas rellenas de carne sazonada.", vegan_or_vegetarian: false, sugar_free: true, no_tacc: false, apetizer: true, for_sharing: true, user: supplier1, type: catering, category: snacks)
product13 = Product.create!(name: "Ensalada de frutas", price: 600, rate: 4.7, description: "Ensalada fresca con una variedad de frutas.", vegan_or_vegetarian: true, sugar_free: true, no_tacc: true, apetizer: false, for_sharing: true, user: supplier2, type: regalos, category: food_box)
product14 = Product.create!(name: "Quiche Lorraine", price: 1300, rate: 4.6, description: "Quiche tradicional con bacon y queso.", vegan_or_vegetarian: false, sugar_free: false, no_tacc: false, apetizer: false, for_sharing: true, user: supplier1, type: eventos, category: bakery)
product15 = Product.create!(name: "Chips de vegetales", price: 550, rate: 4.8, description: "Crujientes chips hechos de vegetales mixtos.", vegan_or_vegetarian: true, sugar_free: true, no_tacc: true, apetizer: true, for_sharing: true, user: supplier2, type: catering, category: snacks)
product16 = Product.create!(name: "Tortilla Española", price: 850, rate: 4.9, description: "Clásica tortilla de papas y cebolla.", vegan_or_vegetarian: false, sugar_free: true, no_tacc: true, apetizer: false, for_sharing: true, user: supplier1, type: merchandising, category: food_box)
product17 = Product.create!(name: "Muffins de arándanos", price: 650, rate: 4.6, description: "Muffins caseros con arándanos frescos.", vegan_or_vegetarian: false, sugar_free: false, no_tacc: false, apetizer: true, for_sharing: true, user: supplier2, type: catering, category: bakery)
product18 = Product.create!(name: "Queso y fiambres", price: 1200, rate: 4.5, description: "Tabla de quesos y fiambres variados.", vegan_or_vegetarian: false, sugar_free: true, no_tacc: true, apetizer: true, for_sharing: true, user: supplier1, type: eventos, category: snacks)
product19 = Product.create!(name: "Sándwich vegetariano", price: 700, rate: 4.7, description: "Sándwich saludable con vegetales frescos.", vegan_or_vegetarian: true, sugar_free: true, no_tacc: true, apetizer: false, for_sharing: true, user: supplier2, type: regalos, category: food_box)
product20 = Product.create!(name: "Galletas de chocolate", price: 450, rate: 4.9, description: "Galletas con chispas de chocolate.", vegan_or_vegetarian: false, sugar_free: false, no_tacc: false, apetizer: true, for_sharing: true, user: supplier1, type: catering, category: bakery)
product21 = Product.create!(name: "Focaccia de romero", price: 750, rate: 4.8, description: "Pan italiano con romero y sal marina.", vegan_or_vegetarian: true, sugar_free: true, no_tacc: false, apetizer: true, for_sharing: true, user: supplier2, type: merchandising, category: bakery)
product22 = Product.create!(name: "Bocadillos de jamón", price: 950, rate: 4.6, description: "Pequeños bocadillos rellenos de jamón serrano.", vegan_or_vegetarian: false, sugar_free: true, no_tacc: false, apetizer: true, for_sharing: true, user: supplier1, type: eventos, category: snacks)
product23 = Product.create!(name: "Salchichas cocktail", price: 800, rate: 4.7, description: "Salchichas pequeñas con diferentes salsas.", vegan_or_vegetarian: false, sugar_free: true, no_tacc: true, apetizer: true, for_sharing: true, user: supplier2, type: catering, category: snacks)
product24 = Product.create!(name: "Pasta boloñesa", price: 1350, rate: 4.6, description: "Pasta con salsa boloñesa casera.", vegan_or_vegetarian: false, sugar_free: false, no_tacc: false, apetizer: false, for_sharing: true, user: supplier1, type: regalos, category: food_box)
product25 = Product.create!(name: "Croissants", price: 450, rate: 4.8, description: "Croissants frescos y mantecosos.", vegan_or_vegetarian: false, sugar_free: false, no_tacc: false, apetizer: true, for_sharing: true, user: supplier2, type: merchandising, category: bakery)
product26 = Product.create!(name: "Scones de queso", price: 500, rate: 4.7, description: "Scones salados con queso cheddar.", vegan_or_vegetarian: false, sugar_free: true, no_tacc: false, apetizer: true, for_sharing: true, user: supplier1, type: eventos, category: bakery)
product27 = Product.create!(name: "Tabla de quesos", price: 2000, rate: 4.9, description: "Selección de quesos gourmet con acompañamientos.", vegan_or_vegetarian: false, sugar_free: true, no_tacc: true, apetizer: true, for_sharing: true, user: supplier2, type: catering, category: snacks)
product28 = Product.create!(name: "Wraps de pollo", price: 900, rate: 4.5, description: "Wraps rellenos de pollo, lechuga y tomate.", vegan_or_vegetarian: false, sugar_free: true, no_tacc: false, apetizer: false, for_sharing: true, user: supplier1, type: regalos, category: food_box)
product29 = Product.create!(name: "Bruschetta de tomate", price: 750, rate: 4.8, description: "Pan tostado con tomate fresco y albahaca.", vegan_or_vegetarian: true, sugar_free: true, no_tacc: false, apetizer: true, for_sharing: true, user: supplier2, type: catering, category: snacks)
product30 = Product.create!(name: "Galletas de jengibre", price: 400, rate: 4.6, description: "Galletas especiadas con jengibre y canela.", vegan_or_vegetarian: true, sugar_free: false, no_tacc: false, apetizer: true, for_sharing: true, user: supplier1, type: eventos, category: bakery)
product31 = Product.create!(name: "Tarta de manzana", price: 1200, rate: 4.9, description: "Tarta casera de manzana con canela.", vegan_or_vegetarian: false, sugar_free: false, no_tacc: false, apetizer: true, for_sharing: true, user: supplier2, type: regalos, category: bakery)
product32 = Product.create!(name: "Sushi variado", price: 1800, rate: 4.9, description: "Selección de sushi fresco con sashimi, nigiri y maki.", vegan_or_vegetarian: false, sugar_free: true, no_tacc: false, apetizer: true, for_sharing: true, user: supplier1, type: merchandising, category: food_box)
product33 = Product.create!(name: "Pastel de chocolate", price: 850, rate: 4.7, description: "Pastel húmedo de chocolate con ganache.", vegan_or_vegetarian: false, sugar_free: false, no_tacc: false, apetizer: true, for_sharing: true, user: supplier2, type: catering, category: bakery)
product34 = Product.create!(name: "Fresas con chocolate", price: 600, rate: 4.8, description: "Fresas frescas cubiertas con chocolate negro.", vegan_or_vegetarian: true, sugar_free: false, no_tacc: true, apetizer: true, for_sharing: true, user: supplier1, type: eventos, category: snacks)
product35 = Product.create!(name: "Pan de ajo", price: 400, rate: 4.7, description: "Pan crujiente con mantequilla de ajo.", vegan_or_vegetarian: false, sugar_free: true, no_tacc: false, apetizer: true, for_sharing: true, user: supplier2, type: regalos, category: bakery)
product36 = Product.create!(name: "Ensalada griega", price: 800, rate: 4.6, description: "Ensalada con tomate, pepino, aceitunas y queso feta.", vegan_or_vegetarian: true, sugar_free: true, no_tacc: true, apetizer: false, for_sharing: true, user: supplier1, type: catering, category: food_box)
product37 = Product.create!(name: "Trufas de chocolate", price: 700, rate: 4.8, description: "Trufas caseras de chocolate negro.", vegan_or_vegetarian: false, sugar_free: false, no_tacc: true, apetizer: true, for_sharing: true, user: supplier2, type: merchandising, category: snacks)
product38 = Product.create!(name: "Rollos de canela", price: 650, rate: 4.7, description: "Rollos de canela glaseados.", vegan_or_vegetarian: false, sugar_free: false, no_tacc: false, apetizer: true, for_sharing: true, user: supplier1, type: eventos, category: bakery)
product39 = Product.create!(name: "Ceviche de pescado", price: 950, rate: 4.9, description: "Pescado marinado en cítricos con cebolla y cilantro.", vegan_or_vegetarian: false, sugar_free: true, no_tacc: true, apetizer: true, for_sharing: true, user: supplier2, type: regalos, category: food_box)
product40 = Product.create!(name: "Panqueques", price: 500, rate: 4.6, description: "Panqueques servidos con miel y frutas.", vegan_or_vegetarian: true, sugar_free: false, no_tacc: false, apetizer: false, for_sharing: true, user: supplier1, type: catering, category: bakery)
product41 = Product.create!(name: "Quesadillas de queso", price: 750, rate: 4.8, description: "Quesadillas rellenas de queso derretido.", vegan_or_vegetarian: true, sugar_free: true, no_tacc: false, apetizer: true, for_sharing: true, user: supplier2, type: merchandising, category: food_box)
product42 = Product.create!(name: "Alfajores de maicena", price: 600, rate: 4.7, description: "Alfajores rellenos de dulce de leche y cubiertos con coco.", vegan_or_vegetarian: false, sugar_free: false, no_tacc: false, apetizer: true, for_sharing: true, user: supplier1, type: eventos, category: bakery)
product43 = Product.create!(name: "Tarta de limón", price: 850, rate: 4.9, description: "Tarta de limón con merengue.", vegan_or_vegetarian: false, sugar_free: false, no_tacc: false, apetizer: true, for_sharing: true, user: supplier2, type: regalos, category: bakery)
product44 = Product.create!(name: "Café gourmet", price: 300, rate: 4.6, description: "Café recién molido de alta calidad.", vegan_or_vegetarian: true, sugar_free: true, no_tacc: true, apetizer: false, for_sharing: true, user: supplier1, type: catering, category: snacks)
product45 = Product.create!(name: "Macarons franceses", price: 1200, rate: 4.8, description: "Macarons delicados de diferentes sabores.", vegan_or_vegetarian: false, sugar_free: false, no_tacc: true, apetizer: true, for_sharing: true, user: supplier2, type: merchandising, category: bakery)
product46 = Product.create!(name: "Ensalada de quinoa", price: 750, rate: 4.7, description: "Ensalada nutritiva con quinoa y vegetales.", vegan_or_vegetarian: true, sugar_free: true, no_tacc: true, apetizer: false, for_sharing: true, user: supplier1, type: eventos, category: food_box)

# Personalizations
puts "Creating Personalizations..."
Personalization.create!([
  { name: "Pan de pita relleno mini", price: 25, product: product1 },
  { name: "Pan de pita relleno grande", price: 50, product: product1 },
  { name: "Agregar logo de tu empresa", price: 0, product: product1 },
  { name: "Agregar una tarjeta con un mensaje", price: 0, product: product1 },

  { name: "Agregar nueces", price: 10, product: product2 },
  { name: "Salsa extra", price: 5, product: product2 },
  { name: "Agregar un jugo natural", price: 15, product: product2 },
  { name: "Sin sal", price: 0, product: product2 },

  { name: "Croissant extra", price: 20, product: product3 },
  { name: "Yogurt saborizado", price: 10, product: product3 },
  { name: "Granola sin azúcar", price: 5, product: product3 },
  { name: "Agregar fruta fresca", price: 15, product: product3 },

  { name: "Agregar queso extra", price: 30, product: product4 },
  { name: "Agregar champiñones", price: 25, product: product4 },
  { name: "Masa sin gluten", price: 20, product: product4 },
  { name: "Agregar albahaca fresca", price: 10, product: product4 },

  { name: "Sin aderezo", price: 0, product: product5 },
  { name: "Pollo grillado", price: 50, product: product5 },
  { name: "Agregar huevo duro", price: 10, product: product5 },
  { name: "Queso parmesano adicional", price: 20, product: product5 },

  { name: "Sin pasas", price: 0, product: product6 },
  { name: "Agregar almendras", price: 10, product: product6 },
  { name: "Mix con chocolate", price: 15, product: product6 },
  { name: "Agregar castañas de cajú", price: 20, product: product6 },

  { name: "Bagel sin gluten", price: 25, product: product7 },
  { name: "Agregar salmón ahumado", price: 40, product: product7 },
  { name: "Agregar queso crema", price: 15, product: product7 },
  { name: "Agregar huevo poche", price: 20, product: product7 },

  { name: "Brownie sin nueces", price: 0, product: product8 },
  { name: "Agregar nueces pecanas", price: 15, product: product8 },
  { name: "Brownie vegano", price: 20, product: product8 },
  { name: "Agregar helado", price: 30, product: product8 },

  { name: "Fruta adicional", price: 20, product: product9 },
  { name: "Sin cítricos", price: 0, product: product9 },
  { name: "Agregar frutos rojos", price: 30, product: product9 },
  { name: "Agregar miel", price: 10, product: product9 },

  { name: "Agregar hummus", price: 15, product: product10 },
  { name: "Agregar guacamole", price: 20, product: product10 },
  { name: "Pan integral", price: 10, product: product10 },
  { name: "Agregar queso vegano", price: 30, product: product10 },

  { name: "Sin pasas", price: 0, product: product11 },
  { name: "Agregar nueces", price: 10, product: product11 },
  { name: "Galletas sin azúcar", price: 15, product: product11 },
  { name: "Agregar chispas de chocolate", price: 20, product: product11 },

  { name: "Agregar aceitunas", price: 10, product: product12 },
  { name: "Agregar huevo duro", price: 5, product: product12 },
  { name: "Empanadas sin gluten", price: 20, product: product12 },
  { name: "Agregar chimichurri", price: 15, product: product12 },

  { name: "Sin azúcar", price: 0, product: product13 },
  { name: "Agregar frutos secos", price: 20, product: product13 },
  { name: "Ensalada con yogurt", price: 15, product: product13 },
  { name: "Agregar miel", price: 10, product: product13 },

  { name: "Agregar queso", price: 30, product: product14 },
  { name: "Agregar espinacas", price: 20, product: product14 },
  { name: "Quiche sin gluten", price: 25, product: product14 },
  { name: "Agregar cebolla caramelizada", price: 15, product: product14 },

  { name: "Chips sin sal", price: 0, product: product15 },
  { name: "Agregar paprika", price: 5, product: product15 },
  { name: "Chips veganos", price: 10, product: product15 },
  { name: "Agregar salsa de yogurt", price: 15, product: product15 },

  { name: "Agregar cebolla", price: 10, product: product16 },
  { name: "Tortilla sin gluten", price: 20, product: product16 },
  { name: "Agregar chorizo", price: 25, product: product16 },
  { name: "Tortilla vegana", price: 15, product: product16 },

  { name: "Muffins sin gluten", price: 25, product: product17 },
  { name: "Agregar nueces", price: 10, product: product17 },
  { name: "Muffins sin azúcar", price: 15, product: product17 },
  { name: "Agregar arándanos", price: 20, product: product17 },

  { name: "Agregar jamón", price: 30, product: product18 },
  { name: "Agregar aceitunas", price: 10, product: product18 },
  { name: "Queso sin lactosa", price: 15, product: product18 },
  { name: "Agregar pimientos", price: 20, product: product18 },

  { name: "Sandwich sin gluten", price: 25, product: product19 },
  { name: "Agregar aguacate", price: 15, product: product19 },
  { name: "Sandwich vegano", price: 20, product: product19 },
  { name: "Agregar hummus", price: 10, product: product19 },

  { name: "Galletas sin gluten", price: 20, product: product20 },
  { name: "Agregar nueces", price: 10, product: product20 },
  { name: "Galletas sin azúcar", price: 15, product: product20 },
  { name: "Agregar chispas de chocolate", price: 20, product: product20 },

  { name: "Focaccia sin gluten", price: 25, product: product21 },
  { name: "Agregar tomates", price: 15, product: product21 },
  { name: "Focaccia vegana", price: 20, product: product21 },
  { name: "Agregar aceitunas", price: 10, product: product21 },

  { name: "Bocadillo sin gluten", price: 25, product: product22 },
  { name: "Agregar queso", price: 10, product: product22 },
  { name: "Bocadillo vegano", price: 20, product: product22 },
  { name: "Agregar pimientos", price: 15, product: product22 },

  { name: "Salchichas sin gluten", price: 20, product: product23 },
  { name: "Agregar mostaza", price: 10, product: product23 },
  { name: "Salchichas veganas", price: 15, product: product23 },
  { name: "Agregar ketchup", price: 5, product: product23 },

  { name: "Pasta sin gluten", price: 25, product: product24 },
  { name: "Agregar queso", price: 10, product: product24 },
  { name: "Pasta vegana", price: 20, product: product24 },
  { name: "Agregar aceitunas", price: 15, product: product24 },

  { name: "Croissant sin gluten", price: 25, product: product25 },
  { name: "Agregar mantequilla", price: 10, product: product25 },
  { name: "Croissant vegano", price: 20, product: product25 },
  { name: "Agregar mermelada", price: 15, product: product25 },

  { name: "Scone sin gluten", price: 20, product: product26 },
  { name: "Agregar queso", price: 10, product: product26 },
  { name: "Scone vegano", price: 15, product: product26 },
  { name: "Agregar cebolla", price: 5, product: product26 },

  { name: "Tabla sin gluten", price: 25, product: product27 },
  { name: "Agregar jamón", price: 10, product: product27 },
  { name: "Tabla vegana", price: 20, product: product27 },
  { name: "Agregar aceitunas", price: 15, product: product27 },

  { name: "Wrap sin gluten", price: 20, product: product28 },
  { name: "Agregar aguacate", price: 10, product: product28 },
  { name: "Wrap vegano", price: 15, product: product28 },
  { name: "Agregar hummus", price: 5, product: product28 },

  { name: "Bruschetta sin gluten", price: 15, product: product29 },
  { name: "Agregar mozzarella", price: 10, product: product29 },
  { name: "Bruschetta vegana", price: 20, product: product29 },
  { name: "Agregar albahaca", price: 5, product: product29 },

  { name: "Galletas sin gluten", price: 20, product: product30 },
  { name: "Agregar jengibre", price: 10, product: product30 },
  { name: "Galletas veganas", price: 15, product: product30 },
  { name: "Agregar canela", price: 5, product: product30 },

  { name: "Tarta sin gluten", price: 25, product: product31 },
  { name: "Agregar manzana", price: 10, product: product31 },
  { name: "Tarta vegana", price: 20, product: product31 },
  { name: "Agregar canela", price: 5, product: product31 },

  { name: "Sushi sin gluten", price: 30, product: product32 },
  { name: "Agregar salmón", price: 20, product: product32 },
  { name: "Sushi vegano", price: 15, product: product32 },
  { name: "Agregar aguacate", price: 10, product: product32 },

  { name: "Pastel sin gluten", price: 25, product: product33 },
  { name: "Agregar nueces", price: 10, product: product33 },
  { name: "Pastel vegano", price: 20, product: product33 },
  { name: "Agregar chispas de chocolate", price: 15, product: product33 },

  { name: "Fresas sin azúcar", price: 10, product: product34 },
  { name: "Agregar chocolate blanco", price: 15, product: product34 },
  { name: "Fresas veganas", price: 20, product: product34 },
  { name: "Agregar almendras", price: 10, product: product34 },

  { name: "Pan sin gluten", price: 20, product: product35 },
  { name: "Agregar ajo", price: 5, product: product35 },
  { name: "Pan vegano", price: 15, product: product35 },
  { name: "Agregar aceite de oliva", price: 10, product: product35 },

  { name: "Ensalada sin gluten", price: 15, product: product36 },
  { name: "Agregar queso feta", price: 10, product: product36 },
  { name: "Ensalada vegana", price: 20, product: product36 },
  { name: "Agregar aceitunas", price: 5, product: product36 },

  { name: "Trufas sin gluten", price: 25, product: product37 },
  { name: "Agregar chocolate blanco", price: 15, product: product37 },
  { name: "Trufas veganas", price: 20, product: product37 },
  { name: "Agregar nueces", price: 10, product: product37 },

  { name: "Rollos sin gluten", price: 25, product: product38 },
  { name: "Agregar canela", price: 10, product: product38 },
  { name: "Rollos veganos", price: 20, product: product38 },
  { name: "Agregar nueces", price: 5, product: product38 },

  { name: "Ceviche sin gluten", price: 30, product: product39 },
  { name: "Agregar aguacate", price: 20, product: product39 },
  { name: "Ceviche vegano", price: 15, product: product39 },
  { name: "Agregar cebolla morada", price: 10, product: product39 },

  { name: "Panqueques sin gluten", price: 20, product: product40 },
  { name: "Agregar miel", price: 10, product: product40 },
  { name: "Panqueques veganos", price: 15, product: product40 },
  { name: "Agregar frutas", price: 5, product: product40 },

  { name: "Quesadillas sin gluten", price: 20, product: product41 },
  { name: "Agregar queso", price: 10, product: product41 },
  { name: "Quesadillas veganas", price: 15, product: product41 },
  { name: "Agregar guacamole", price: 5, product: product41 },

  { name: "Alfajores sin gluten", price: 25, product: product42 },
  { name: "Agregar coco", price: 10, product: product42 },
  { name: "Alfajores veganos", price: 20, product: product42 },
  { name: "Agregar dulce de leche", price: 15, product: product42 },

  { name: "Tarta sin gluten", price: 25, product: product43 },
  { name: "Agregar merengue", price: 10, product: product43 },
  { name: "Tarta vegana", price: 20, product: product43 },
  { name: "Agregar ralladura de limón", price: 5, product: product43 },

  { name: "Café sin azúcar", price: 5, product: product44 },
  { name: "Agregar leche de almendra", price: 10, product: product44 },
  { name: "Café vegano", price: 15, product: product44 },
  { name: "Agregar chocolate", price: 5, product: product44 },

  { name: "Macarons sin gluten", price: 25, product: product45 },
  { name: "Agregar chocolate", price: 10, product: product45 },
  { name: "Macarons veganos", price: 20, product: product45 },
  { name: "Agregar frambuesas", price: 5, product: product45 },

  { name: "Ensalada sin gluten", price: 15, product: product46 },
  { name: "Agregar aguacate", price: 10, product: product46 },
  { name: "Ensalada vegana", price: 20, product: product46 },
  { name: "Agregar frutos secos", price: 5, product: product46 }
])
