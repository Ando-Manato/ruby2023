require "socket"

def server s
    while line = s.gets
        line.chomp!
        puts line
        s.puts line
        break if line == ""
    end
    s.close
end

gs = TCPServer.open 80

while true
    s = gs.accept

    Thread.new do
        server s
    end
end
