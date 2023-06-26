require "socket"

def server s
    while line = s.gets
        puts "Received: #{line}"
        s.puts "Got: #{line}"
    end
    s.close
end

gs = TCPServer.open 8080

while true
    s = gs.accept

    server s
end
