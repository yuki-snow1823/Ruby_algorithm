# 2つの配列を同時に回すzip
odd = [1,3,5]
even = [2,4,6]

odd.zip(even) do |x, y|
  puts x
  puts y
end

# 範囲を配列にする方法
@secret_key = ("A".."Z").to_a

# ./memo1で標準入力を配列に入れていたが、取得しつつ配列にする方法
# 無限ループも防ぐことができる
# coordinates = (1.."送られてくる数").map{gets.chomp.split(" ").map(&:to_i)}
