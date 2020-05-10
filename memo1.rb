# 偶数判定
10.even?    # => true
5.even?     # => false

# 小数点までto_f出させてからceilしないとずれる、必要ならば小数まで計算させる
# a = gets.split(" ").abs/2.to_f 
# p b.ceil

# 複数行の取得
line = readlines
len = line.length
i = 0
while i < len
    line[i] = line[i].chomp
    i += 1
end

p line
