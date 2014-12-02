class Problem5

  def runProblem5
    localvar=10
    puts "runProblem5 x value is #{localvar}"
    puts "rubProblem5 b value is #{@b}"
    sub1
    @b = 'runProblem5 b'
    localvar='runProblem5 localvar'
    sub2
    puts '====Testing blocks===='
    call_block {puts 'hello world!'}
    call_block2 {|word,num| puts "Word is #{word}, Num is #{num}"}
    call_block_variable
  end

  def sub1
    localvar = 'sub1 localvar'
    @b = 'sub1 b'
    puts "Sub1 x value is #{localvar}"
    puts "sub1 b value is #{@b}"
    sub2
  end

  def sub2
    puts "sub2 b value is #{@b}"
  end

  def call_block
    puts 'Starting method'
    yield
    yield
    puts 'end of method'
  end
  def call_block2
    yield('Hello', 100)
  end
  def call_block_variable
    puts '====BLOCK PARAMETER===='
    x = 10
    5.times do |x|
      puts "x inside the block: #{x}"
    end
    puts "x outside the block: #{x}"
    puts '====NOT BLOCK PARAMETER===='
    x = 10
    5.times do |y|
      x = y
      puts "x inside the block: #{x}"
    end

    puts "x outside the block: #{x}"
  end
end