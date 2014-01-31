# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html

Part.create(name: 'Battery - D')
Part.create(name: 'Battery Case 4xAAA', quantity: 50)
Part.create(name: 'Battery - AAA', quantity: 5)
Part.create(name: 'Battery Case 4xAA', quantity: 5)
Part.create(name: 'Battery Clip 9V', quantity: 5)
Part.create(name: 'Battery - 9V', quantity: 5)
Part.create(name: 'Battery - AA', quantity: 5)
Part.create(name: 'Phone Cable', quantity: 5)