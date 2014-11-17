class Problem2
  def parseFile(name)
    theFile = File.open(name, "r")
    i=1
    while !theFile.eof?
      line = theFile.readline
      puts i
      i=i+1
      puts line
    end

  end

  def createOutput
    fname = "output.txt"
    theFile = File.open(fname, "w")
    theFile.puts("File Created")
    theFile.close
  end
end