require 'bankaccount'

puts 'What you like to do? (D)eposit, (W)ithdraw or see (S)tatement'
  user_input = gets.chomp.upcase
  
    if user_input === 'D'
      puts 'How much would you like to deposit?'
    elsif user_input === 'W'
      puts 'How much would you like to withdraw?'
    elsif user_input === 'S'
      puts @balance
    end
