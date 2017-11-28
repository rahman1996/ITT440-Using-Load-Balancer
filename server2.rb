require "socket"

while true
server=TCPServer.open("192.168.231.130",3000)
loadbalancer=server.accept
puts loadbalancer.close
server.close
end
