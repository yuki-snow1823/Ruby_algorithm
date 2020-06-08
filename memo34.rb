
data = gets.split(" ").map(&:to_i)
stock_count = data[0]
buy_bake_count = data[1]

stock_count_data = (1..stock_count).map{gets.chomp!.split(" ").map(&:to_i)}
buy_bake_data = (1..buy_bake_count).map{gets.chomp!.split(" ")}

price = 0

buy_bake_data.each do |data|
    if data[0] == "buy"
        data.drop(1).map(&:to_i).each_with_index do |order,index|
           if stock_count_data[index][1] >= order
               price += stock_count_data[index][0] * order
           else
               p -1
               price = 0
               break
           end
        end
        
        # price>0、つまりパンが全て購入できた場合
        if price > 0
            p price
            price = 0
            #パンを減らす処理を書く
            data.drop(1).map(&:to_i).each_with_index do |order,index|
                stock_count_data[index][1] -= order
            end
        end
    else
        data.drop(1).map(&:to_i).each_with_index do |order,index|
            stock_count_data[index][1] += order
        end
    end
end
