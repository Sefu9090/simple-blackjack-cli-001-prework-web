def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
  return Random.rand(11) + 1
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp.downcase
end

def end_game(total)
   puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  total
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == "h"
    total += deal_card
  elsif input == "s"
    total
  else
    invalid_command
    hit?(total)
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
until total > 21 do
  total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
