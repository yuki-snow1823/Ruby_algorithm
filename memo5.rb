carrot_info = gets.chomp.split(" ").map(&:to_i)
max_index = 0
max_gram = 0
answer = ""


# ここにiの値を入れればいい(書き方わからなかったのでゴリ押し)
carrot_data = (1..carrot_info[0]).map do |i|
  [i,gets.chomp.split(" ").map(&:to_i)].flatten
end


paths = carrot_data.select do |index,gram,sugar|
  sugar >= carrot_info[1] - carrot_info[2] && sugar <= carrot_info[1] + carrot_info[2]
end


if paths.size >= 1
  paths.each do |index,gram,sugar|
    if max_gram < gram
       max_gram = gram
       max_index = index
       answer = index
    end
  end
else
  answer = "not found"
end


puts answer
# mapはオブジェクトにするんじゃなくて、数字に対してやって擬似的に順番を取ることができる
