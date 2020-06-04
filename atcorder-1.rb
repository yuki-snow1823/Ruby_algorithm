# 2020-05-31(日) 21:00 ~ 2020-05-31(日) 22:40 (100分) B - Multiplication 2
count = gets.to_i
answer = gets.split(" ").map(&:to_i).inject(:*)

if answer >= 10 ** 18
    p -1
else
    p answer
end
