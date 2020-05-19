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

# ジャンケン
numbers = gets.split(" ").map(&:to_i)

(1..gets.to_i).map{gets.split(" ").map(&:to_i)}.each {|f| p (f & numbers).count}

data = (1..gets.to_i).map{gets.chomp.split(" ")}

# 文字と数字が混ざっている配列の仕分け
count = 0 
data.each do |f|
    if f[0] == "l"
      f.map!(&:to_i)
      count += 1 if f.sum >= 350 && f[4] + f[5] >= 160
    else
      f.map!(&:to_i)
      count += 1 if f.sum >= 350 && f[2] + f[3] >= 160
    end
end

p count
