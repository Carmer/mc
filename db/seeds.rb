# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guitar.create!(serial: "xxxTESTxxx", model: "Airiar-Test", body_wood: "Mohogony", neck_wood: "Maple", fingerboard: "Ebony") if Rails.env.development?
Wood.create!(species: "Maple", origin: "Auburn Indiana", grade: "Master", density: "1", speed_of_sound: "1", modulus_of_elasticity: "1", radiation_coefficient: "1") if Rails.env.development?

User.create!(role: "Luthier", first_name: "Tom", last_name: "Nania", phone: "7206129488", admin: true, email: "tom@midcoastguitars.com", password: "password", password_confirmation: "password")
User.create!(role: "Luthier", first_name: "Becca", last_name: "Nania", phone: "", admin: true, email: "becca@midcoastguitars.com", password: "password", password_confirmation: "password")
User.create!(role: "Luthier", first_name: "Andrew", last_name: "Carmer", phone: "", admin: true, email: "andrew@midcoastguitars.com", password: "password", password_confirmation: "password")
User.create!(role: "Luthier", first_name: "Sam", last_name: "Guidry", phone: "", admin: true, email: "sam@midcoastguitars.com", password: "password", password_confirmation: "password")
