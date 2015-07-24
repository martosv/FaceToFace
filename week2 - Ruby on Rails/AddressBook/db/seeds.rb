# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Contact.create(name: 'Virginia', address: 'Córdoba Street 7')
Contact.create(name: 'Alberto', address: 'Adolfo Street 9')
Contact.create(name: 'Fran', address: 'Nuñez de Balboa Street 120')
Contact.create(name: 'Javier', address: 'Federico Street 9')
Contact.create(name: 'Alejo', address: 'Poeta Street 9')
Contact.create(name: 'Angel', address: 'Rodrigo Street 9')
Contact.create(name: 'Raul', address: 'Machado Street 9')
Contact.create(name: 'Quino', address: 'China Street 9')

PhoneNumber.create(contact_id: 1, phone_number: "+34 672709793")
PhoneNumber.create(contact_id: 2, phone_number: "+34 627842793")
PhoneNumber.create(contact_id: 3, phone_number: "+34 673342993")
PhoneNumber.create(contact_id: 4, phone_number: "+34 627273453")
PhoneNumber.create(contact_id: 5, phone_number: "+34 686793776")
PhoneNumber.create(contact_id: 6, phone_number: "+34 672395723")
PhoneNumber.create(contact_id: 6, phone_number: "+34 985784793")
PhoneNumber.create(contact_id: 7, phone_number: "+34 624753993")
PhoneNumber.create(contact_id: 8, phone_number: "+34 620489793")

Email.create(contact_id: 1, email: 'virginia@gmail.com')
Email.create(contact_id: 1, email: 'virgi17@hotmail.com')
Email.create(contact_id: 2, email: 'alberto@gmail.com')
Email.create(contact_id: 3, email: 'fran@gmail.com')
Email.create(contact_id: 4, email: 'javier@gmail.com')
Email.create(contact_id: 5, email: 'alejo@gmail.com')
Email.create(contact_id: 6, email: 'angel@gmail.com')
Email.create(contact_id: 7, email: 'raul@gmail.com')
Email.create(contact_id: 8, email: 'quino@gmail.com')