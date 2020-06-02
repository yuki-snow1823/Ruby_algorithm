data = gets.split(" ").map(&:to_i)
M = data[0]     # 連休日数
N = data[1]     # 旅行日数

# 一旦、全日付と降水確率を配列にしてしまう。
dates = []
chances_of_rain = []
# 一つずつデータを受け取って日付はdatesに、降水確率はchances_of_rainに入れていく。
M.times do |n|
  date_data = gets.split(" ").map(&:to_i)
  dates.append(date_data[0])
  chances_of_rain.append(date_data[1])
end

# 割れば同じことなので、平均ではなく合計で大小を比較する。
# 選んだ日付(dates[i])からN日分の合計を取る。
# その合計が最も小さい時のdates[i]が答えとなる旅行初日(answer_first_date)

# ここまで理解。

# ひとまずは配列の最初の日付とそこから旅行日数分の要素の合計を入れておく。
answer_first_date = dates[0]
minimum_amount = chances_of_rain.slice(0, N).sum    # .slice(s, l)は配列のs番目の要素からl個を配列として抜き出す。例： [2, 3, 4, 5, 6].slice(1, 3) = [3, 4, 5]

# 0は上で既に調べているので1からスタート。
# ( 連休日数M - 旅行日数N )よりiが大きくなると合計範囲がdatesをはみ出してしまう。
(M - N).times do |i|

  amount = chances_of_rain.slice(i, N).sum

  # 今回の合計が今までの最小より小さければminimum_amountとanswer_first_dateを更新。
  if amount < minimum_amount
    minimum_amount = amount
    answer_first_date = dates[i]
  end
end

# 旅行最終日を計算。
answer_last_date = answer_first_date + N - 1

puts "#{answer_first_date} #{answer_last_date}"
