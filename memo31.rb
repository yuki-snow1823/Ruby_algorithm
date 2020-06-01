numbers = (1..10).to_a
rule = [["<", 5],["%", 2]]

rule.each do |b|
    numbers.select! do |a|
        if b[0] == "<" 
            a <= b[1]
        else
            a % b[1] == 0
        end
    end
end

p numbers # [2,4]

data = gets.split(" ").map(&:to_i)
all_days = data[0]
travel_days = data[1]

info = (1..all_days).map{gets.chomp.split(" ").map(&:to_i)}

combi_info = info.combination(travel_days).to_a

check_arr = []
answer_arr = []
combi_info.each do |a|
    a.each_with_index do |b,c|
        check_arr << b[0] if b[0] == a[c + 1][0] -1 if a[c + 1] !=nil
        check_arr << b[0] + 1 if check_arr.count == travel_days - 1
        answer_arr << a if check_arr.count == travel_days
    end
    check_arr = []
end

continuous_info = answer_arr.uniq!

arr = []
continuous_info.each do |f|
    total = 0
    f.each do |g|
        total += g[1]
    end
    arr << total/travel_days
end

answer_index = arr.index(arr.min)

puts "#{continuous_info[answer_index].first[0]} #{continuous_info[answer_index].last[0]}"

