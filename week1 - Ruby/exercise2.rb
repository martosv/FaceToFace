def NumberEncoding(str)
	alphabet = 'abcdefghijklmnopqrstuvwxyz'
	# alphabet = ('a'..'z').to_a
	array_alphabet = alphabet.split('')
	array_str = str.split('')

	for i in 0 .. array_alphabet.length - 1
		for j in 0 .. array_str.length - 1
			if array_alphabet[i] == array_str[j]
				array_str[j] = i + 1
			end
		end
	end
=begin
	
	array_alphabet.each do |letra|
		letra == false
	end
	
	array_alphabet.index(letra)

=end

	result = array_str.join

	print result

end

#NumberEncoding('hello 45');
NumberEncoding('jaj-a');