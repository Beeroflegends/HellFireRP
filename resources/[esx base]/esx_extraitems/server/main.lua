ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



-- Oxygen Mask
ESX.RegisterUsableItem('oxygen_mask', function(source)
	TriggerClientEvent('esx_extraitems:oxygen_mask', source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('oxygen_mask', 1)
end)

-- Bullet-Proof Vest
ESX.RegisterUsableItem('bulletproof', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:bulletproof', source)
	xPlayer.removeInventoryItem('bulletproof', 1)
end)


-- First Aid Kit
ESX.RegisterUsableItem('firstaidkit', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)	
	TriggerClientEvent('esx_extraitems:firstaidkit', source)	
	xPlayer.removeInventoryItem('firstaidkit', 1)
end)

-- Weapon Clip
ESX.RegisterUsableItem('clip', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:clipcli', source)
	xPlayer.removeInventoryItem('clip', 1)
end)

--[[ Energy Bar
ESX.RegisterUsableItem('energybar', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('energybar', 1)

	TriggerClientEvent('esx_status:add', source, 'stamina', 200000)
	TriggerClientEvent('esx_basicneeds:onBar', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_energybar'))
end) ]]--

-- Vision Nocturna
-- Nightvision

ESX.RegisterUsableItem('Nightvision', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	  TriggerClientEvent('Nightvision', source)
end)

-- AK 47

ESX.RegisterUsableItem('ak47', function(source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	
	xPlayer.addWeapon('WEAPON_ASSAULTRIFLE')
	xPlayer.removeInventoryItem('ak47', '1')
end)

-- P90

ESX.RegisterUsableItem('p90', function(source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	
	xPlayer.addWeapon('WEAPON_ASSAULTSMG')
	xPlayer.removeInventoryItem('p90', '1')
end)

-- Micro SMG

ESX.RegisterUsableItem('microsmg', function(source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	
	xPlayer.addWeapon('WEAPON_MICROSMG')
	xPlayer.removeInventoryItem('microsmg', '1')
end)

-- Mosquete

ESX.RegisterUsableItem('mosquete', function(source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	
	xPlayer.addWeapon('WEAPON_MUSKET')
	xPlayer.removeInventoryItem('mosquete', '1')
end)

-- AP Pistol

ESX.RegisterUsableItem('appistol', function(source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	
	xPlayer.addWeapon('WEAPON_APPISTOL')
	xPlayer.removeInventoryItem('appistol', '1')
end)

-- ADP COMBATE

ESX.RegisterUsableItem('adp', function(source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	
	xPlayer.addWeapon('WEAPON_COMBATPDW')
	xPlayer.removeInventoryItem('adp', '1')
end)

-- Pistola

ESX.RegisterUsableItem('pistola', function(source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	
	xPlayer.addWeapon('WEAPON_PISTOL')
	xPlayer.removeInventoryItem('pistola', '1')
end)

-- Advanced Rifle

-- Pistola

ESX.RegisterUsableItem('advanced', function(source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	
	xPlayer.addWeapon('WEAPON_ADVANCEDRIFLE', 150)
	xPlayer.removeInventoryItem('advanced', '1')
end)