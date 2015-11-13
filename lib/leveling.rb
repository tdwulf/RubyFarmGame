require_relative 'player'

def check_level

if @player["exp"] >= 10000
    @player["level"] = 10
elsif 
    @player["exp"] >= 9000
    @player["level"] = 9 
elsif 
    @player["exp"] >= 8000
    @player["level"] = 8 
elsif 
    @player["exp"] >= 7000
    @player["level"] = 7 
elsif 
    @player["exp"] >= 6000
    @player["level"] = 6 
elsif 
    @player["exp"] >= 5000
    @player["level"] = 5 
elsif 
    @player["exp"] >= 5000
    @player["level"] = 5 
elsif 
    @player["exp"] >= 4000
    @player["level"] = 4 
elsif 
    @player["exp"] >= 3000
    @player["level"] = 3 
elsif 
    @player["exp"] >= 2000
    @player["level"] = 2
elsif 
    @player["exp"] >= 1000
    @player["level"] = 1 
else 
    @player["level"] = 0
end
end
