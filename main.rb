load 'problem3.rb'
load 'problem4.rb'
load 'problem5.rb'
load 'problem7.rb'
load 'problem9.rb'
$MAIN_VAR = 20 # FOR PROBLEM 5 MAIN GLOBAL VAR

#prob3 = Problem3.new
#prob3.parseFile("problem3.txt")

#prob4 = Problem4.new
#array = ["ie","someie", "somethingie","nope", "yupyup","123ie123", "Sunday", "Monday", "Tuesday", "Wednesday", "Tursday", "Friday", "Saturday", "Mondaye", "Tuesday9"]
#prob4.e_names(array)
#prob4.parseFile("problem4b.txt")
=begin
prob5 = Problem5.new
prob5.simpleMath
prob5.accessClassVar2
prob5.increaseClassVar
puts "Global far from problem5.rb class: " << $GLOBAL_VAR.to_s
prob5.increaseMainVar
puts '5.times {prob5.increaseInstanceVar}
prob5.getInstanceVar'
5.times {prob5.increaseInstanceVar}
prob5.getInstanceVar
puts "===SECOND PROBLEM 5 INSTACNE==="
prob5_2 = Problem5.new
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
=end
=begin
#PROBLEM 7
class Problem7_1
  class << self
    def speak
      puts "I'm class Problem7"
    end
    def Problem7_1::create_method(name)
      define_method(name){puts "Your name is #{name}"}
    end
  end
end

class Problem7_5
  LIST = %w(a b c)
  LIST.each do |x|
    define_method(x) do |args|
      puts args+5
    end
  end
end
Problem7_1.speak
Problem7_1.create_method('mine')
Problem7_1.new.mine
Problem7_1.create_method('greg')
Problem7_1.new.greg
Problem7_5.new.a(10)
Problem7_5.new.b(200)
Problem7.new.a(10)
=end
prob8 = Problem9.new
prob8.doModularMath
prob8.doSymbolMath