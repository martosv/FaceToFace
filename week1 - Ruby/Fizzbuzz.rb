require 'pry'

def FizzBuzz(a, j)
	resultado = ''

	for i in a[0] .. a[1]
		compr = false
		j.each do |key, value| 
			if is_divisible_of_n?(i,key)
				resultado = resultado + value
				compr = true
			end	
		end

		if compr == false
			puts i
		else
			puts resultado
		end

		resultado =''
	end
				
end

def is_divisible_of_n? i,n
	i % n == 0
end


FizzBuzz([1,30],{2 =>'Buzz', 3 =>'Fizz', 5 => 'Sizz'})

=begin

def fizzbuzz start, finish, rules
	(start..finish).each do |number|
		result = use_rule number, rules

		if !result.empty? #se puede usar tambien unless result.empty?
			puts result
		else 
			puts number
		end
	end
end

def use_rule number, rules
	result = ''
	rules.each do |key, value|
		if are_divisible? number, key
			result << value 

		# la expresion anterior es igual a:
		# result << value if are_divisible? number, key

		end
	end
	result
end

def are_divisible? number_a,number_b
	number_a % number_b == 0
end

FizzBuzz(1,30,{2 =>'Buzz', 3 =>'Fizz', 5 => 'Sizz'})


=end



=begin 
def my_function (x,y)
	result = ''

    for a in x[0] .. x[1]
    	compr = false
    	for i in 0 .. y.length-1
        	if remainder_n(a,y[i][0])
        		result += y[i][1]
				compr = true
			end	
		end

		if compr == false
			puts a
		else
			puts result
		end
		result = ''
	end

end

def remainder_n k,n
    k % n == 0
end

my_function([1,15], [[3,"Fizz"],[5, "Buzz"], [7, "Woof"]])
=end


=begin
x = [[3,"Fizz"],[5, "Buzz"], [7, "Woof"]]
puts x[0][0] 
puts x[0][1]

puts x[1][0] 
puts x[1][1]

puts x[2][0] 
puts x[2][1]

puts x.length
=end
