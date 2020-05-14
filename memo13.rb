# 自分で問題を考える

=begin
  
10*10の長方形の格子があり、ゴールに進む。その時以下の問いに答えよ

(1)最短距離に行くコードをかけ：簡単

分解とか、いろんなメソッドを使うような考えにしたい。
出力の結果も見ているような気がする

カレンダーや日付の問題
１日に３個栄養ドリンクを摂取する、２のつく日は、３のつく日は
素数の日だったら、
１ヶ月で何本か？（微妙、今月はとかただの繰り返しになりそう）
これを１年間継続した場合、ただし２月は２８日とする
dateクラスの今月のカレンダーを出力、ただし

あなたはプログラミング勉強中の生徒です。沢山の勉強をします。
今日は今月の初日。頑張り屋さんのあなたは、自分のプログラミングの勉強にルールを設けることにしました。
以下の問いに答えなさい。

（１）今月の最終日をdateクラスを利用して出力しなさい。
（２）あなたは学習をする間、毎日１問の問題を必ず解くことに決めました。
ただし、日付に３がつく日は２問、素数の日は３問を解くことにしました。
初日から学習を開始した場合、今月は何問の問題を解くことができるでしょう？
（３）今月のカレンダーを次のような形式で出力してください。（右寄せ曜日対応）

=end

require 'date'

# (1)の問題について
lastday = Date.new(2020, 5 , -1).day 

# (2)の問題について
count = 0

def prime?(num)
  (2..num).each do |i|
    if num % i == 0 && num == i
      return true
    elsif num % i == 0
      return false
    end
  end
end

(1..lastday).to_a.each do |day|
  # if day.to_s.split("").include?("4")
  #   count += 3
  if prime?(day)
    count += 2
  end
end

p count
