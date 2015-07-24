def DashInsertII(num)
	num_array = []
	num_array = num.to_s.chars.to_a
	i = 0
	length_num = num.to_s.length
	
	while i < length_num - 1
		if num_array[i].to_i % 2 == 0 && num_array[i+1].to_i % 2 == 0 
			num_array.insert(i+1, "*")
			i += 1
			length_num += 1
		elsif (num_array[i].to_i + 1) % 2 == 0 && (num_array[i+1].to_i + 1) % 2 == 0 
			num_array.insert(i+1, "-")
			i += 1
			length_num += 1
		else
			num_array
		end
		i += 1
	end 
	
	result = num_array.join

  
  #return num 
	print result
end

DashInsertII(53664730466);

=begin
	
def DashInsertII(num)

	array_num = num.split("")
	cute_string = ""
	cute_string.concat(array_num.first)

	final_iteration = (array_num.size) -2

	for i in 0..final_iteration
	   current_element = array_num[i]
	   next_element = array_num[i+1]

	   if even_numbers? current_element, next_element
	   	cute_string.concat "*"
	   	cute_string.concat next_element	
	   end

	   if odd_numbers? current_element, next_element
	   	cute_string.concat "-"
	   	cute_string.concat next_element
	   end

	   if even_and_odd_numbers? current_element, next_element
	   	cute_string.concat next_element
	   end
	end

  cute_string 

end

def even_and_odd_numbers? current_element, next_element
	current_element.to_i % 2 != next_element.to_i % 2 
end

def even_numbers? current_element, next_element
	current_element.to_i.even? && next_element.to_i.even?
end

def odd_numbers? current_element, next_element
	current_element.to_i.odd? && next_element.to_i.odd?
end

puts DashInsertII("4546793") == "454*67-9-3"
puts DashInsertII("99946") == "9-9-94*6"

=end