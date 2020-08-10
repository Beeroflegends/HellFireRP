Config = {}
Config.Locale = 'en'

Config.Marker = {
	r = 250, g = 0, b = 0, a = 100,  -- red color
	x = 1.0, y = 1.0, z = 1.5,       -- tiny, cylinder formed circle
	DrawDistance = 5.0, Type = 27    -- default circle type, low draw distance due to indoors area
}

Config.PoliceNumberRequired = 2
Config.TimerBeforeNewRob    = 3600 -- The cooldown timer on a store after robbery was completed / canceled, in seconds

Config.MaxDistance    = 5   -- max distance from the robbary, going any longer away from it will to cancel the robbary
Config.GiveBlackMoney = true -- give black money? If disabled it will give cash instead

Stores = {
--[[	["paleto_twentyfourseven"] = {
		position = { x = 1734.97, y = 6420.83, z = 35.06 },
		reward = math.random(5000, 35000),
		nameOfStore = "24/7. (Paleto Bay)",
		secondsRemaining = 350, -- seconds
		lastRobbed = 0
	}, ]]--
--[[	["sandyshores_twentyfoursever"] = {
		position = { x = 1961.24, y = 3749.46, z = 32.34 },
		reward = math.random(3000, 20000),
		nameOfStore = "24/7. (Sandy Shores)",
		secondsRemaining = 200, -- seconds
		lastRobbed = 0
	},]]--
	["littleseoul_twentyfourseven"] = {
		position = { x = -709.75, y = -904.21, z = 19.25 },
		reward = math.random(3000, 20000),
		nameOfStore = "24/7. (Little Seoul)",
		secondsRemaining = 200, -- seconds
		lastRobbed = 0
	},
	["bar_one"] = {
		position = { x = 378.24, y = 333.36, z = 103.60 },
		reward = math.random(5000, 35000),
		nameOfStore = "Galaxy",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	},
	["ocean_liquor"] = {
		position = { x = -1479.01, y = -375.40, z = 39.20 },
		reward = math.random(3000, 30000),
		nameOfStore = "Robs Liquor. (Great Ocean Highway)",
		secondsRemaining = 200, -- seconds
		lastRobbed = 0
	},
	["rancho_liquor"] = {
		position = { x = 1126.80, y = -980.40, z = 45.46 },
		reward = math.random(3000, 50000),
		nameOfStore = "Robs Liquor. (El Rancho Blvd)",
		secondsRemaining = 200, -- seconds
		lastRobbed = 0
	},
	["sanandreas_liquor"] = {
		position = { x = -1220.72, y = -916.04, z = 11.33 },
		reward = math.random(3000, 30000),
		nameOfStore = "Robs Liquor. (San Andreas Avenue)",
		secondsRemaining = 200, -- seconds
		lastRobbed = 0
	},
	["grove_ltd"] = {
		position = { x = -43.38, y = -1748.38, z = 29.42 },
		reward = math.random(3000, 15000),
		nameOfStore = "LTD Gasoline. (Grove Street)",
		secondsRemaining = 200200, -- seconds
		lastRobbed = 0
	}, 
	
	["carwash"] = {
		position = { x = 28.13, y = -1339.59, z = 29.62 },
		reward = math.random(3000, 15000),
		nameOfStore = "24/7",
		secondsRemaining = 200200, -- seconds
		lastRobbed = 0
	},
	["mirror_ltd"] = {
		position = { x = 1159.56, y = -314.06, z = 69.28 },
		reward = math.random(70000, 120000),
		nameOfStore = "Mirror Park",
		secondsRemaining = 5, -- seconds
		lastRobbed = 0
	},
	
}
