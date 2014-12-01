#GREG VOLPE
#DR. GANCHHEV
#ASSIGNMENT 2 CS 355
#PROBLEM 5
class Problem5Old
  #Variable Declaration
  $GLOBAL_VAR = 10 #global variable
  @@CLASS_VAR = 10#lass variable


  def simpleMath
    @INSTANCE_VAR = 10 #instance variable
    local_var = 10
    puts 'The local var is: ' <<local_var.to_s
    @@CLASS_VAR2 = 10
    local_var += @@CLASS_VAR
    puts "Added @@CLASS_VAR to local_var, local_var is now: #{local_var.to_s}"
    puts 'Output local_var 5 times within loop block'
    5.times do
      puts local_var
    end
    if(local_var ==20)
      local_var2 = 30
      puts 'We just created local_var2 inside an if block...  Can it be accessed after we exit if?'
    end
    puts (local_var2 ==30)
    i=10
    while( i!=0)
      local_var=local_var.to_i+local_var2.to_i
      i=i-1
    end
    puts "we added local_var and local_var2 a lot: #{local_var.to_s}"
    puts "we can only access @INSTANCE_VAR from here: #{@INSTANCE_VAR.to_s}"
  end #end simpleMath Function
  def accessClassVar2
    puts "@@CLASS_VAR2 was created in method simpleMath, can we access? #{@@CLASS_VAR2 ==10}"
    puts 'Can we access local_var from this method? Nope'
    puts "But we can see $GLOBAL_VAR: #{$GLOBAL_VAR.to_s}"
  end

  def increaseInstanceVar
    @INSTANCE_VAR = @INSTANCE_VAR + 1
    puts "@INSTANCE_VAR is now: #{@INSTANCE_VAR.to_s}"
  end

  def increaseClassVar
    @@CLASS_VAR =@@CLASS_VAR + 1
    puts "@@CLASS_VAR is now: #{@@CLASS_VAR.to_s}"
  end

  def increaseClassVar2
    @@CLASS_VAR2 += 1
    puts "@@CLASS_VAR2 is now: #{@@CLASS_VAR2.to_s}"
  end

  def increaseGlobalVar
    $GLOBAL_VAR += 1
    puts "$GLOBAL_VAR is now: #{$GLOBAL_VAR.to_s}"
  end

  def getInstanceVar
    puts "@INSTANCE_VAR is now: #{@INSTANCE_VAR.to_s}"
  end

  def getClassVar
    puts "@@CLASS_VAR is now: #{@@CLASS_VAR.to_s}"
  end

  def geteClassVar2
    puts "@@CLASS_VAR2 is now: #{@@CLASS_VAR2.to_s}"
  end

  def getGlobalVar
    puts "$GLOBAL_VAR is now: #{$GLOBAL_VAR.to_s}"
  end
  def increaseMainVar
    #$MAIN_VAR CAN'T ACCESS
    puts "Can't access $MAIN_VAR"
  end
  def compoundStatement
    puts 'this';puts 'is';puts 'compound!'
  end
  def sub1
    i = 10
    @@CLASS_VAR = 25
    puts "We made local var i = #{i.to_s} and changed the value of @@CLASS_VAR = #{@@CLASS_VAR.to_s} in Sub1"
    sub2
    puts "We made local var i = #{i.to_s} and changed the value of @@CLASS_VAR = #{@@CLASS_VAR.to_s} in Sub1"
  end
  def sub2
    i= 15
    @@CLASS_VAR = 35
    puts "We made local var i = #{i.to_s} and changed the value of @@CLASS_VAR = #{@@CLASS_VAR.to_s} in Sub2"
  end
end