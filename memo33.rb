data = gets.split(" ").map(&:to_i)

pocket = data[0]
number = data[1]

arr_right = (1..pocket).to_a.map{|a| a - pocket*2}
arr_left = (1..pocket).to_a.map{|a| a - pocket}

left_type_proto = []
while arr_left.last <=  pocket * (number / pocket +1 ) -pocket  do 
    save = arr_left.map!{|a| a += pocket*2}.map{|a| a }
    left_type_proto << save
end

right_type_proto = []
while arr_right.last <= pocket * (number / pocket +1 ) - pocket  do 
    save = arr_right.map!{|a| a += pocket*2}.map{|a| a }
    right_type_proto << save
end

@right_type = right_type_proto.flatten
@left_type = left_type_proto.flatten

def number_judge(num)
    return "right" if @right_type.include?(num)
    return "left" if @left_type.include?(num)
end

right_type_proto_place = right_type_proto
left_type_proto_place = left_type_proto

if number_judge(number) == "left"
    left_data = left_type_proto_place.select{|a| a.include?(number)}[0].index(number)
    p number - 2 * left_data - 1
else
    right_data = right_type_proto_place.select{|a| a.include?(number)}[0].index(number)
    p number +  (-2 * (right_data+1) + (2*pocket +1) )
end

# p -2 * (right_data+1)


# 2n-1引いている
# indexがでかくなれば、足す数は小さくなる
# rightはpocketに影響される
