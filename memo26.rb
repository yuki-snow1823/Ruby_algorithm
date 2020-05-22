
(1..gets.to_i).map{gets.chomp.split("")}.each do |c|
    if c.uniq.size == 1
        puts "Four Card"
    elsif c.select{|v| c.count(v) > 1}.uniq.size  == 2
        puts "Two Pair"
    elsif c.count(c.select{|v| c.count(v) > 1}.uniq[0]) == 3
        puts "Three Card"
    elsif c.count(c.select{|v| c.count(v) > 1}.uniq[0]) == 2
        puts "One Pair"
    else
        puts "No Pair"
    end
end


# 給与計算
data = gets.split(" ").map(&:to_i)
normal = data[0]
night = data[1]
midnight = data[2]

day = gets.to_i

work = (1..day).map{gets.chomp.split(" ").map(&:to_i)} 

work.each do |s,e|
    if (9..16).to_a.include?(s) && e - s <= 9 
        p normal * (e - s) 
    elsif (9..16).to_a.include?(s) && e - s >= 10 && e - s <= 15
        p 8000 + night (e - s - 8)
    elsif (17..21).to_a.include?(s) && e -s <= 4
        p night * (e - s) 
    else
        p midnight * (e - s) 
    end
end 
