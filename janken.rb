
def janken(player_hand)
    janken_hand = ['グー', 'チョキ', 'パー']
    random = Random.new()
    #0〜2までの乱数を代入
    enemy_hand = random.rand(3)

    puts "あなたの手:#{janken_hand[player_hand]}、相手の手:#{janken_hand[enemy_hand]}"

    if player_hand == enemy_hand
        puts 'あいこで'
        return true
    elsif(player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) ||
        (player_hand == 2 && enemy_hand == 0)
        puts 'あなたの勝ちです'
        return false
    else
        puts 'あなたの負けです'
        return false
    end

end

puts '最初はグー、じゃんけん...'
puts '[0]:グー'
puts '[1]:チョキ'
puts '[2]:パー'

next_game = true

#あいこの場合、無効の入力の場合続ける
while(next_game)

    #手の入力(文字列で代入)
    input = gets

    #正規化表現
    if input =~ /^[0-2]$/
        input = input.to_i
        next_game = janken(input)
    elsif input =~ /^[3-9]$/
        puts '入力された値が無効です'
        next_game = false
    else
        next_game = false
    end

end