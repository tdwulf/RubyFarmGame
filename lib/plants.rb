require_relative 'plots'
require_relative 'commands'

def array_plants
@plants = []
#plantname = Array[ID, NAME, COST, EXP, RAND, TIME]
coffee = Array["1",'Coffee', 10, 10, 6, 120]
cocoa = Array["2", 'Cocoa', 15, 15, 8, 180]
orange = Array["3", 'Orange', 15, 15, 8, 180]
almond = Array["4", 'Almond', 20, 20, 10, 180]
sugarcane = Array["5", 'SugarCane', 30, 30, 10, 120]
cinnamon = Array["6", 'Cinnamon', 50, 60, 6, 180]
@plants.push(coffee, cocoa, orange, almond, sugarcane)

end

def plantlist
system ("cls") or system("clear")
puts "What would you like to plant?"
@plants.each do |id, name|
puts id +". " + name
end

pick = gets.chomp
    if @plants.size < pick.to_i
        puts "That is not a valid option"
        sleep(1)
        plantlist
    else
        ipick = pick.to_i - 1
        @plantchoice = @plants[ipick][1]
    end
end

def plantreward(reward)
#reward = @plots[toharvest]
    @plants.each do |x, plant, x2, exp, rn|
        if reward == plant
        loot = rand(rn)+1
        s_loot = loot.to_s
        loottag = plant.downcase
        plantid = x.to_i - 1
        playerxp = loot + @plants[plantid][4]
        s_exp = playerxp.to_s
        @playeritem[loottag] += loot 
        @player["exp"] += playerxp
        puts "You harvested "+ s_loot +" " + reward
        puts "You earned " + s_exp +" experience."
        sleep(3)
        game_loop
        else
        end
    end
end

def plantreward_all(reward)
#reward = @plots[toharvest]
    @plants.each do |x, plant, x2, exp, rn|
        if reward == plant
        loot = rand(rn)+1
        s_loot = loot.to_s
        loottag = plant.downcase
        plantid = x.to_i - 1
        playerxp = loot + @plants[plantid][4]
        s_exp = playerxp.to_s
        @playeritem[loottag] += loot 
        @player["exp"] += playerxp
        puts "You harvested "+ s_loot +" " + reward
        puts "You earned " + s_exp +" experience."
        sleep(1)
        #game_loop
        else
        end
    end
end
