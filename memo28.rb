s = gets.split(" ").map(&:to_i)
start_price = s[0]
program_A = s[1]
program_B = s[2]

last_price = start_price
buyer = [ ]
while last_price <= program_A do
    last_price += 10
    if last_price + 1000  <= program_B 
      last_price += 1000
      buyer << "B"
    else
      buyer << "A"
      break
    end
end

puts buyer.last + " " +  last_price.to_s
