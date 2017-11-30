require "socket"

loadbalancer=TCPServer.open("192.168.19.128",2000)
while true
client=loadbalancer.accept
rhost=client.peeraddr.last
puts "#message from client: #{fromclient}"
if fromclient=="boy"
sockettoserver1=TCPSocket.open("192.168.231.129",3000)
sockettoserver1.write(fromclient)
sockettoserver1.close

else if fromclient=="girl"
sockettoserver2=TCPSocket.open("192.168.231.130",4000)
sockettoserver2.write(fromclient)
sockettoserver2.close

else 
puts "ERROR"

end
end
end
