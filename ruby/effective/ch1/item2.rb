# person.save if person
# person.save if ?person.nil?
# person.save unless person.nil?

puts 13.class
puts 13.to_s

puts "".class
puts "".nil?

def fix_title(title)
  title.to_s.capitalize
end

puts fix_title("keisuke")
puts fix_title(nil)

puts ["keisuke", "john", "hogehoge", nil].compact.join(" ")
