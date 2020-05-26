data = gets.split(" ").map(&:to_i)
last_day = data[0]
buy = data[1]
sell = data[2]
income = 0
stock_count = 0
stock_price = (1..last_day).map{gets.chomp}.map(&:to_i)

stock_price.each do |f|
    if f <= buy
        stock_count += 1
        income -= f
    elsif f >= sell
        income += f*stock_count
        stock_count = 0
    else
        next
    end
end

income += stock_price.last*stock_count if stock_count != 0

p income
