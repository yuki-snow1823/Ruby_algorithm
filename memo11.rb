data = (1..gets.to_i).map{gets.chomp.split(" ").map(&:to_i)}

food,book,cloth,other = [],[],[],[]

data.each do |categoly, price|
    if categoly == 0
       food << price
    elsif categoly == 1
       book << price
    elsif categoly == 2
       cloth << price
    else
       other << price
    end
end

# *0.05だと、小数いかが勝手に繰り上がってしまう
p (food.sum / 100)*5 + (book.sum / 100)*3 + (cloth.sum / 100)*2 + (other.sum / 100)
