time = gets.chomp.to_s.split("")

# 時間の計算 / 24で割り切れれば 日にち、 % 24の余が時間 divmod[0]→商 / divmod[1]→余
 div = (time[6].to_i * 10 + time[7].to_i).divmod(24)


 month = time[0]+time[1]
 # rjustは先頭の文字を埋める 右づめでという意味
 date = ((time[3].to_i * 10 + time[4].to_i) + div[0]).to_s.rjust(2,"0")
 hours = div[1].to_s.rjust(2,"0")
 mins = time[9]+time[10]

puts "#{month}/#{date} #{hours}:#{mins}"
