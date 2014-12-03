=begin
Greg Volpe
Dr. Ganchev
CS 355 - Programming Languages
Assignment 2 - Problem 3
=end

class Problem3

  #method to parse the file, parameter of filename
  def parseFile(mFile)
    hash = {}
    f=File.open(mFile,'r')
    #loop to split each line by the '+' symbol
    f.each_line do |line|
      line = line.strip.split '+'
      key = line.first.to_s
      value = line.last.to_s
      #filters lines with no number
      if (key ==value)
        hash[key] = 0
      #filters lines with no number
      elsif( hash[key] == nil)
       hash[key] = value
      else
        #append next sales order number to the hash
        temp = hash[key].to_s
        temp << ", "
        temp << value
        hash[key] = temp
        temp = nil
      end
      key= nil
      value = nil
    end
    #prints the original data to the screen
    puts "====Original Data===="
    f.rewind
    f.each do |line|
      puts line
    end
    #prints the new parsed data to the screen
    puts "====BEGIN PARSED DATA===="
    hash.each_pair do |m,n|
      hash.delete_if{ |k, val| val == 0}
      puts"#{m} : #{n}"
    end
  end

end