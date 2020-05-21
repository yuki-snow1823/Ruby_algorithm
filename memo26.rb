
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
