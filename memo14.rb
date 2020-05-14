def white_or_black(size)
  if size < 128
    return 0
  elsif size >= 128
    return 1
  end
end

input_line = gets.chomp.split(" ").map(&:to_i)

line = (1..input_line[0]).map{ gets.chomp.split(" ").map(&:to_i)}

input_line[0].times do |height|
  input_line[1].times do |width|
    line[height][width] = white_or_black(line[height][width])
  end
end

line.each do |l|
  puts l.join(" ")
end
