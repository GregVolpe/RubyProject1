class ExtraCredit
  @@publicClassVar=100
  def fooPublic(value)
    puts "value = #{value}"
  end
  def callPrivateMember(value)
    fooPrivate(value)
  end
  private
  @@privateClassVar=200
  attr_accessor :x
  def fooPrivate(value)
    puts "value = #{value}"
  end

end