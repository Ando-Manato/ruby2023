if ARGV[0] == "-n"
    File.open(ARGV[1],"r") do |file|
        i = 1
        while line = file.gets
            puts i.to_s + ": " + line
            i += 1
        end
    end
else
    File.open(ARGV[0],"r") do |file|
        while line = file.gets
            puts line
        end
    end
end