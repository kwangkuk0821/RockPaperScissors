#encoding utf-8
choices = %w(바위 보 가위)
draws = wins = loses = 0


puts "--------------------------------------------------------"
puts "가위! 바위! 보!!!!!!!!"
puts "--------------------------------------------------------"
puts "10 승을 먼저 달성하면 승리,"
puts "10 패을 먼저 달성하면 패배입니다."
puts "--------------------------------------------------------"

print "\n컴퓨터의 주먹을 만드는 중"

10.times do
  sleep 0.5
  shuffle
  print "."
end

system "clear"

begin
  begin
    puts "\n--------------------------------------------------------"
    puts "가위 바위 보 중 하나를 입력해주십시오"
    puts "--------------------------------------------------------\n\n"
    my_choice = gets
    my_choice.strip!
  end until choices.include? my_choice

  computer_choice = rand 3

  puts "--------------------------------------------------------"
  puts "당신은 '#{my_choice}' 를 냈고 컴퓨터는 '#{choices[computer_choice]}'를 냈습니다"

  if my_choice == choices[computer_choice]
    puts "서로 비겼습니다"
    draws += 1
  elsif my_choice == choices[computer_choice - 1]
    puts "패배했습니다"
    loses +=1
  else
    puts "이겼습니다"
    wins += 1
  end

  puts "현재 결과 : #{wins} 승 #{draws} 무 #{loses} 패"
  puts "--------------------------------------------------------"
  sleep 1
  system "clear"
end until wins >= 10 || loses >= 10

if wins >= 10 
  puts "10 승을 먼저 달성했으므로 당신의 승리입니다! :)"
else
  puts "10 패을 먼저 달성했으므로 당신의 패배입니다! :("
end

puts "--------------------------결과--------------------------"
puts "당신의 전적   : #{wins} 승 #{draws} 무 #{loses} 패"
puts "컴퓨터의 전적 : #{loses} 승 #{draws} 무 #{wins} 패"
puts "--------------------------------------------------------"
