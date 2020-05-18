data = gets.split(" ").map(&:to_i)

fish_count = data[0]
poi_count = data[1]
poi_power = data[2]

fish = (1..fish_count).map{gets.chomp}.map(&:to_i)
answer = 0

fish.each do |f|
  # ポイにダメージ
    poi_power -= f
    
    # もしポイの耐久力があったら
    if poi_power > 0
      # 釣れた数が増える
        answer +=1
    else # ダメだったら
      # まずポイを減らす
        poi_count -= 1
      # ポイが無くなったらそこで終わり、breakして繰り返し終了
        break if poi_count == 0
      # ゲームが続くなら、ポイのパワーを復活
        poi_power = data[2]
      # そもそも勝てないサイズの魚がきたらそこで終了
        break if f >= data[2]
      # ゲームが続くなら、次の魚に行かないようにredoさせる
        redo if poi_count > 0
    end
end

p answer

member = gets.to_i
# チーム数　×　（チーム数　－　１）　÷　２
battle_count = member*(member-1) / 2

log_battle = (1..battle_count).map{gets.split(" ").map(&:to_i)}.sort {|a,b| a[0] <=> b[0]}

for i in 1..member do
    for j in 1..member do
        if i == j
            print "-"
            print " " unless j == member
            # iが1でjが2の時、つまり1番が2番に買っているか負けているか
            # 勝ちがあればーみたいな
        elsif log_battle.include?([i,j])
            print "W"
            print " " unless j == member
        else
            print "L"
            print " " unless j == member
        end
    end
    puts 
end

