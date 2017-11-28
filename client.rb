require "socket"
client=TCPSocket.open("192.168.19.128",2000)

puts "Enter your message: "
message=gets.chomp
rhost=client.peeraddr.last
puts "#{rhost}"
client.write(message)
client.close
