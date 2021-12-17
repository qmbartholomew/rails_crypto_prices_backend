# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.create(username: 'qmbartholomew', password: 'testpw', age: 23)
User.create(username: 'qmbartholomew2', password: 'testpw', age: 23)
Coin.create(ticker: 'imx', user_id: 1)