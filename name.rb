#name?と表示
#変数にキーボードから名前を入力
#こんにちは、〇〇という形式で名前を表示

puts "name?"
name = gets
name.chomp
puts "こんにちは、"+name

#number?と表示
#変数にキーボードから数値を入力
#入力された値+1を画面に表示

puts "number?"
number = gets
number.chomp
number = number.to_i
number += 1
puts number
