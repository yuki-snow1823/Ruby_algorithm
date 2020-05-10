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

# フィボナッチ数列について復習


#「フィボナッチ数列」とは，
#「前の２つの数を加えると次の数になる」という数列です。
# 性質1:n項までの総和はn+2項−1で求められる
# 他にも多くの性質がある：http://www.suguru.jp/Fibonacci/

# n項目のフィボナッチ数(０から始まる場合)
def fibonacci0(n)
    return  p "0以上の整数を入力して" if n < 0
    return n if n < 2 # 1項目1
    # 1個前と2個前を足す
    fibonacci0(n - 1) + fibonacci0(n - 2)
end

p fibonacci0(6)

# 1から始まる場合
def fibonacci1(n)
  # n += 1
  return if n < 0
  return n if n < 2
  fibonacci1(n - 1) + fibonacci1(n - 2)
end

p fibonacci1(6) # 8になってほしい
