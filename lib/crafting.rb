require_relative 'plants'
require_relative 'player'
require_relative 'inventory'

def crafting_bench
system ("cls") or system("clear")
puts "*****************************"
puts 
puts "Welcome to the Crafting Bench"
puts
puts "*****************************"
puts
puts "Recipes Available:"
# this should be built into hashes 
# static recipe below
puts 
puts "1. Hot Chocolate. Needs 3 cocoa."
puts "2. Jen's Mocha. Needs 2 cocoa, 3 coffee, 2 cinnamon, 4 almonds"
puts "3. Orange Juice Needs 3 oranges"
puts
puts "What would you like to make?"
mc = gets.chomp
nomats = "You do not have enough materials"
    case mc
        when "1"
            if @playeritem["cocoa"] >= 3
            @playeritem["cocoa"] -= 3
            @player["exp"] += 20
            puts "You made a Hot Chocolate."
            puts "You gained 20 experience."
            sleep(2)
            crafting_bench
            else
            puts nomats
            sleep(2)
            crafting_bench
            end
        when "2"
            if @playeritem["cocoa"] >= 2 and @playeritem["coffee"] >= 3 and @playeritem["cinnamon"] >=2 and @playeritem["almond"] >= 4
            @playeritem["cocoa"] -= 2
            @playeritem["coffee"] -= 3
            @playeritem["cinnamon"] -=2
            @playeritem["almond"] -= 4
            @player["exp"] += 50
            puts "You made a Jen's Mocha."
            puts "You gained 50 experience.."
            sleep(1)
            puts "... and a decent buzz."
            sleep(2)
            crafting_bench
            else 
            puts nomats
            sleep(2)
            crafting_bench
            end
        when "3"
            if @playeritem["orange"] >= 3
            @playeritem["orange"] -= 3
            @player["exp"] += 15
            puts "You made Orange Juice."
            puts "You gained 15 experience."
            sleep(2)
            crafting_bench
            else
            puts nomats
            sleep(2)
            crafting_bench
            end
        when "f"
        game_loop
        else 
        puts "Im sorry Dave. I cant do "+ mc+" right now"
        sleep(2)
        crafting_bench
        end
  
end
