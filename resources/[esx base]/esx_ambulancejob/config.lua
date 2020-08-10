
Config                            = {}
local second = 1000
local minute = 60 * second
Config.Locale = 'en'

Config.DrawDistance               = 10.0
Config.Marker                     = { type = 1, x = 1.3, y = 1.3, z = 0.5, r = 230, g = 5, b = 10, a = 100, rotate = true }
Config.ReviveReward               = 80  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = false -- disable if you're using fivem-ipl or other IPL loaders
Config.EarlyRespawnTimer          = 1 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 2 * minute 
Config.EnablePlayerManagement     = true
Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = true
Config.EarlyRespawnFineAmount     = 1000

Config.RespawnPoint = { coords = vector3(361.55, -591.92, 43.32), heading = 62.41 }

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(374.68, -595.63, 28.82),
			sprite = 61,
			scale  = 1.0,
			color  = 2
		},

		AmbulanceActions = {
			vector3(298.63, -598.16, 42.28)
		},

-- DECOMENT THIS IF YOU WILL USE THE DEFAULT PHARMACY.
-- DESCOMENTAR ESTO SI USARAS LA FARMACIA POR DEFECTO. 
		Pharmacies = {
			vector3(306.80, -601.66,  42.29) 
		},

		Vehicles = {
			{
				Spawner = vector3(295.33, -601.87,43.26),
				InsideShop = vector3(292.16, -611.73, 43.39),
				
				Marker = { type = 36, x = 1.5, y = 1.5, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(274.15, -608.16, 42.9), heading = 275.91, radius = 5.0 },
					{ coords = vector3(287.9, -602.79,42.9), heading = 334.5, radius = 5.0 },
					{ coords = vector3(292.3, -590.69, 42.9), heading = 335.43, radius = 6.0 }
				}
			}
		},



		Helicopters = {
			{
				Spawner = vector3(351.51, -575.81, 74.17),
				InsideShop = vector3(352.0, -587.9, 74.17),
				Marker = { type = 34, x = 2.5, y = 2.5, z = 2.0, r = 230, g = 5, b = 10, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(352.0, -587.9, 74.17), heading = 275.66, radius = 10.0 }
					--{ coords = vector3(352.0, -587.9, 74.17), heading = 142.7, radius = 10.0 }
				}
			}
		},
	}
}

Config.AuthorizedVehicles = {

--------------------- Enfermero --------------------
	ambulance = {
		{ model = 'ambulance', label = 'Ambulancia', price = 100}
	},

	doctor = {
		{ model = 'ambulance', label = 'Ambulancia', price = 100}	
	},
	
	chief_doctor = {
		{ model = 'ambulance', label = 'Ambulancia', price = 100}
	},
	
	boss = {
		{ model = 'ambulance', label = 'Ambulancia', price = 100}

	}

}
---------------------------------------------------------------	

Config.AuthorizedHelicopters = {

	ambulance = {
		{ model = 'POLMAV', label = 'HELI EMS', price = 1500000 }
	},

	chief_doctor = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 150000 },
		{ model = 'POLMAV', label = 'HELI EMS', price = 150000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 300000 }
	},

	medicodecabezera = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 150000 },
			{ model = 'POLMAV', label = 'HELI EMS', price = 150000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 300000 }
	},

	subdirector = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 150000 },
			{ model = 'POLMAV', label = 'HELI EMS', price = 150000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 300000 }
	},

	boss = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 10000 },
			{ model = 'POLMAV', label = 'HELI EMS', price = 150000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }
	}

}
