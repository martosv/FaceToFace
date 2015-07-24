def GetPositionLookSaySequence(n,num)
	@result = LookSaySequence(num)
	(n-1).times do 
		@result = LookSaySequence(@result)
	end
	@result
end

def LookSaySequence(num)
	num_array = num.to_s.split('')
	read_number_array = []
	counter = 1
	length = num_array.length-1
	add_to_read_number_array = false

	
	for index in 0..length 
		if num_array[index] == num_array[index+1] 
			counter = counter + 1
			add_to_read_number_array = false
		else 
			counter = counter
			add_to_read_number_array = true
		end

		if add_to_read_number_array
			read_number_array << counter
			read_number_array << num_array[index]
			counter = 1
		end
	end

	@result = read_number_array.join.to_i

end

#LookSaySequence(STDIN.gets)  

puts GetPositionLookSaySequence(4, 24)

puts LookSaySequence 1211 
puts LookSaySequence 2466 
