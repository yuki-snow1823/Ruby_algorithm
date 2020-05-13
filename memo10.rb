input_line = gets.chomp.split(":").map(&:to_i)
time = (input_line[0] - 8) % 24

puts "#{time}:#{input_line[1]}"

# 時間は24で割ればあまりが対応する時間になる
