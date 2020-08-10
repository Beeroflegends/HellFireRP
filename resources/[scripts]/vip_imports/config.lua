Config                            = {}
Config.DrawDistance               = 10.0
Config.MarkerColor                = { r = 120, g = 120, b = 240 }
Config.EnablePlayerManagement     = false -- enables the actual car dealer job. You'll need esx_addonaccount, esx_billing and esx_society
Config.EnableOwnedVehicles        = true
Config.EnableSocietyOwnedVehicles = false -- use with EnablePlayerManagement disabled, or else it wont have any effects
Config.ResellPercentage           = 0

Config.Locale = 'en'

Config.LicenseEnable = false -- require people to own drivers license when buying vehicles? Only applies if EnablePlayerManagement is disabled. Requires esx_license

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = true

Config.Zones = {

	ShopEntering = {
		Pos   = { x = -1578.25, y = -583.71, z = 104.80 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = 27
	},

	ShopInside = {
		Pos     = { x = -1580.78, y = -576.50, z = 104.75 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 302.43,
		Type    = -1
	},

	ShopOutside = {
		Pos     = { x = -144.71, y = -577.82, z = 32.42 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 158.82,
		Type    = -1
	}

}
