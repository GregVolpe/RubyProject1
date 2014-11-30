class Problem8

  def runProblem8
    puts '[1,2,3,4,5,6].to_set'
    [1,2,3,4,5,6].to_set
    mySet = Set.new([1,2,3,4,5,6])
    puts "mySet = #{mySet}"
    puts 'myset values: '
    mySet.each {|i| puts i}
    puts 'mySetDuplicats = Set.new([1,2,3,3,4])'
    mySetDuplicates = Set.new([1,2,3,3,4])
    mySetDuplicates.each{|i| puts i}
    puts 'mySet.add(1)'
    mySet.add(1)
    puts 'mySet values:'
    mySet.each {|i| puts i}

    puts 'myArray values:'
    myArray = [1,2,1,2,1,2,1]
    myArray.each {|i| puts i}
    puts 'myArray.to_set'
    mySet2 = myArray.to_set
    mySet2.each {|i|puts i}
  end
end