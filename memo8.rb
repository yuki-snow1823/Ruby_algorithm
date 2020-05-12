data = gets.chomp.split(" ")
a = data[0]
b = data[2]
c = data[4]
sign = data[1]

if a == "x" && sign == "+" && b.to_i >= c.to_i
    p c.to_i - b.to_i
    elsif a == "x" && sign == "+" && c.to_i >= b.to_i
    p b.to_i - c.to_i
    elsif a == "x" && sign == "-"
    p b.to_i + c.to_i
    
    elsif b == "x" && sign == "+" && a.to_i >= c.to_i
    p a.to_i - c.to_i
    elsif b == "x" && sign == "+" && c.to_i >= a.to_i
    p c.to_i - a.to_i
    elsif b == "x" && sign == "-" && a.to_i >= c.to_i
    p a.to_i - c.to_i
    elsif b == "x" && sign == "-" && c.to_i >= a.to_i
    p c.to_i - a.to_i
    
    elsif c == "x" && sign == "+"
    p b.to_i + a.to_i
    elsif c == "x" && sign == "-"
    p a.to_i - b.to_i
end

 # なぜか一個網羅できていない
a, b = gets.chomp.split(" ").map(&:to_i), gets.chomp.split(" ").map(&:to_i)

c = a[0]*a[1]
d = a[2]/c.to_r 

e = b[0]*b[1]
f = b[2]/e.to_r 

if d < f
    puts a.join(" ")
    elsif d > f
    puts b.join(" ")
    elsif d == f
    puts "DRAW"
end
