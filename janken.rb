def janken
  hands = ["グー", "チョキ", "パー"]
  puts "じゃんけん..."
  puts "[0]グー　[1]チョキ　[2]パー"
  player = gets.to_i
  program = rand(3)
  puts "ぽん！"
  puts "あなた：#{hands[player]} VS 相手：#{hands[program]}"

  while player == program
    puts "-----------------------"
    puts "あいこで..."
    puts "[0]グー　[1]チョキ　[2]パー"
    player = gets.to_i
    program = rand(3)
    puts "しょ！"
    puts "あなた：#{hands[player]} VS 相手：#{hands[program]}"
  end

  if (player == 0 && program == 1) || (player == 1 && program == 2) || (player == 2 && program == 0)
    puts "\e[41mじゃんけんに勝ちました！\e[0m"
    return true
  else
    puts "\e[44mじゃんけんに負けました\e[0m"
  end
end

def acchimuite_hoi
  directions = ["上", "下", "左", "右"]
  puts "あっちむいて..."
  puts "[0]上　[1]下　[2]左　[3]右"
  player = gets.to_i
  program = rand(4)
  puts "ほい！"
  puts "あなた：#{directions[player]} VS 相手：#{directions[program]}"
  puts "-----------------------"
  if player == program
    return true
  end
end

loop {
  round1 = janken
  round2 = acchimuite_hoi

  if round2 != true
    next
  end

  if round1 == true
    puts "\e[41mあなたの勝ち！おめでとう♪\e[0m"
  else
    puts "\e[44m残念、あなたの負けです\e[0m"
  end

  puts "もう一度勝負しますか？"
  puts "[0]はい　[1]いいえ"
  if gets.to_i == 1
    puts "また遊んでね！"
    break
  end
}

