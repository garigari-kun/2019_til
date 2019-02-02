matched = "haystack"
m = matched.match("hay")
puts m[0]

def extract_error(message)
  if m = message.match(/^Error:\s+(.+)$/)
    m[1]
  else
    'no errors'
  end
end
