# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Initial admin user
User.create(name: "Administrator", email: "admin@admin.com", admin: true, password: "Passw0rd", password_confirmation: "Passw0rd")

# Initial buildings/rooms list
b1 = Building.create(name: "Martinez Módulo A", address: "Hipólito Yrigoyen 2150", coordinates: "-34.500907, -58.525853")
b1.rooms.create(name: "Amanecer", code: "A101", floor: 1, max_capacity: 4, active: true)
b1.rooms.create(name: "Bermejo", code: "A102", floor: 1, max_capacity: 6, active: true)
b1.rooms.create(name: "Buenos Aires", code: "A103", floor: 1, max_capacity: 8, active: true)
b1.rooms.create(name: "Embarcadero", code: "A104", floor: 1, max_capacity: 12, active: true)
b1.rooms.create(name: "Envisioning 1", code: "A105", floor: 1, max_capacity: 4, active: true)
b1.rooms.create(name: "Envisioning 2", code: "A106", floor: 1, max_capacity: 4, active: true)
b1.rooms.create(name: "Humboldt", code: "A107", floor: 1, max_capacity: 8, active: true)
b1.rooms.create(name: "Plaza de Mayo", code: "A108", floor: 1, max_capacity: 8, active: true)
b1.rooms.create(name: "Pumahuasi", code: "A109", floor: 1, max_capacity: 12, active: true)
b1.rooms.create(name: "Reflejos", code: "A110", floor: 1, max_capacity: 6, active: true)
b1.rooms.create(name: "Republica", code: "A111", floor: 1, max_capacity: 6, active: true)
b1.rooms.create(name: "Maymara", code: "A112", floor: 1, max_capacity: 4, active: true)
b1.rooms.create(name: "Yacht Club", code: "A113", floor: 1, max_capacity: 4, active: true)
b1.rooms.create(name: "Educación", code: "A114", floor: 1, max_capacity: 40, active: true)
b1.rooms.create(name: "Riachuelo", code: "A201", floor: 2, max_capacity: 6, active: true)
b1.rooms.create(name: "Tarija", code: "A202", floor: 2, max_capacity: 8, active: true)
b1.rooms.create(name: "Darsena Norte", code: "A203", floor: 2, max_capacity: 12, active: true)
b1.rooms.create(name: "Puerto Madero", code: "A204", floor: 2, max_capacity: 12, active: true)
b1.rooms.create(name: "Picasso", code: "A205", floor: 2, max_capacity: 10, active: true)
b1.rooms.create(name: "Van Gogh", code: "A206", floor: 2, max_capacity: 4, active: true)
b1.rooms.create(name: "Belgrano", code: "A207", floor: 2, max_capacity: 6, active: true)
b1.rooms.create(name: "Av Corrientes", code: "A208", floor: 2, max_capacity: 4, active: true)
b1.rooms.create(name: "Incahuasi", code: "A209", floor: 2, max_capacity: 6, active: true)
b1.rooms.create(name: "El Faro", code: "A210", floor: 2, max_capacity: 4, active: true)
b1.rooms.create(name: "Monet", code: "A211", floor: 2, max_capacity: 6, active: true)
b1.rooms.create(name: "Pilcomayo", code: "A212", floor: 2, max_capacity: 8, active: true)
b1.rooms.create(name: "Retiro", code: "A213", floor: 2, max_capacity: 10, active: true)
b1.rooms.create(name: "Puente de la Mujer", code: "A214", floor: 2, max_capacity: 12, active: true)
b1.rooms.create(name: "Catalinas", code: "A215", floor: 2, max_capacity: 4, active: true)
b1.rooms.create(name: "La Boca", code: "A216", floor: 2, max_capacity: 6, active: true)
b1.rooms.create(name: "Tilcara", code: "A217", floor: 2, max_capacity: 8, active: true)

Accessory.create(name: "Projector")
Accessory.create(name: "Board")
Accessory.create(name: "Video conference")
