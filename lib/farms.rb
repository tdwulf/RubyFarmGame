require_relative 'player'
require_relative 'plants'
require_relative 'save_load'
require_relative 'commands'
require_relative 'plots'



def welcome_message
@msg = Array[
"Chasing off a caffinated squirrel...",
"Finding a new saddle for the duck...",
"Removing a bucket from the dog's head...",
"Waking up the shop keeper...",
"Fighting off a Giant Dirt Worm..."]
end

def new_farm
array_plants
array_items
shop_inventory
new_player
system ("cls") or system ("clear")
puts
puts "Hello #{@name}. We are preparing your new farm."
sleep(3)
system ("cls") or system ("clear")
puts
puts "Plowing fields....."
#sleep(3)
system ("cls") or system ("clear")
puts
welcome_message
event = rand(0...4)
puts @msg[event]
#sleep(3)
system ("cls") or system ("clear")
puts
puts "Planting a Coffee tree....."
new_garden
plant_plot(1, "Coffee")
#sleep (3)
game_loop
end



def load_farm
load_game
array_plants
array_items

welcome_message
event = rand(0...4)
puts @msg[event]
sleep(2)
event2 = rand(0...4)
puts @msg[event2]
sleep(2)
game_loop
end
