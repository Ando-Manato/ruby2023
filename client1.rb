#http://www.is.kyusan-u.ac.jp/~toshi/index.html

#HTTP 0.9 = TCP 80

require "socket"

host = ARGV[0]
path = ARGV[1]
port = 80
s = TCPSocket.open(host,port)
s.puts("GET #{path} HTTP/1.0")
s.puts

is_body = false

while line = s.gets
    line.chomp!
    puts line if is_body
    is_body = true if line == ""
end
s.close