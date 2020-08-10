How does the robberies works and how can I change the rewards?

A ) House Robberies:

1 - 'You need advancedlockpick item and be late night (11pm - 5am) in order to be able to rob a house'
2 - "The 1st time you enter a house you can experience a free fall to abysm and is normal, the house didn't load too fast the 1st time, you need to relog"
	"This will happen to almost everyone the first time they join the server and rob or if they erased cache folder"

	How can I change how much money players receive from the safe minigame? 

1 - "Go to Resources > [scripts] > [robberies] > [houserobberies] > houseRobberies > server.lua"
2 - "Line 54  'local cash = math.random(100, 800)' you need to modify the values 100 and 800. How does this works? It's a math random function, the script gives you a random ammount from 100 to 800"
	"The minimum  ammount players can receive is 100 and the maximum is 800, but of course they can receive any other quantity inside that range of numbers"

	How can I change the money the people get from PawnShop?

1 - "Go to your Resources folder > [scripts] > [Robberies] > Pawnshop > config.lua"
2 - "There you can see a list with all the items, just change the 'sellprice' value on each item"
	"Ignore the 'buyprice' it's currently off so people can't buy the items from Pawnshop"
	
B ) Store Robberies

	"There's currently 2 ways to rob a store, you can open the safe on back or you can aim to the cashier and rob the money"
	"If you decide to rob money from cashier you need to aim him with a gun and wait until the bar is fully loaded, be careful because there's a minimum chance the cashier grabs his shotgun and shoots you!"
	"The other method is the same crackingsafe minigame from house robberies"
	
	
	How can I change the amount of money a player gets from the cashier and from the store safe?
	
1 - "Resources > [scripts] > [Robberies] > Stores > server > main.lua"
2 - "Change the values on line 95 'local pago = math.random(2000,3500)', again this is a math random function so change both values. Left is the minimum and right the maximum ammount a player can receive from safe"

3 - "For the cashier rob you need to modify the config.lua file on Resources > [scripts] > [Robberies] > Stores_npc"
4 - "Line 8 and 9 you can change the reward and please don't forget the comma"


C) Fleeca Bank

	Items needed: "lockpick: to open the doors | bankidcard: to open the vault door | oxycutter: to open safes"

	"You can buy the lockpick and oxycutter on Youtool"

1 - "You need to do the lockpick minigame in order to get the cashier door open and rob the bankidcard" 
2 - "Go to the vault panel and press E to use the bankidcard and get the door open"
3 - "Press E on safes to open, you need to do this on every safe"

	"The script has a cooldown which prevents players from rob the same bank over and over again. You can change it on Resources > [scripts] > [Robberies] > Fleeca > config.lua > line 18"
	"If you want to change how much money a player receives per safe you can change it on the server.lua file, line 65 'local dinero = math.random(1000,2000)'"
	
D) Humane

	Items Needed: "oxygen_mask" | "You can get it from Youtool"

1 - "You need to find the underwater entrande to Humanlabs"
2 - "When you enter press E on yellow circle to start the rob and send an alert to LSPD"
3 - "Walk to the panel and press E to start the hacking minigame"
4 - "If you do it correctly you can now press E to open the door"
5 - "Run to the elevator and rob the money from the office"

	Wanna change the amount of money that this robbery gives?
 
 1 - "Go to Resources > [scripts] > [Robberies] > Humane > server.lua and modify the math random funcion on line 222"
 

E) Vangelico

1 - "Brake the glasses and steal the items"
2 - "Optional: Open the safe and steal the money"
	
	"You have a config file where you can change all the rewards"


F) Pacific Standard

	Items needed: "laptop_h | id_card | thermal_charge | lockpick"
	
1 - "You have 2 options here: You can do the silent robbery or the loud"
2 - "For silent robbery you will need lockpicks and search inside the bank for the id_card"
3 - "For the loud you will need thermal_charge"
4 - "The laptop_h is needed on both silent and loud"
5 - "Once you opened the vault you will have 90 seconds to steal everything before a lethal gas kills you inside"
6 - "You can change all the parameters on server.lua lines 3 - 9"


G) Yacht

	Items needed: "oxygen_mask | You can buy it on Youtool"
	
1 - "Go to the Yacht location and activate the robbery, put on your oxygen mask and go under sea searching for the captain briefcase"
2 - "There's 20 points where to search under sea before you get the briefcase with the money"
3 - "You can change the amount of money you get on Yacht > server > main.lua line 61"