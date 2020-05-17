point_data = gets.split(" ").map(&:to_i)
point,limit = point_data[0],point_data[1]

data = (1..point).map{gets.split(" ").map(&:to_i)}.sort{|a,b| a[0] <=> b[0]}

i = 0
until i == point -1
    if (data[i+1][1] - data[i][1] ) / (data[i+1][0] - data[i][0]) > limit
        puts "YES"
        return
    end
    i += 1
end

puts "NO"
