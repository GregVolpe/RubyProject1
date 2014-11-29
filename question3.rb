=begin

	Carlos Vicuna
	CS355

	1.	Write a program with the following specification:
	Input: A file in which each line contains a string of the form name+sales_number,
	       where in some cases the sales number will be absent (but not the plus sign).
	Output: A list of names and sales numbers that remain after the following processing:
	a.	Names with sales numbers are added to a hash when they are first found, together
	    with their sales numbers.
	b.	Names with absent sales numbers are deleted from the hash, if they are already
	    there.
	c.	When a name appears that is already in the hash, the new sales number is added
	    to the old sales number (the one already in the hash)

=end

fileName = "problem3.txt"
hashGenerator = {}
hashGeneratorTemp = {}

f = File.open(fileName,'r')

f.each_line do |line|
	line = line.strip.split '+'
	k = line.first.to_s
	val = line.last.to_i
	if (hashGenerator.key?(val) == 0)
		hashGenerator[k] = nil
		hashGenerator[k].delete
	else
		temp = hashGenerator[k].to_i
		hashGenerator[k] = (temp + val)
		temp = nil
	end
end
	
# print out the contents of each line without formatting
puts "- - - - - - - - - -"
puts "The original data\n"
puts "- - - - - - - - - -"
f.rewind
f.each do |line|  
    puts line
end

# print data that was just converted to hash table
puts " - - - - - - - - -"
puts "The data put into hash table\n"
puts "- - - - - - - - - -"
hashGenerator.each_pair do |x,y|
	hashGenerator.delete_if { |k, val| val == 0 }
	puts "#{x} => #{y}"
end
