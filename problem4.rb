=begin
Greg Volpe
Dr. Ganchev
CS 355 - Programming Languages
Assignment 2 - Problem 4
=end
class Problem4
  #find the number of strings that end in either ie or y
  def e_names(strings)
    ie=0
    y=0
    #find matches for ie
    strings.each do |theString|
      if(/[a-z0-9]*ie$/.match(theString))
        ie= ie+1

      end

      #find matches for ending in y
      if(/[a-z0-9]*y$/.match(theString))
        y= y+1

      end

    end
    #print results
    puts "number of strings ending in ie: "  << ie.to_s
    puts "number of strings ending in y: " <<y.to_s

  end
  #parse file and change the content based on input
  def parseFile(mFile)
    theArray = []
    theOutput = []
    theFile = File.open(mFile,'r')
    theFile.each_line{|line| theArray.push line}
    theFile.close
    #prints the original file to screen from the array
    puts "=====THE ORIGINAL CONTENT====="
    puts theArray

    theArray.each do |elem|
      #substitute Darcie for Darcy
      elem.gsub!(/Darcy/,"Darcie")
      #substitute 2015 for 2014
      elem.gsub!(/2014/,"2015")
      #substitute single space for more than one space
      elem.gsub!(/\s+/," ")
      #remove lines starting with ~ and pushes remaining lines to the output array
      if(!(elem =~/^~/))
        theOutput.push(elem)
      end
    end
    #prints the parsed content to the screen
    puts "=====THE PARSED CONTENT====="
    puts theOutput
    writeFile(theOutput)
  end
  #Writes the parsed content to a file
  def writeFile(theArray)
    theOutputFile = File.open('problem4output.txt','w')
    theArray.each do |line|
      theOutputFile.write(line)
      theOutputFile.write("\n")
    end
  end

end
