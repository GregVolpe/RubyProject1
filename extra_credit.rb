=begin
Greg Volpe
Dr. Ganchev
CS 355 - Programming Languages
Assignment 2 - Extra Credit
=end

class ExtraCredit
  @@publicClassVar=100
  #Public access function
  def fooPublic(value)
    puts "value = #{value}"
  end
  #Private accessor function
  def callPrivateMember(value)
    fooPrivate(value)
  end
  #private declaration
  private
  @@privateClassVar=200
  attr_accessor :x
  #Private method
  def fooPrivate(value)
    puts "value = #{value}"
  end

end