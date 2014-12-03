=begin
Greg Volpe
Dr. Ganchev
CS 355 - Programming Languages
Assignment 2 - Main Program
=end

load 'problem3.rb'
load 'problem4.rb'
load 'problem5.rb'
load 'problem7.rb'
load 'problem8.rb'
load 'problem9.rb'
load 'extra_credit.rb'
require 'set'
$MAIN_VAR = 20 # FOR PROBLEM 5 MAIN GLOBAL VAR
puts 'Pick a problem 3,4,5,7,8,9,10 (10 for EC) OR type exit to exit'
input = gets.chomp

while input!='exit'
  puts input
  if(input.to_i ==3)
    puts input
    puts '=====RUNNING PROBLEM 3====='
    prob3 = Problem3.new
    prob3.parseFile("problem3.txt")
    puts '=====END PROBLEM 3====='
  end
  if(input.to_i ==4)
    puts '=====RUNNING PROBLEM 4====='
      prob4 = Problem4.new
      array = ["ie","someie", "somethingie","nope", "yupyup","123ie123", "Sunday", "Monday", "Tuesday", "Wednesday", "Tursday", "Friday", "Saturday", "Mondaye", "Tuesday9"]
      prob4.e_names(array)
      prob4.parseFile("problem4b.txt")
    puts '=====END PROBLEM 4====='
  end
  if (input.to_i ==5)
    puts '=====RUNNING PROBLEM 5====='
      prob5 = Problem5.new
      prob5.runProblem5
=begin
      prob5 = Problem5Old.new
      prob5.simpleMath
      prob5.accessClassVar2
      prob5.increaseClassVar
      puts "Global far from problem5_old.rb class: " << $GLOBAL_VAR.to_s
      prob5.increaseMainVar
      puts '5.times {prob5.increaseInstanceVar}
      prob5.getInstanceVar'
      5.times {prob5.increaseInstanceVar}
      prob5.getInstanceVar
      puts "===SECOND PROBLEM 5 INSTACNE==="
      prob5_2 = Problem5Old.news
      prob5_2.simpleMath
      puts 'prob5_2.getInstanceVar'
      prob5_2.getInstanceVar
      puts 'prob5_2.increaseGlobalVar'
      10.times {prob5_2.increaseGlobalVar}
      puts 'prob5_2.getGlobalVar'
      prob5_2.getGlobalVar
      puts 'prob5.getGlobalVar'
      prob5.getGlobalVar
      puts 'prob5_2.compoundStatement'
      prob5_2.compoundStatement
      prob5.sub1
=end
      puts '=====END PROBLEM 5====='
  end

  if (input.to_i ==7)
    class A
      def fun1
        puts 'Fun 1!'
      end
      def fun2
        puts 'Fun 2!'
      end
    end
    a = A.new
    a.fun1
    a.fun2
    class A
      def fun3
        puts 'Fun 3!'
        @something = 'Write something'
      end
      def printSomething
        puts @something
      end
    end
    a.fun3
    a.printSomething
    prob7 = Problem7.new
    prob7.printSomething
    class Problem7
      def printSomethingElse(something)
        puts something
      end
    end
    prob7.printSomethingElse("Don't say hello world again!")
    puts '=====END PROBLEM 7====='
    puts 'YOU MUST RESTART THE APPLICATION TO RUN 7 AGAIN'
    @restart = true
  elsif(input.to_i==7)
    puts 'You must restart to run problem 7 again'
  end
  if(input.to_i ==8)
    puts '=====RUNNING PROBLEM 8====='
    prob8 = Problem8.new
    prob8.runProblem8
    puts '=====END PROBLEM 8====='
  end
  if(input.to_i ==9)
    puts '=====RUNNING PROBLEM 9====='
    prob9 = Problem9.new
    prob9.doModularMath
    prob9.doSymbolMath
    puts '=====END PROBLEM 9====='
  end
  if (input.to_i ==10)
    puts '=====RUNNING EXTRA CREDIT====='
    ec = ExtraCredit.new
    begin
      ec.fooPrivate("myValue")
    rescue Exception =>e
      puts "Exception: #{e}"
    end
    ec.fooPublic("Something")
    ec.callPrivateMember("something Private")
    ec.instance_eval{fooPrivate("Something Else")}
    puts "ExtraCredit.class_variable_get(:@@publicClassVar): #{ExtraCredit.class_variable_get(:@@publicClassVar)}"
    puts "ExtraCredit.class_variable_get(:@@privateClassVar): #{ExtraCredit.class_variable_get(:@@privateClassVar)}"
    puts '=====END EXTRA CREDIT====='
  end
  puts 'Pick 1 - 10 (10 for EC), exit to exit'
input = gets.chomp
end