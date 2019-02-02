module Defaults
  NETWORKS = ["192.168.1", "192.168.2"].freeze
end

puts Defaults::NETWORKS


# Defaults::NETWORKS[0] = "hoge network"
# puts Defaults::NETWORKS

new = Defaults::NETWORKS.map { |network|  network + "hehe" }
puts new.class
