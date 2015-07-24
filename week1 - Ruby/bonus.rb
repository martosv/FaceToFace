require 'pry'

def ArrayAddition(arr)
	array = ArrayBiggerNumDelete(arr)
	sum = 0
	there_is_a_combination_sum = false

	(1 .. array.length).each do |i|
		sum = array.combination(i).to_a.each do |ar|
			sum = ar.reduce{|m, n| m + n}
			if sum == BiggerNum(arr)
				there_is_a_combination_sum = true
			end
		end
	end 
	
	return puts there_is_a_combination_sum
end

def BiggerNum(arr)
	array = arr.sort
  	bigger_num = array.last
end

def ArrayBiggerNumDelete(arr)
  	array = arr.sort
  	bigger_num = array.last
  	array.delete(bigger_num)
  	array
end

ArrayAddition([5,2,1,1])
ArrayAddition([3,5,-1,8,12])
ArrayAddition([5,7,16,1,2])
