data = (1..gets.to_i).map{gets.chomp.split(" ")}

less_than = []
greater_than = []

data.each do |f|
    if f[0] == "le"
       less_than <<  f[1].to_f
    else
        greater_than << f[1].to_f
    end
end

puts "#{greater_than.max} #{less_than.min}"
