puts "Hello"
puts "KSU"
# put string

i = 8
s = "KSU"
puts s + i.to_s

j = 2.0

puts i + j
puts i - j
puts i * j
puts i / j
puts i % j

if i % 2 == 0
    puts "even"
else
    puts "odd"
end

i = 5
while i > 0
    print "#"
    i -= 1
end
puts
#putsはprintlnと同じ

ia = [1,5,10]
puts ia[1]
sa = ["a","b"]
puts sa[1]
xa = [1,"a",10,[5,3]]
puts xa[3][0]
l = 0
while l < ia.length
    print ia[l]
    print ","
    l += 1
end
puts

xa.each do |i|
    print i
    print ","
end
puts

7.times do
    print "*"
end
puts

s = gets #キーボードから受け取る
#s = s.chomp
s.chomp! #改行コードを削除
puts "##"+s+"**"
p s
p 1
p "1"