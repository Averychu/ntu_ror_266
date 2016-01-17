begin 
  puts "|===============================================|" 
  puts "|     Welcome to Rock Paper Scissors!!!         |"
  puts "|===============================================|"
 
  begin 
    puts "please choose one of the following: R / P / S"
    user_input = gets.chomp.upcase
  end while !["R" , "P" , "S"].include?(user_input)

  arr = ["R" , "P" , "S"]
  if (arr.shuffle![0]) == (user_input)  
    puts "Computer is #{arr[0]}"
    puts "It is a draw!"
  elsif (arr.shuffle![0] == "R") && (user_input == "P") || (arr.shuffle![0] == "P") && (user_input == "S") || (arr.shuffle![0] == "S") && (user_input == "R") 
    puts "Computer is #{arr[0]}"
    puts "You win!"
  else (arr.shuffle![0] == "R") && (user_input == "S") || (arr.shuffle![0] == "P") && (user_input == "R") || (arr.shuffle![0] == "S") && (user_input == "P") 
    puts "Computer is #{arr[0]}"
    puts "You lose!"
  end 

  begin
    puts "PLAY AGAIN? Y / N"
    continue = gets.chomp.upcase
  end while !["Y" , "N"].include?(continue)

end while continue == "Y"
puts "Thank you for playing, see you next time!"