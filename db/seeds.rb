# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# heroku run rails db:seed

User.destroy_all

User.create(username: 'BaIance', fname: 'Michael', lname: 'Slocum', rank: 'Diamond 2', email: 'asd1@gmail.com', password: 'asd')
User.create(username: 'Husscat', fname: 'Megan', lname: 'Barnes', rank: 'Gold 1', email: 'asd2@gmail.com', password: 'asd')
User.create(username: 'WahDonka', fname: 'Brad', lname: 'Ez', rank: 'Diamond 2', email: 'asd3@gmail.com', password: 'asd')
User.create(username: 'New Begin', fname: 'Greg', lname: 'Gross', rank: 'Diamond 2', email: 'asd4@gmail.com', password: 'asd')
User.create(username: 'Begin New', fname: 'Ian', lname: 'Kingsbury', rank: 'Diamond 2', email: 'asd4@gmail.com', password: 'asd')
User.create(username: 'Icehazerd', fname: 'Randy', lname: 'Slocum', rank: 'Diamond 2', email: 'asd4@gmail.com', password: 'asd')
User.create(username: 'Hushcat', fname: 'Mike', lname: 'Slocum', rank: 'Diamond 2', email: 'asd4@gmail', password: 'asd')

