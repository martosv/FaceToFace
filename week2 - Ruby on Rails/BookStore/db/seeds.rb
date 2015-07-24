# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

b1=Book.create( name: 'Libro 1', description: 'Rollo 1', price: 25.5 )
b2=Book.create( name: 'Libro 2', description: 'Rollo 2', price: 15.5 )
b3=Book.create( name: 'Libro 3', description: 'Rollo 3', price: 30.0 )
b4=Book.create( name: 'Libro 4', description: 'Rollo 4', price: 20.0 )
b5=Book.create( name: 'Libro 5', description: 'Rollo 5', price: 15.0 )

b1.ratings.create( user: 'Virginia',score: 2 )
b2.ratings.create( user: 'Alberto', score: 4 )
b5.ratings.create( user: 'Fran', score: 3 )
b2.ratings.create( user: 'Alejandro', score: 2 )
b4.ratings.create( user: 'Juan Carlos', score: 1 )
b3.ratings.create( user: 'Fran', score: 2 )
b2.ratings.create( user: 'Alejo', score: 3 )
b5.ratings.create( user: 'María', score: 5 )