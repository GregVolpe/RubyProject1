class Problem7
  LIST = %w(a b c)
  LIST.each do |x|
    define_method(x) do |args|
      puts args+5
    end
  end
  def createClass

  end
end
