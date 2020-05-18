data = gets.split(" ").map(&:to_i)

fish_count = data[0]
poi_count = data[1]
poi_power = data[2]

fish = (1..fish_count).map{gets.chomp}.map(&:to_i)
answer = 0

fish.each do |f|
    poi_power -= f
    
    if poi_power > 0
        answer +=1
    else
        poi_count -= 1
        break if poi_count == 0
        
        poi_power = data[2]
        break if f >= data[2]
        redo if poi_count > 0
    end
end

p answer
