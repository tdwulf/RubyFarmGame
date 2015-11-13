require_relative 'player'
#require_relative 'plots'
#require_relative 'plants'
require_relative 'shop'

def show_inv
puts "****** #{@name}'s Inventory ******"
puts
puts "GOLD: #{@player["gold"]}  EXP: #{@player["exp"]}  Total Plots: #{@player["plots"]}"
puts

@playeritem.each do |name, amount|
puts name +": " +amount.to_s
end
puts 
puts "**********************************"
puts 
puts "What would you like to do?"
puts "1. Return to farm"
puts "2. Shop (buy/sell)"
choice = gets.chomp
    case choice
    when "1"
    game_loop
    when "2"
    shopmenu
    else
    puts "Invalid input. Returing to farm."
    sleep(2)
    game_loop
    end 
end
