class Problem5

  def runProblem5
    x=10
    puts "runProblem5 x value is #{x}"
    sub1
    @b = 'runProblem5 b'
    x='runProblem5 x'
    sub2
  end

  def sub1
    x = 'sub1 x'
    puts "Sub1 x value is #{x}"
    sub2
  end

  def sub2
    x = 'sub1 x'
    puts "Sub2 x value is #{x}"
  end
end