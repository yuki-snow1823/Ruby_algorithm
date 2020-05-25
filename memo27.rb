# 1回目の組み合わせの番号を決定
pair_a = gets.chomp.split(" ").map(&:to_i)
pair_b = gets.chomp.split(" ").map(&:to_i)

# 1回目の速度を設定
@first_time = gets.chomp.split(" ").map(&:to_i)

# エントリーナンバーに応じた速度を設定
a = @first_time[pair_a[0]-1]
b = @first_time[pair_a[1]-1]
c = @first_time[pair_b[0]-1]
d = @first_time[pair_b[1]-1]

# 1回戦目の勝利判定
def which_win(a,b)
    if a > b
        @first_time.index(b)+1
    else
        @first_time.index(a)+1
    end
end

# 勝者を変数に代入
winner_a = which_win(a,b)
winner_b = which_win(c,d)

# 次の速度は、エントリーナンバーが少ない順に来る
# そのため、あらかじめ勝者の順番も整えておく
# なぜなら、そこが揃っているとif文で判定がきっと書きやすくなるから
sort_ab = []
sort_ab << winner_a
sort_ab << winner_b
# 変数に入れるのがめんどくさいため、破壊的に変更
sort_ab.sort!

last_time = gets.chomp.split(" ").map(&:to_i)

# 最後の判定、勝者の順番を揃えていたから0,1のようにして呼び出せる
if last_time[0] < last_time[1]
    puts sort_ab[0]
    puts sort_ab[1]
else
    puts sort_ab[1]
    puts sort_ab[0]
end
