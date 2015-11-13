require 'yaml'
require 'fileutils'
require_relative 'player'



def save_game
FileUtils.mkdir_p "./saves/#{@name}"
#save player information 
shopdata = YAML.dump(@shopitem)
shopfile = File.new("./saves/#{@name}/shop.txt", 'w')
shopfile.write(shopdata)
shopfile.close

#save player information 
playerdata = YAML.dump(@player)
playerfile = File.new("./saves/#{@name}/player.txt", 'w')
playerfile.write(playerdata)
playerfile.close

#save player inventory information
itemdata = YAML.dump(@playeritem)
itemfile = File.new("./saves/#{@name}/items.txt", 'w')
itemfile.write(itemdata)
itemfile.close

#save plots information
plotsdata = YAML.dump(@plots)
plotsfile = File.new("./saves/#{@name}/plots.txt", 'w')
plotsfile.write(plotsdata)
plotsfile.close

plotsdataT = YAML.dump(@plotTimes)
plotsfileT = File.new("./saves/#{@name}/plotTimes.txt", 'w')
plotsfileT.write(plotsdataT)
plotsfileT.close

plotsdataS = YAML.dump(@plotStatus)
plotsfileS = File.new("./saves/#{@name}/plotStatus.txt", 'w')
plotsfileS.write(plotsdataS)
plotsfileS.close

##plants
plantsdata = YAML.dump(@plants)
plantsfile = File.new("./saves/#{@name}/plants.txt", 'w')
plantsfile.write(plantsdata)
plantsfile.close

end


def load_game

# Loads shop information 
shopfile = File.open("./saves/#{@name}/shop.txt", 'r')
@shopitem = YAML.load(shopfile)
shopfile.close

# Loads player information 
playerfile = File.open("./saves/#{@name}/player.txt", 'r')
@player = YAML.load(playerfile)
playerfile.close

# Loads player inventory information
itemfile = File.new("./saves/#{@name}/items.txt", 'r')
@playeritem = YAML.load(itemfile)
itemfile.close

# Loads plots information
plotsfile = File.new("./saves/#{@name}/plots.txt", 'r')
@plots = YAML.load(plotsfile)
plotsfile.close

plotsfileT = File.new("./saves/#{@name}/plotTimes.txt", 'r')
@plotTimes = YAML.load(plotsfileT)
plotsfileT.close

plotsfileS = File.new("./saves/#{@name}/plotStatus.txt", 'r')
@plotStatus = YAML.load(plotsfileS)
plotsfileS.close


end
