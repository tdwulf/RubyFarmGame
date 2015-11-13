require_relative 'player'
require_relative 'plants'
require_relative 'inventory'

def array_items

@items = []
#itemname = Array[ID, NAME, SELL, BUY]
itemcoffee = Array["1",'Coffee', 4, 6,]
itemcocoa = Array["2", 'Cocoa', 7, 9,]
itemorange = Array["3", 'Orange', 2, 4]
itemalmond = Array["4", 'Almond', 4, 6]
itemsugarcane = Array["5", 'SugarCane', 7, 11]
itemcinnamon = Array["6", 'Cinnamon', 5, 9]
@items.push(itemcoffee, itemcocoa, itemorange, itemalmond, itemsugarcane, itemcinnamon)
end

def shop_inventory
@shopitem = {}
@shopitem["gold"] = 1000
@shopitem["restocked"] = 0
    @shopitem["coffee"] = 20
    @shopitem["cocoa"] = 20
    @shopitem["orange"] = 20
    @shopitem["almond"] = 20
    @shopitem["cinnamon"] = 20
    @shopitem["sugarcane"] = 20

end

def shop_open
system ("cls") or system("clear")
puts "*****************************"
puts 
puts "     Welcome to the shop"
puts
puts "*****************************"
puts
puts "What would you like to do?"
puts "1. Buy"
puts "2. Sell"
puts "3. Return to farm"
shopanswer = gets.chomp
    case shopanswer
        when "1"
        shop_buy
        when "2"
        shop_sell
        when "3"
        game_loop
        else
        puts "Unrecognized key-mashing. Returning to farm"
        sleep(2)
        game_loop
    end
end 

def shop_sell
system("cls") or system("clear")
puts

    @items.each do |id, name, sellprice, x2|
    puts id + ". " + name +": " + sellprice.to_s + " gold" 
    end
puts
puts "What would you like to sell?"
sellchoice = gets.chomp
    @items.each do |id, name, sellprice, x2|
        if sellchoice == id
            name_d = name.downcase
            puts "You have #{@playeritem[name_d]} " + name.to_s+"s"
            puts "How many do you want to sell?"
            total = gets.chomp.to_i
                if total > @playeritem[name_d]
                    puts "You don't have that many to sell."
                    sleep(1)
                    shop_sell
                elsif
                    total * sellprice.to_i > @shopitem["gold"]
                    puts "I cannot afford that many"
                    puts "I only have #{shopitem["gold"]} gold"
                    sleep(2)
                    shop_sell 
                else
                    moneys = total * sellprice.to_i
                    @playeritem[name_d] -= total
                    @shopitem[name_d] += total
                    @player["gold"] += moneys
                    @shopitem["gold"] -= moneys
                    puts "You sold #{total} #{name} for " + moneys.to_s + "."
                end
        else
        end
    end
sleep(2)
shop_open
end

def shop_buy
system("cls") or system("clear")
puts
    @items.each do |id, name, x2, buyprice|
    puts id + ". " + name +": " + buyprice.to_s + " gold"
    end
    puts
    puts "P: Buy an empty plot:  300 gold"
puts
puts "What would you like to buy?"
buychoice = gets.chomp.downcase
    @items.each do |id, name, sellprice, x2|
        if buychoice != "p"
            if buychoice == id
                name_d = name.downcase
                puts "You have #{@playeritem[name_d]} " + name.to_s+"s"
                puts "How many do you want to buy?"
                total = gets.chomp.to_i
                    if total > @shopitem[name_d]
                        puts "I don't have that many to sell."
                        puts "I only have #{@shopitem[name]} " + name.to_s + "s."
                        sleep(1)
                        shop_sell
                    elsif
                        total * sellprice.to_i > @player["gold"]
                        puts "You cannot afford that many"
                        puts "I only have #{player["gold"]} gold"
                        sleep(2)
                        shop_sell 
                    else
                        moneys = total * sellprice.to_i
                        @playeritem[name_d] -= total
                        @shopitem[name_d] += total
                        @player["gold"] += moneys
                        @shopitem["gold"] -= moneys
                        puts "You sold #{total} #{name} for " + moneys.to_s + "."
                    end
                else
                end
        elsif buychoice == "p"
        buy_plots
        else
        end
end
        sleep(2)
        shop_open
end

def shop_restock
stocking = @shopitem["restocked"].to_i
playage = @player["age"].to_i
    if playage > stocking

        @shopitem.each do values + rand(1...10)
        end 
    else
    end
@shopitem["restocked"] = @player["age"]

end
