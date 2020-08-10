Config = {}

-- Pawn Shop Positions:
Config.PawnZones = {
	PawnShops = {
		Pos = {
			{x = 1405.87,  y = 1137.63, z = 109.75},
			
		}
	}
}


-- Pawn Shop Marker Settings:
Config.KeyToOpenShop = 38														-- default 38 is E
Config.ShopMarker = 27 															-- marker type
Config.ShopMarkerColor = { r = 255, g = 255, b = 0, a = 100 } 					-- rgba color of the marker
Config.ShopMarkerScale = { x = 1.0, y = 1.0, z = 1.0 }  						-- the scale for the marker on the x, y and z axis
Config.ShopDraw3DText = "Press ~g~[E]~s~ to buy"					-- set your desired text here

-- Pawn Shop Item List:
Config.ItemsInPawnShop = {
	{ itemName = 'mosquete', label = 'Muskette', BuyInPawnShop = true, BuyPrice = 1000, SellInPawnShop = false, SellPrice = 2000 },
	{ itemName = 'ak47', label = 'AK 47', BuyInPawnShop = true, BuyPrice = 1000, SellInPawnShop = false, SellPrice = 2000 },
	{ itemName = 'advanced', label = 'Avanced Rifle', BuyInPawnShop = true, BuyPrice = 1000, SellInPawnShop = false, SellPrice = 2000 },
	{ itemName = 'adp', label = 'Combat PDW', BuyInPawnShop = true, BuyPrice = 1000, SellInPawnShop = false, SellPrice = 1200 },
	{ itemName = 'p90', label = 'P90', BuyInPawnShop = true, BuyPrice = 1000, SellInPawnShop = false, SellPrice = 1600 },
	{ itemName = 'microsmg', label = 'Micro SMG', BuyInPawnShop = true, BuyPrice = 1000, SellInPawnShop = false, SellPrice = 1000 },
	{ itemName = 'appistol', label = 'AP Pistol', BuyInPawnShop = true, BuyPrice = 1000, SellInPawnShop = false, SellPrice = 1400 },
	{ itemName = 'pistol', label = 'Pistol', BuyInPawnShop = true, BuyPrice = 1000, SellInPawnShop = false, SellPrice = 1600 },
	{ itemName = 'pistola30', label = 'x60 Pistol Ammo', BuyInPawnShop = true, BuyPrice = 500, SellInPawnShop = false, SellPrice = 1600 },
	{ itemName = 'smg30', label = 'x30 SMG Ammo', BuyInPawnShop = true, BuyPrice = 500, SellInPawnShop = false, SellPrice = 2000 },
	{ itemName = 'rifle30', label = 'x30 Rifle Ammo', BuyInPawnShop = true, BuyPrice = 500, SellInPawnShop = false, SellPrice = 1600 },
	{ itemName = 'muskete', label = 'x5 Muskette', BuyInPawnShop = true, BuyPrice = 500, SellInPawnShop = false, SellPrice = 3000 },
	{ itemName = 'thermal_charge', label = 'Thermite', BuyInPawnShop = true, BuyPrice = 500, SellInPawnShop = false, SellPrice = 3000 },
	{ itemName = 'hackerDevice', label = 'Hack Device', BuyInPawnShop = true, BuyPrice = 500, SellInPawnShop = false, SellPrice = 3000 },
	{ itemName = 'drill', label = 'Drill', BuyInPawnShop = true, BuyPrice = 500, SellInPawnShop = false, SellPrice = 3000 },
	{ itemName = 'laptop_h', label = 'Laptop', BuyInPawnShop = true, BuyPrice = 500, SellInPawnShop = false, SellPrice = 3000 },
	{ itemName = 'drugItem', label = 'Black USB-C', BuyInPawnShop = true, BuyPrice = 500, SellInPawnShop = false, SellPrice = 3000 },

}

