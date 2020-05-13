def calc_point(item, price)
  point = 0
  point_base = price / 100

  case item
  # 食料品
  when 0
    point = point_base * 5
  # 書籍
  when 1
    point = point_base * 3
  # 衣類
  when 2
    point = point_base * 2
  # その他
  when 3
    point = point_base * 1
  end
end

def calc_price(item,data)
    sum = 0
    data.select{|x| x[0] == item }.each do |dummy, price|
        sum += price
    end
    calc_point(item,sum)
end

data = (1..items).map{gets.chomp.split(" ").map(&:to_i)}
p calc_price(0,data) + calc_price(1,data) + calc_price(2,data) + calc_price(3,data)
