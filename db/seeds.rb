# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html

Part.create(name: 'Battery - D', quantity: 30, price: 10.5, requested: false)
Part.create(name: 'Battery Case 4xAAA', quantity: 15, price: 200, requested: false)
Part.create(name: 'Battery - AAA', quantity: 25, price: 10.5, requested: true)
Part.create(name: 'Battery Case 4xAA', quantity: 2, price: 10.5, requested: false)
Part.create(name: 'Battery Clip 9V', quantity: 1, price: 11.5, requested: false)
Part.create(name: 'Battery - 9V', quantity: 7, price: 10.56, requested: true)
Part.create(name: 'Battery - AA', quantity: 220, price: 1920, requested: true)
Part.create(name: 'Phone Cable', quantity: 104, price: 1002, requested: false)