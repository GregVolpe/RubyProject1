class Problem9
  module Nums
    ONE = 1
    TWO = 2
    THREE = 3
    FOUR = 4
    FIVE = 5
    SIX = 6
    SEVEN = 7
    EIGHT = 8
    NINE = 9
    TEN = 10
  end

  def doModularMath
    puts 'Nums::TWO * Nums::FOUR'
    puts Nums::TWO * Nums::FOUR
    puts 'Nums::THREE + Nums::SIX'
    puts Nums::THREE + Nums::SIX
    puts 'puts addNumbers(Nums::TEN, Nums::SEVEN)'
    puts addNumbers(Nums::TEN, Nums::SEVEN)
  end
  def addNumbers(a,b)
    puts "adding values #{a.to_s} and #{b.to_s}"
    puts a+b
  end
  def doSymbolMath
    enums = {:one => 1, :two => 2, :three => 3, :four => 4, :five =>5, :six => 6, :seven => 7, :eight=>8, :nine=>9, :ten =>10}
    puts 'puts enums'
    puts enums
    puts 'puts enums[:one]'
    puts enums[:one]
    puts 'puts enums[:one] + enums[:two]'
    puts enums[:one] + enums[:two]
    puts 'puts enums[:two].to_f / enums[:four].to_f'
    puts enums[:two].to_f / enums[:four].to_f
    puts 'addNumbers(enums[:five],enums[:six])'
    puts addNumbers(enums[:five],enums[:six])

  end
end