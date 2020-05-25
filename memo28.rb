s = gets.split(" ").map(&:to_i)
start_price = s[0]
program_A = s[1]
program_B = s[2]

last_price = start_price
buyer = [ ]
while last_price <= program_A do
    last_price += 10
    if last_price + 1000  <= program_B 
      last_price += 1000
      buyer << "B"
    else
      buyer << "A"
      break
    end
end

puts buyer.last + " " +  last_price.to_s


# ランキング
n = gets.chomp.to_i #人数
a = gets.chomp.split(' ')#名前たち
p ={}
n.times{ |i|  p[a[i]] = 0 }#名前がキー、初期値が０の連想配列pを作成

m = gets.chomp.to_i#本の購入数
m.times{ |s|
    a,b = gets.split(' ')#名前と購入代金を取得
    p.each_key{ |l| p[l] += b.to_i if l == a}#aに合致する連想配列pのキーの値に、bを整数化したものを加算
}

puts Hash[p.sort_by{|v,x| -x}].keys#値で降順に並び替えて配列として出力したものを、ハッシュとして受け取り、キーをそれぞれ出力する
