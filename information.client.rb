require "socket"

host = ARGV[0]
path = ARGV[1]
port = 80
s = TCPSocket.open(host,port)
s.puts path

while line = s.gets
    line.chomp!
    puts line 
end
s.close