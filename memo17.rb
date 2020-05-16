other = gets.split(" ").map(&:to_i)
me = gets.to_i
other << me
p other.sort.index(me) + 1
