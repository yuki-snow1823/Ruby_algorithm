result = (1..gets.to_i).map{gets.chomp}

if result.include?("paper") && result.include?("scissors") && result.include?("rock")
    puts "draw"
elsif !result.include?("paper") && result.include?("scissors") && result.include?("rock")
    puts "rock"
elsif result.include?("paper") && !result.include?("scissors") && result.include?("rock")
    puts "paper"
elsif result.include?("paper") && result.include?("scissors") && !result.include?("rock")
    puts "scissors"
else
    puts "draw"
end

numbers = gets.split(" ").map(&:to_i)

(1..gets.to_i).map{gets.split(" ").map(&:to_i)}.each {|f| p (f & numbers).count}
