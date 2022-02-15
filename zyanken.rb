def battle
  puts "じゃんけん。。。"
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  zyanken = gets.to_i
  randam = rand(3)
  
  result = ["グー","チョキ","パー"]
  puts "-------------------------"
  puts "あなた:#{result[zyanken]}"
  puts "相手:#{result[randam]}"
  if zyanken == randam
    puts "あいこです"
    return true
  elsif zyanken == 0 && randam == 1 
    puts "あなたの勝ちです"
    puts "-------------------------"
    case_pattern = "victory"
  elsif zyanken == 1 && randam == 2 
    puts "あなたの勝ちです"
    puts "-------------------------"
    case_pattern = "victory"
  elsif zyanken == 2 && randam == 0 
    puts "あなたの勝ちです"
    puts "-------------------------"
    case_pattern = "victory"
  elsif zyanken == 3
    puts "また挑戦してね！"
  else
    puts "あなたの負けです"
    puts "-------------------------"
    case_pattern = "lost"
  end
  
  case case_pattern
  when "victory"
    puts "あっちむいて〜"
    puts "0(上)1(下)2(左)3(右)"
    hoi=gets.to_i
    hoi2=rand(4)
    puts "ホイ！"
    puts "-------------------------"
    result2=["上","下","左","右"]
    
    puts "あなた:#{result2[hoi]}"
    puts "相手:#{result2[hoi2]}"
    puts "-------------------------"
    if hoi == hoi2
      puts "あなたの勝ちです"
    else
      return true
    end
    
    when "lost"
      puts "あっちむいて〜"
    puts "0(上)1(下)2(左)3(右)"
    hoi=gets.to_i
    hoi2=rand(4)
    puts "ホイ！"
    puts "-------------------------"
    result2=["上","下","左","右"]
    
    puts "あなた:#{result2[hoi]}"
    puts "相手:#{result2[hoi2]}"
    puts "-------------------------"
    if hoi == hoi2
      puts "あなたの負けです"
    else
      return true
    end
  end
end

next_game = true
while next_game
  next_game = battle
end