=begin
Greg Volpe
Dr. Ganchev
CS 355 - Programming Languages
Assignment 2 - Problem 8 class
=end
class Problem8
  #main function for problem 8
  def runProblem8
    puts '[1,2,3,4,5,6].to_set'
    [1,2,3,4,5,6].to_set #cast an array to set
    mySet = Set.new([1,2,3,4,5,6]) #create set using an array
    puts "mySet = #{mySet}"
    puts 'myset values: '
    mySet.each {|i| puts i}
    puts 'mySetDuplicats = Set.new([1,2,3,3,4])'
    mySetDuplicates = Set.new([1,2,3,3,4]) #test duplicate processing when casting array to set
    mySetDuplicates.each{|i| puts i}
    puts 'mySet.add(1)'
    mySet.add(1)#try to add a duplicate to a set
    puts 'mySet values:'
    mySet.each {|i| puts i}

    puts 'myArray values:'
    myArray = [1,2,1,2,1,2,1]
    myArray.each {|i| puts i}
    puts 'myArray.to_set'
    mySet2 = myArray.to_set#test how .to_set handles duplicate entries in an array
    mySet2.each {|i|puts i}
  end
end