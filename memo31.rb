numbers = (1..10).to_a
rule = [["<", 5],["%", 2]]

rule.each do |b|
    numbers.select! do |a|
        if b[0] == "<" 
            a <= b[1]
        else
            a % b[1] == 0
        end
    end
end

p numbers # [2,4]
