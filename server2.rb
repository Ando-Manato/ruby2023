require "socket"

def server s
    cmd, path, ver = s.gets.chomp.split(" ")
    if path == "/now"
        puts Time.now
        s.puts Time.now
    elsif path == "/hello"
        puts "hello, world"
        s.puts "hwllo, world!"
        s.puts "HTTP/1.1 200 OK"
        s.puts "Content-Type: text text/html"
        s.puts.puts "<DOCTYPE html>"
        s.puts "<html><body><h1>Hello,World!</h1></body></html>"
    elsif path == "/"
        while line = s.gets
            line.chomp!
            puts line
            s.puts line
            break if line == ""
         end
        else
            s.puts "HTTP/1.0 404 Not Found"
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