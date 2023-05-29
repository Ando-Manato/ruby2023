#キーボードから名前を入力
print "name?"
name = gets
#File.new("name.txt","w")

file = File.open("name.txt","a")
file.puts name
file.close


#name.txt　というファイルに変数nameの値を保存