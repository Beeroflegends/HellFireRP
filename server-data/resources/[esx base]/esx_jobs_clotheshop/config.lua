Config = {}
Config.Locale = 'en'

Config.Price = 0

Config.DrawDistance = 5.0
Config.MarkerSize   = {x = 3.0, y = 3.0, z = 1.0}
Config.MarkerColor  = {r = 102, g = 102, b = 204}
Config.MarkerType   = 27

Config.Zones = {}

Config.Shops = {


	{x=301.20,    y=-599.56, z=43.28}
}

for i=1, #Config.Shops, 1 do
	Config.Zones['Shop_' .. i] = {
		Pos   = Config.Shops[i],
		Size  = Config.MarkerSize,
		Color = Config.MarkerColor,
		Type  = Config.MarkerType
	}
end
