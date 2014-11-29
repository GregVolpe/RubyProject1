=begin

	Carlos Vicuna
	CS355

	Write a program with the following specification:
	Input: a file containing text
	Output: a file produced from the input file in the following way:
		- All multiple spaces are reduced to single spaces
		- All occurrences of Darcy are replaced with Darcie
		- All lines that begin with ~ are deleted.
		- All occurrences of 2014 are replaced with 2015
	
=end

arr = []
arr2 = []
f = File.open("question4b.txt") or die "Unable to open file..."
f.each_line {|line| arr.push line}

puts "=============================================="
puts "The original contents of file in an array:"
puts "=============================================="

puts arr

f.rewind

f.each_line do |line|
	line.gsub!("Darcy", "Darcie")
	line.gsub!("2014", "2015")
	line.gsub!(/\s+/, " ")
	if(!(line =~ /~(.*)/))
		if !(/\S/ !~ line)
				arr2.push line
		end
	end
end

puts "\n============================================"
puts "The new contents after revisions are made:"
puts "=============================================="

# this is printing out the new array with the modifications
puts arr2

# outputting the file
output = File.open("question4bOutput.txt","w")
arr2.each {|line| output.write(line.gsub("\n", ''))}