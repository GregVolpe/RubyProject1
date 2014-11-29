class Problem4
  #find the number of strings that end in either ie or y
  def e_names(strings)
    ie=0
    y=0

    strings.each do |theString|
      if(/[a-z0-9]*ie$/.match(theString))
        ie= ie+1

      end


      if(/[a-z0-9]*y$/.match(theString))
        y= y+1

      end

    end
    puts "number of strings ending in ie: "  << ie.to_s
    puts "number of strings ending in y: " <<y.to_s


  end
  def parseFile(mFile)
    theArray = []
    theOutput = []
    theFile = File.open(mFile,'r')
    theFile.each_line{|line| theArray.push line}
    theFile.close
    puts "=====THE ORIGINAL CONTENT====="
    puts theArray

    theArray.each do |elem|
      elem.gsub!(/Darcy/,"Darcie")
      elem.gsub!(/2014/,"2015")
      elem.gsub!(/\s+/," ")
      if(!(elem =~/^~/))
        theOutput.push(elem)
      end
    end
    puts "=====THE PARSED CONTENT====="
    puts theOutput
    writeFile(theOutput)
  end
  def writeFile(theArray)
    theOutputFile = File.open('problem4output.txt','w')
    theArray.each do |line|
      theOutputFile.write(line)
      theOutputFile.write("\n")
    end
  end

end
