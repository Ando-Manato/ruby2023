f = File.open "ls.out","r"
i = 1
while line = f.gets
    puts i.to_s + ": " + line
    i += 1
end

f.close