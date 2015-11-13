require_relative 'plants'
require_relative 'player'
	
def new_garden
    @plots = {"plot1" => "empty", "plot2" => "empty", "plot3" => "empty", "plot4" => "empty", "plot5" => "empty", "plot6" => "empty",}

    @plotTimes = {"plot1" => "empty", "plot2" => "empty", "plot3" => "empty", "plot4" => "empty", "plot5" => "empty", "plot6" => "empty",}
    
    @plotStatus = {"plot1" => "empty", "plot2" => "empty", "plot3" => "empty", "plot4" => "empty", "plot5" => "empty", "plot6" => "empty",}
    
    
end

def show_plots
puts "You have a total of #{@plots.size} plots."
puts
puts "Current plants:"
    @plots.each do |plot, plant|
        if plant != 'empty'
        ptime = (Time.now - @plotTimes[plot]).round(2)
        sptime = ptime.to_s
            puts plot + ':  ' + plant +", #{@plotStatus[plot]}, " + sptime
        else
        end
    end

end

def show_empty_plots
#puts "You have a total of #{@plots.size} plots."
puts
puts "Empty Plots:"
    @plots.each do |plot, plant|
        if plant == 'empty'
            puts plot + ':  ' + plant
        else
        end
    end

end

def plant_plot(num,plant)
    @plants.each do |x, name, cost, exp|
        if name == plant
        @pcost = cost.to_i
        else
        end
    end    
    if @player["plots"].size >= num
        toplant = "plot"+num.to_s
        if @plots[toplant] == 'empty'
            @plots[toplant] = plant
            @plotTimes[toplant] = Time.new
            @plotStatus[toplant] = 'growing'
            @player["exp"] += 10
            @player["gold"] -= @pcost
            puts "You spent " + @pcost.to_s + " gold."
            puts "You earned 10 experience."
            sleep (1)

        else
            puts "That plot is not empty"
        end
    else 
        puts "That is not a valid plot number"
    end
end

def clear_plot(num)
    toclear = "plot"+num.to_s
    if @plots[toclear] == 'empty'
        puts "That plot is already empty"
    else
        @plots[toclear] = 'empty'
        @plotTimes[toclear] = 'empty'
        @plotStatus[toclear] = 'empty'
    end
end

def harvest_plot(num)
    toharvest = "plot"+num.to_s
        if @plotStatus[toharvest] == 'empty'
            puts "There is nothing growing there"
            sleep(2)
            harvestmenu
        elsif
            @plotStatus[toharvest] == 'growing'
            puts "This plant is not ready to harvest"
            sleep(2)
            harvestmenu
        else 
            puts "Harvesting #{@plots[toharvest]}..."
            @plotStatus[toharvest] = 'growing'
            @plotTimes[toharvest] = Time.new
            plantreward(@plots[toharvest])
        end
end

def look_plot(num)
system("cls") or system("clear")
puts "Getting a closer look...."
sleep(2)
system("cls") or system("clear")
lplot = "plot"+num.to_s
if @plots[lplot] != 'empty'
        @plants.each do |id, name, cost, exp, rn, htime|
        if name == @plots[lplot] 
            puts "***** " + lplot +" *****"
            puts
            puts "Plant: " +name
            puts "Cost: " +cost.to_s
            puts "Base XP: " + exp.to_s
            puts "Harvest amount: 1 - "+rn.to_s
            puts "Grow Time (seconds): " + htime.to_s
            puts
            puts "*************************"
            puts
            puts "1. Return to farm"
            answer = gets.chomp
                if answer == '1'
                game_loop
                else
                puts answer + " is not valid choice. Go back to the farm and think about what you have done."
                sleep(3)
                game_loop
                end
        end
    end
    else
    puts "That plot appears to be empty"
    sleep (2)
    game_loop
    end
end

def buy_plots
        plotp = @plots.size.to_i + 1
        newplot = "plot"+plotp.to_s
        @plots.store(newplot,"empty")
        @player["plots"] += 1
        @player["gold"] -= 300
puts "You added an empty plot to your farm"
puts "You now have " + @player["plots"].to_s + " total plots."
@plots.each do |plot, plant|
puts plot +": " + plant
end
sleep(2)
shop_open
end

def harvest_all
@plotStatus.each do |name, stat|
toharvest = name.to_s
    if stat == "ready"
        @plotStatus[toharvest] = 'growing'
        @plotTimes[toharvest] = Time.new
        plantreward_all(@plots[toharvest])
    else
    end
end
game_loop
end
