local blips = {
		-- The Prison
	 	{title="Prison", colour=59, id=461, x=1807.53, y=2605.59, z=45.565},
		
		-- Hospital
		
		{title="Hospital", colour=69, id=80, x=289.28, y=-587.02, z=43.565},

		-- Club Galaxy
		 {title="Galaxy Club", colour=32, id=93, x=354.37, y=299.32, z=104.04},

		-- Taxi Co
		{title="Taxi", colour=73, id=56, x=899.80, y=-180.99, z=73.86},
		
		-- VIP Vehicleshop
		{title="VIP Dealership", colour=5, id=225, x=-116.80, y=-606.24, z=36.28},
		
		-- Airplane Rent
		{title="Airplane Rent", colour=3, id=16, x=-941.27, y=-2954.67, z=13.28},
		
		-- Casino
		{title="Casino", colour=5, id=89, x=923.24, y=45.66, z=81.11},
		
		-- Yate
		{title="Yacht", colour=3, id=455, x=-2084.96, y=-1018.24, z=12.78},
		
		-- Mechanic
		{title="Mechanic", colour=64, id=488, x=930.23, y=-960.17, z=39.80},
		{title="Mechanic", colour=64, id=488, x=-337.66, y=-133.38, z=39.01},
		{title="Mechanic", colour=64, id=488, x=1176.81, y=2639.56, z=39.01},
		
		-- Huntiing
		
		{title="Hunting", colour=21, id=442, x=-769.04, y=5595.63, z=33.565},
		
		-- ERASE ↓↓
		{title="Weed Field", colour=1, id=310, x=-797.18, y=5934.54, z=21.53},
		{title="Weed Process", colour=1, id=310, x=1389.41, y=3604.57, z=38.94},
		{title="Chop Shop", colour=1, id=310, x=-557.94, y=-1693.31, z=19.24},
		{title="HydrochloricAcidFarm", colour=1, id=310, x=1902.94, y=4921.81, z=48.53},
		{title="SulfuricAcidFarm", colour=1, id=310, x=1601.79, y=6620.98, z=15.98},
		{title="SodiumHydroxideFarm", colour=1, id=310, x=-131.03, y=6084.33, z=31.15},
		{title="MethProcessing", colour=1, id=310, x=2433.59, y=4969.02, z=-38.50},
		{title="Money Wash", colour=1, id=310, x=1272.23, y=-1711.64, z=-38.50},
		{title="CokeField", colour=1, id=310, x=1670.16, y=6641.75, z=10.48},
		{title="CokeProcessing", colour=1, id=310, x=1442.91, y=6332.25, z=-39.01}, 
		{title="illegal shop", colour=1, id=310, x=1405.87, y=1137.67, z=109.70},
		{title="Human Labs", colour=1, id=310, x=3623.17, y=3750.38, z=28.70},
		{title="Pacific Standard", colour=1, id=310, x=247.72, y=220.76, z=106.70},
		-- ERASE ↑↑
}

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.7)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)


