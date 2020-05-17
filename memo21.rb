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
