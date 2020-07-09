require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  deal_card
  deal_card
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end


# def hit?(card_total)
#   prompt_user
#   x = get_user_input
#   if x == 's'
#    card_total
#   elsif x == 'h'
#     card_total = deal_card + card_total
#      card_total
#   else
#     invalid_command
#     hit?(card_total)
#   end
# end

def hit?(card_total)
  prompt_user
  x = get_user_input.to_s
  while x != 's' && x != 'h'
    invalid_command
    x = get_user_input.to_s
  end
    card_total = deal_card + card_total if x == 'h'
    card_total if x == 's'
end

p hit?(7)

#####################################################
# get every test to pass before coding runner below #
#####################################################

# def runner
#   welcome
#   card_total = initial_round
#   until card_total >= 21 do
#     card_total = hit?(card_total)
#     display_card_total(card_total)
#   end
#   end_game(card_total)
# end
