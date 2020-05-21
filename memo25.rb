# redo 最後の処理のlast 最初の処理の「初期化で値を入れておく」＝例外処理の多いアルゴリズム 

max_paper = gets.to_i
data = (1..gets.to_i).map{gets.split(" ").map(&:to_i)}

total_paper = 0
#1 で最初のデータに関しif文をtrueで通過させるために書いています
log_time = [data[0][0]]
answer = []

data.each do |f|
    #1 同じ時刻の情報だったら
    if log_time[0] == f[0]
        # 上の合計枚数を増やす
        total_paper += f[2]
        
        # 1番最後のデータだけ、elseの処理で入れられないため
        answer << total_paper if f == data.last 
    else
        # 違う時刻になったら初期化
        log_time = [f[0]]
        # そして1個前の時刻の合計の紙を配列に追加
        answer << total_paper
        # その後に初期化
        total_paper = 0
        # 違う時間に移ったタイミングだともう一度やらなければならないから補足
        redo
    end
end

# 準備が整った後の処理

last_answer = []
answer.each do |num|
    # ぴったりのパワーで運べるならその回数
    if num % max_paper == 0
        last_answer << num / max_paper
    else
        last_answer << num / max_paper + 1
    end
end

p last_answer.sum

# 複数このデータを取得して処理を分ける場合
data = (1..gets.to_i).map{gets.chomp.split(" ")}
data_A,data_B = 0,0

data.each do |f,g,h|
    if f =="SET"
        if g =="1"
            data_A = h.to_i
        else
            data_B = h.to_i
        end
    elsif f =="ADD"
        data_B = data_A + g.to_i
    else
        data_B = data_A - g.to_i
    end 
end

puts "#{data_A} #{data_B}"


# 回転処理
data = gets.split(" ")

correct = data[1].split("")
miss = data[2].split("")
count = 0

if correct == miss
    return puts 0
end
    
loop do
    m = miss.shift
    miss << m
    count += 1
    break if miss.join("") == correct.join("")
end

p count
