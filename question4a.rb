=begin

	Carlos Vicuna
	CS355

	Use pattern matching to solve the following problems:
	Write a method e_names:
	Parameter: An array of strings 
	Return: The number of strings that end in either “ie” or “y”
	
=end

def e_names(arr)
	ie_finds = 0
	y_finds = 0

	for i in arr
		if i.end_with? 'ie'
			ie_finds = ie_finds + 1
		end
		if i.end_with? 'y'
			y_finds = y_finds + 1
		end
	end
	
	if (ie_finds > 0)
		puts "We found #{ie_finds} instances of words than ended with 'ie'"
	end

	if (y_finds > 0)
		puts "We found #{y_finds} instances of words than ended with 'y'"
	end

	if (ie_finds == 0) && (y_finds == 0)
		puts "No match found for strings ending in 'ie' or 'y'."
	end
end

arr = ["die", "pen", "silly", "small", "cookie", "sunny", "faith", "voice", "plenty", "none"]

puts "The content of array are:"
puts arr
puts "================================================= "

e_names(arr)