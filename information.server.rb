require "socket"

#ruby test.server.rb name,address,birth
#ruby test.server.rb all


def server s
    name = "Ando Manato"
    address = "福岡県福岡市東区松香台"
    birth = "2000/5/30"
    number = "090-4830-4885"

    path = s.gets.chomp.split(",")
    #puts path
    path1 = path[0]

    '''
    puts path1 
    puts path2
    puts path3
    puts path4
    s.puts path1         #client側から受信できているかの確認用
    s.puts path2
    s.puts path3
    s.puts path4
    '''

    #ここに条件
    #x.include?()は()の中の文字がxの中に含まれていたらTrueを返す
    a = path.include?("name")
    b = path.include?("address")
    c = path.include?("birth")
    d = path.include?("number")

    #puts a,b,c,d

    if a == true
        s.puts name
    end

    if b == true
        s.puts address
    end

    if c == true
        s.puts birth
    end

    if d == true
        s.puts number
    end
    
    if path1 == "all"
        s.puts name
        s.puts address
        s.puts birth
        s.puts number
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