class Base
  def ml(x, y)
      x + y
  end
end

class Derived < Base
  def ml(x, y)
    super * 10
  end
end


d = Derived.new
puts d.ml(3, 10)
