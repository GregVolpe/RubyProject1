#GREG VOLPE
#DR. GANCHHEV
#ASSIGNMENT 2 CS 355
#PROBLEM 3

class Problem3

  def parseFile(mFile)
    hash = {}
    f=File.open(mFile,'r')

    f.each_line do |line|
      line = line.strip.split '+'
      key = line.first.to_s
      value = line.last.to_s
      if (key ==value)
        hash[key] = 0
      elsif( hash[key] == nil)
       hash[key] = value
      else
        temp = hash[key].to_s
        temp << ", "
        temp << value
        hash[key] = temp
        temp = nil
      end
      key= nil
      value = nil
    end
    puts "====Original Data===="
    f.rewind
    f.each do |line|
      puts line
    end
    puts "====BEGIN PARSED DATA===="
    hash.each_pair do |m,n|
      hash.delete_if{ |k, val| val == 0}
      puts"#{m} : #{n}"
    end
  end

end