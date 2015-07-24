# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


for i in 0..15
	Project.create(name: "Ruby", new_description: "Tomando el control de este lenguaje")
	Project.create(name: "Github", new_description: "A comitear se ha dicho")
	Project.create(name: "HTML", new_description: "Visualiza el contenido de la web")
	Project.create(name: "CSS", new_description: "Llenando de colores")
	Project.create(name: "Ruby on rails", new_description: "Tomando el control de este lenguaje")
	Project.create(name: "Ironhack", new_description: "Encantada con el curso")
	Project.create(name: "JavaScript", new_description: "Animando el cotarro")
end

total_projects = Project.count


150.times do
	year = rand(1)+2014
	month = rand(11)+1
	day = rand(27)+1
	rand_total_projects = rand(total_projects - 1) + 1
	Entry.create(project_id: rand_total_projects, hours: rand(24), minutes: rand(59), date: Date.new(year, month, day))
end

puts 'hola'