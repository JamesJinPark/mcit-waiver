# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Course.create([{name: 'CIT591'}, {name: 'CIT592'}, {name: 'CIT593'}])

Admin.create([{email: 'admin@seas.upenn.edu', password: '1234567890'}])

User.create([{email: 'james@seas.upenn.edu', password: '1234567890'}])