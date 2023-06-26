require "socket"

gs = TCPServer.open 8080

while true
    s = gs.accept

    while line = s.gets
        puts "Received: #{line}"
    end
    s.close
end
