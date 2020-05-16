data = gets.split(" ").map(&:to_i)

all_pages = data[0]
show_pages = data[1]
select_page = data[2]
div_and_mod = all_pages.divmod(show_pages)
div = div_and_mod[0]
mod = div_and_mod[1]

# 最初のページに全部出す場合
if all_pages == show_pages
    if select_page == 1
        puts (1..all_pages).to_a
    else
        puts "none"
    end
# 最後のページを聞かれた場合
elsif div + 1 == select_page
    puts (show_pages*(select_page-1)+1..all_pages).to_a.join(" ")
    
elsif div + 1  < select_page
    puts "none"
else
    start = show_pages * select_page - show_pages + 1
    last = show_pages * select_page
    p (start..last).to_a.join(" ")
end
