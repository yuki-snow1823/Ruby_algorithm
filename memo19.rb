# ・末尾が s, sh, ch, o, x のいずれかである英単語の末尾に es を付ける
# ・末尾が f, fe のいずれかである英単語の末尾の f, fe を除き、末尾に ves を付ける
# ・末尾の1文字が y で、末尾から2文字目が a, i, u, e, o 
# のいずれでもない英単語の末尾の y を除き、末尾に ies を付ける
# ・上のいずれの条件にも当てはまらない英単語の末尾には s を付ける

count = gets.to_i

words = (1..count).map{gets.chomp}

words.each do |f|
    if f.end_with?("s","sh","ch","o","x") 
        puts f + "es"
    elsif f.end_with?("f")
        puts f.chop + "ves"
    elsif f.end_with?("fe")
        f.chop!
        puts f.chop + "ves"
    elsif f.end_with?("y") && f[-2] != "a" && f[-2] != "i" && f[-2] != "u" && f[-2] != "e" && f[-2] != "o" 
        puts f.chop + "ies"
    else
        puts f + "s"
    end
end

# 配列に入れてincludeして否定すればもっと綺麗にかけた
