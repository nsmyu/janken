hands = ["グー", "チョキ", "パー"]
directions = ["上", "下", "右", "左"]
janken_result = ""

loop {

puts "じゃんけん..."
puts "[0]グー　[1]チョキ　[2]パー"
player_hand = hands[gets.to_i]
program_hand = hands[rand(3)]
puts "ぽん！"
puts "あなた：#{player_hand} VS 相手：#{program_hand}"

while player_hand == program_hand do
  puts "あいこで..."
  puts "[0]グー　[1]チョキ　[2]パー"
  player_hand = hands[gets.to_i]
  program_hand = hands[rand(3)]
  puts "しょ！"
  puts "あなた：#{player_hand} VS 相手：#{program_hand}"
end

if player_hand == hands[0] && program_hand == hands [1] ||
   player_hand == hands[1] && program_hand == hands [2] ||
   player_hand == hands[2] && program_hand == hands [0]
     janken_result = "じゃんけんに勝ちました！" 
else janken_result = "じゃんけんに負けました！"
end

case janken_result
when "じゃんけんに勝ちました！"
  puts(janken_result)
  puts "あっちむいて..."
  puts "[0]上　[1]下　[2]左　[3]右"
  player_direction = directions[gets.to_i]
  program_direction = directions[rand(4)]
  puts "ほい！"
  puts "あなた:#{player_direction} VS 相手：#{program_direction}"
  if player_direction == program_direction
    puts "\e[41mあなたの勝ち！\e[0m"
    puts "もう一度勝負しますか？"
    puts "[0]はい　[1]いいえ"
    if gets.to_i == 1
      puts "また遊んでね！"
      break
    end
  end
when "じゃんけんに負けました！"
  puts(janken_result)
  puts "あっちむいて..."
  puts "[0]上　[1]下　[2]左　[3]右"
  player_direction = directions[gets.to_i]
  program_direction = directions[rand(4)]
  puts "ほい！"
  puts "あなた:#{player_direction} VS 相手：#{program_direction}"
  if player_direction == program_direction
    puts "\e[44mあなたの負け！\e[0m"
    puts "もう一度勝負しますか？"
    puts "[0]はい　[1]いいえ"
    if gets.to_i == 1
      puts "また遊んでね！"
      break
    end
  end
end

}
