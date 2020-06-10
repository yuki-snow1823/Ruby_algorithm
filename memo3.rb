# 【重要】素数判定
def prime?(num)
  (2..num).each do |i|
    if num % i == 0 && num == i
      return true
    elsif num % i == 0
      return false
    end
  end
end

# returnだから判定が出た瞬間に終わる


# 除外 逆はselect
[1, 2, 3, 4, 5, 6].reject {|i| i % 2 == 0 }  # => [1, 3, 5]

# 約数の個数
def divide(num)
total = 0
# それ自体の半分の数までしか増やさない。なぜなら、#2
  for i in 1..num/2 do
    d = num % i
    if d == 0 # 割り切れたらという意味
      total += 1
    end
  end
#2 個数は、約数の半分までとそいつ自体と考えた方が計算が少なくなるから
  return total+1
end
