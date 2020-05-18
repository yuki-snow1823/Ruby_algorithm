data = gets.split(" ").map(&:to_i)
degree,humid = data[0],data[1]

if degree >= 25 && humid <= 40
    puts "No"
elsif degree >= 25 || humid <= 40
    puts "Yes"
else
    puts "No"
end

arr = gets.chomp.split("+")

answer = []
arr.each do |f|
    ten = f.count("<")
    one = f.count("/")
    number = 10 * ten + one
    answer << number
end
p answer.sum


# 共通部分の描画
start_data = gets.split(" ").map(&:to_i)
finish_data = gets.split(" ").map(&:to_i)

if finish_data[0] >= 0 && finish_data[1] >= 0
p start_data[0] * finish_data[0] + start_data[1] * finish_data[1] - (finish_data[0] * finish_data[1])
elsif finish_data[0] > 0 && finish_data[1] < 0
p start_data[0] * start_data[1] - ( (start_data[0] - finish_data[0]) * (start_data[1] + finish_data[1]) )
elsif finish_data[0] < 0 && finish_data[1] > 0
p start_data[1] * start_data[0] - ( (start_data[1] - finish_data[1]) * (start_data[0] + finish_data[0]) )
end
