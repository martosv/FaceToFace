def PalindromeTwo(str)
	string_letter = StringOnlyLetters(str)
	string_letter_right = string_letter
	string_letter_left = string_letter.reverse

	if string_letter_right == string_letter_left
		print true
	else 
		print false
	end
end



def StringOnlyLetters(string)
	string_split = string.downcase
	array_string = string_split.split('')
	
	alphabet = 'abcdefghijklmnopqrstuvwxyz'
	array_alphabet = alphabet.split('')
	
	new_array = []

	for i in 0 .. array_string.length-1
		for j in 0 ..  array_alphabet.length
			if  array_string[i] == array_alphabet[j]
				new_array.push(array_string[i])
			end
		end
	end

	new_array.join
end


PalindromeTwo("Noel - sees Leon")

# se simplifica mucho usando la funcion gsub

