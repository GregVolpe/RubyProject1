class Problem2
  hash
  def parseFile(name)
    theFile = File.open(name, "r")
    hash = Hash.new
    i=0
    while !theFile.eof?
      line = theFile.readline
      hash[i] = line
      i=i+1
    end
  end
  def readHash
    hash.keys.sort.each do |key|
      puts "#{key}-----"
      hash[key].each { |val| puts val }
    end
  end

  def createOutput
    fname = "output.txt"
    theFile = File.open(fname, "w")
    theFile.puts("File Created")
    theFile.close
  end
end