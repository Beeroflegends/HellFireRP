ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)


-- Borrar shotgun coches policia
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		id = PlayerId()
		DisablePlayerVehicleRewards(id)	
	end
end)


Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1)
    -- List of pickup hashes (https://pastebin.com/8EuSv2r1)
    RemoveAllPickupsOfType(0xDF711959) -- carbine rifle
    RemoveAllPickupsOfType(0xF9AFB48F) -- pistol
    RemoveAllPickupsOfType(0xA9355DCD) -- pumpshotgun
	RemoveAllPickupsOfType(0x763F7121) -- mosquete
	RemoveAllPickupsOfType(0x5307A4EC) -- gusenberg
	RemoveAllPickupsOfType(0x741C684A) -- SMG asalto
	RemoveAllPickupsOfType(0x8967B4F3) -- Combat pistol
	RemoveAllPickupsOfType(0x2DD30479) -- Molotov
	RemoveAllPickupsOfType(0x1D9588D3) -- SMG micro
	RemoveAllPickupsOfType(0xB2B5325E) -- advance rifle
	RemoveAllPickupsOfType(0xF33C83B0) -- ak 47
	RemoveAllPickupsOfType(0x3B662889) -- ap pistol
	RemoveAllPickupsOfType(0xFD16169E) -- taser
	RemoveAllPickupsOfType(0xC69DE3FF) -- bidon
	RemoveAllPickupsOfType(0x278D8734) -- cuchillo
	RemoveAllPickupsOfType(0x5EA16D74) -- macana
	RemoveAllPickupsOfType(0x624fE830) -- compact ak 47
	RemoveAllPickupsOfType(0xA0973D5E) -- bz gas 
	RemoveAllPickupsOfType(0xDFE37640) -- navaja 
  end
end)