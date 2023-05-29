File.open("ls.out","r") do |f|
    i = 1
    while line = f.gets
        puts i.to_s + ": " + line
        i += 1
    end
end
