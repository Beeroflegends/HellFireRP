Config = {}

-- Pawn Shop Positions:
Config.PawnZones = {
	PawnShops = {
		Pos = {
			{x = -1459.30,  y = -414.26, z = 35.75},
			
		}
	}
}


-- Pawn Shop Marker Settings:
Config.KeyToOpenShop = 38														-- default 38 is E
Config.ShopMarker = 27 															-- marker type
Config.ShopMarkerColor = { r = 255, g = 255, b = 0, a = 100 } 					-- rgba color of the marker
Config.ShopMarkerScale = { x = 1.0, y = 1.0, z = 1.0 }  						-- the scale for the marker on the x, y and z axis
Config.ShopDraw3DText = "Press ~g~[E]~s~ to sell"					-- set your desired text here

-- Pawn Shop Item List:
Config.ItemsInPawnShop = {
	{ itemName = 'nswitch', label = 'Nintendo Switch', BuyInPawnShop = false, BuyPrice = 1000, SellInPawnShop = true, SellPrice = 100 },
	{ itemName = 'iphone', label = 'iPhone X', BuyInPawnShop = false, BuyPrice = 1000, SellInPawnShop = true, SellPrice = 100 },
	{ itemName = 'casio', label = 'Casio Watch', BuyInPawnShop = false, BuyPrice = 1000, SellInPawnShop = true, SellPrice = 100 },
	{ itemName = 'xbox', label = 'Xbox One', BuyInPawnShop = false, BuyPrice = 1000, SellInPawnShop = true, SellPrice = 100 },
	{ itemName = 'bluray', label = 'Bluray', BuyInPawnShop = false, BuyPrice = 1000, SellInPawnShop = true, SellPrice = 100 },
	{ itemName = 'book', label = 'Book', BuyInPawnShop = false, BuyPrice = 1000, SellInPawnShop = true, SellPrice = 100 },
	{ itemName = 'watch', label = 'iPod', BuyInPawnShop = false, BuyPrice = 1000, SellInPawnShop = true, SellPrice = 100 },
	{ itemName = 'drill', label = 'Drill', BuyInPawnShop = false, BuyPrice = 1000, SellInPawnShop = true, SellPrice = 100 },
	{ itemName = 'gamingperipherals', label = 'Headphones', BuyInPawnShop = false, BuyPrice = 500, SellInPawnShop = true, SellPrice = 100 },
	{ itemName = 'gpixel', label = 'Huawei P20', BuyInPawnShop = false, BuyPrice = 500, SellInPawnShop = true, SellPrice = 100 },
	{ itemName = 'moneda', label = 'Gold coin', BuyInPawnShop = false, BuyPrice = 500, SellInPawnShop = true, SellPrice = 100 },
	{ itemName = 'playstation', label = 'Playstation', BuyInPawnShop = false, BuyPrice = 500, SellInPawnShop = true, SellPrice = 100 },
	{ itemName = 'samsungs10', label = 'Samsung S10', BuyInPawnShop = false, BuyPrice = 500, SellInPawnShop = true, SellPrice = 100 },
	{ itemName = 'speaker', label = 'Speaker', BuyInPawnShop = false, BuyPrice = 500, SellInPawnShop = true, SellPrice = 100 },
	{ itemName = 'tablet', label = 'iPad', BuyInPawnShop = false, BuyPrice = 500, SellInPawnShop = true, SellPrice = 100 },
	{ itemName = 'laptop', label = 'Laptop', BuyInPawnShop = false, BuyPrice = 500, SellInPawnShop = true, SellPrice = 100 },
	{ itemName = 'gameboy', label = 'Game Boy', BuyInPawnShop = false, BuyPrice = 500, SellInPawnShop = true, SellPrice = 100 },
}

