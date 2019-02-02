class Person
  def name
  end
end

class Customer < Person

end

customer = Customer.new
puts customer.class
puts Customer.superclass
puts customer.respond_to?(:name)

module ThingsWithNames
  def name
  end
end

class PersonRelateWithNames
  include ThingsWithNames
end

puts PersonRelateWithNames.superclass

prn = PersonRelateWithNames.new
puts prn.class
puts prn.respond_to?(:name)
