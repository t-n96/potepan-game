def first_game
    
texts = ["グー", "チョキ", "パー"]
puts "じゃんけん..."
puts "0 (グー), 1 (チョキ), 2(パー)"

player = gets.to_i
program = rand(3)

puts "---------------------"
puts "あなた：#{texts[player]}を出しました。"
puts "あいて：#{texts[program]}を出しました。"
puts "---------------------"

$resule = 0

if player == program
    puts "あいこで〜"
    $resule = 1
    return true
elsif (player == 0 && program == 1) || (player == 1 && program == 2) || (player == 2 && program == 0)
    puts "あなたの勝ち"
    $resule = 2
    return false
else 
    puts "あなたの負け"
    return false
end
    return $resule
    
end


puts "---------------------"


def second_game
puts "あっち向いて〜"
puts "0 (↑), 1 (↓), 2(←), 3(→)"
    
arrows = ["上","下","左","右"]
player = gets.to_i
program = rand(4)

puts "---------------------"

puts "あなた：#{arrows[player]}"
puts "あいて：#{arrows[program]}"

if player == program && ($resule == 2)
    puts "勝者：あなた"
    return false
elsif player == program && ($resule == 0)
    puts "勝者：あいて"
    return false
else
    return true
end

end

    
def loop
    if first_game == true
        return true
    elsif second_game == true
        return true
    else
        return false
    end
end

next_game = true

while next_game do
    next_game = loop
end