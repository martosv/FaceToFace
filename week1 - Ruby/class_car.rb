class Car 
	attr_accessor :noise
	# @@counter_cars = 0 esto se quita si su valor lo almacenar en un fichero

	def initialize noise
		@noise = noise
		save_in_file
	end

	def save_in_file
		total_cars = IO.read('Cars.txt').to_i
		total_cars = total_cars + 1
		IO.write('Cars.txt', total_cars)
	end

	def show_total_cars
	# est metodo se usa para mostrar el numero en pantalla y te devuelve nil, 
	# no se puede reutilizar en otros metodos
		puts IO.read('Cars.txt')# para mostrar la lectura del archivo
	end

	def self.show_total_cars # metodo de clase
		puts IO.read('Cars.txt')
	end
	
	def get_total_cars 
	# este metodo se usa para obtener el valor de la variable en cualquier otro metodo
	# no se muestra por consola
		IO.read('Cars.txt')
	end

	def make_noise
		puts @noise
	end
end

class Racing_car < Car
	def initialize
		@noise = 'BROOOM'
	end

	def make_noise
		puts @noise
	end
end

sounds = ['Broom', 'Meek','Nyam']

#sound_total = sounds.reduce {|sum, sound| sum + sound }
#print sound_total


cars_array = sounds.map do |sound| 
	Car.new(sound)
end

total_sound = cars_array.reduce('') do |init,car|
	init + car.noise
end


print total_sound

#Car.show_total_cars

#car_1 = Car.new('Brom')
#car_1.make_noise

#car_2 = Car.new('Brrrroooom')
#car_2.make_noise

#Car.show_total_cars

#car_3 = Car.new('Broooom')
#car_3.make_noise

#car_1.get_total_cars

#Car.show_total_cars

#ferrari = Racing_car.new
#ferrari.make_noise

=begin
array_cars = []
array_cars.push(car_1, car_2, car_3)
array_cars.each { |car| car.make_noise }
=end

# o directamente se puede emplear:
# bmw = Car.new.make_noise