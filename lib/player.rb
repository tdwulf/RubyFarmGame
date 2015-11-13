
def new_player
    name = @name
    @player = {}
    @player["gold"] = 1000
    @player["exp"] = 0
    @player["birth"] = Time.new
    @player["age"] = 0 # 1 = 3 days
    @player["level"] = 0
    @player["plots"] = 6
    @playeritem = {}
    @playeritem["coffee"] = 5
    @playeritem["cocoa"] = 5
    @playeritem["orange"] = 5
    @playeritem["almond"] = 5
    @playeritem["cinnamon"] = 5
    @playeritem["sugarcane"] = 5
    
    #@player["name"] = name
end

def player_age_check
playtime = Time.now - @player["birth"]
playage = playtime.to_i/259200
@player["birth"] = playage.to_i
end














