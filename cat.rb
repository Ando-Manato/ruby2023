File.open(ARGV[0],"r") do |file|
    while line = file.gets
        puts line
    end
end