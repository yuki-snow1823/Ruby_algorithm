days = gets.to_i
data =  (1..days).map{ gets.chomp.split(" ").map(&:to_i) }
puts "#{data[0][0]} #{data[-1][1]} #{data.flatten.max} #{data.flatten.min}"
