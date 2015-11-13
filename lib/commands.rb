require_relative 'plants'
require_relative 'plots'
require_relative 'inventory'
require_relative 'shop'
require_relative 'crafting'


def menu1
puts "1. Plant something in an empty plot"
puts "2. Clear a plant from a plot"
puts "3. Harvest a plant"
puts "4. Inventory"
puts "5. Shop for supplies (work in progress)"
puts "6. Crafting Bench"
choice = gets.chomp
    case choice 
        when "1"
            plantmenu
        when "2"
            clearmenu
        when "3"
            harvestmenu
        when "4"
            invmenu
        when "5"
            shopmenu
        when "look"
            lookmenu
        when "refresh"
            game_loop
        when "6"
            crafting_bench
        when "s"
            save_game
            puts "Saving game...."
            sleep(3)
            game_loop
        when "ha"
        harvest_all
        else
            puts "That is not a valid option"
            #system("cls") or system("clear")
            game_loop
    end
end

def plantmenu
system ("cls") or system ("clear")
show_plots
puts
show_empty_plots
puts
puts "Which plot would you like to plant?"
puts "type f to return to farm"
plot_s = gets.chomp
@plotchoice = plot_s.to_i
    if @plotchoice > @player["plots"]
        puts "That is not a valid plot"
        plantmenu
    elsif plot_s == "f"
        game_loop
    else
        plantlist
        plant_plot(@plotchoice,@plantchoice)
        puts "Planting " +@plantchoice +" ..."
        sleep(2)
        game_loop
    end
end

def clearmenu
system ("cls") or system ("clear")
show_plots
puts "Which plot would you like to clear?"
plot_c = gets.chomp
clear_plot(plot_c.to_i)
puts "Clearing " + plot_c + " ..."
sleep(5)
game_loop
end

def harvestmenu
system ("cls") or system ("clear")
show_plots
puts "Which plot would you like to harvest?"
puts "...type f to return to farm"
hpick = gets.chomp
    if hpick == "f"
        game_loop
    else
@harvest = hpick.to_i
harvest_plot(@harvest)
end
end

def invmenu
system ("cls") or system ("clear")
show_inv
end

def shopmenu
system ("cls") or system ("clear")
puts "Heading to the shop..."
sleep(3)
shop_open
#puts "Shop not available yet"
#puts "Returning to farm..."
#sleep(3)
#game_loop
end

def lookmenu
system ("cls") or system ("clear")
puts "What plot would you like to look at?"
lp = gets.chomp
@lookplot = lp.to_i
puts "..."
look_plot(@lookplot)
end
