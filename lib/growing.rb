require_relative 'plots'
require_relative 'plants'
require_relative 'commands'
require_relative 'player'

def check_status
    @plots.each do |plot, plant|
    @plants.each do |x1, name, x2, x3, x4, htime|
    if plant == name
        if Time.now > @plotTimes[plot] + htime
            @plotStatus[plot] = 'ready'
        else
        end
    else
    end
     end
     end
end
            

