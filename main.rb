require './lib/plots'
require './lib/commands'
require './lib/plants'
require './lib/savegame'
require './lib/player'
require './lib/growing'
require './lib/shop'
require './lib/save_load'
require './lib/farms' 
require './lib/leveling'

def game_loop
check_status
player_age_check
check_level
system ("clear") or system ("cls")
puts
puts "***** #{@name}'s Farm *****"
puts "GOLD: #{@player["gold"]}   EXP: #{@player["exp"]}"
puts "*****************************"
show_plots
puts "*****************************"
puts "What would you like to do?"
puts

puts
menu1
end

def getname
    puts "*********************************"
    puts "**** Welcome to Console Farm ****"
    puts "*********************************"
    puts
    puts "What is your name, Farmer?"
    @name = gets.chomp
end

def welcome
system("clear") or system("cls")
puts "*********************************"
puts "**** Welcome to Console Farm ****"
puts "*********************************"
puts
puts "Hello " +@name.to_s+ "."
puts "what would you like to do?"
puts "1. New Game"
puts "2. Load Game"
gametype = gets.chomp
if gametype == "1"
    new_farm
elsif gametype == "2"
    load_farm
else
    welcome
end
end
