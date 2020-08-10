local ESX 				= nil

local HeistTimer = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local YachtHeist 		= Config.Yacht

AddEventHandler('esx:playerLoaded', function(source)
    TriggerClientEvent('human:load', source, YachtHeist)
end)

RegisterServerEvent('human:refreshHeist')
AddEventHandler('human:refreshHeist', function()
    TriggerClientEvent('human:load', -1, YachtHeist)
end)

RegisterServerEvent('human:goonsSpawned')
AddEventHandler('human:goonsSpawned', function(id, status)
    local xPlayer = ESX.GetPlayerFromId(source)
    if YachtHeist[id].pairs ~= nil then
        YachtHeist[YachtHeist[id].pairs].GoonsSpawned=status
        TriggerClientEvent('human:statusGoonsSpawnedSend', -1, YachtHeist[id].pairs, status)
    end
    YachtHeist[id].GoonsSpawned=status
    TriggerClientEvent('human:statusGoonsSpawnedSend', -1, id, status)
end)

RegisterServerEvent('human:JobPlayer')
AddEventHandler('human:JobPlayer', function(id, status)
    local xPlayer = ESX.GetPlayerFromId(source)
    if YachtHeist[id].pairs ~= nil then
        YachtHeist[YachtHeist[id].pairs].JobPlayer=status
        TriggerClientEvent('human:statusJobPlayerSend', -1, YachtHeist[id].pairs, status)
    end
    YachtHeist[id].JobPlayer=status
    TriggerClientEvent('human:statusJobPlayerSend', -1, id, status)
end)

RegisterServerEvent('human:status')
AddEventHandler('human:status', function(id, status)
    local xPlayer = ESX.GetPlayerFromId(source)
    if YachtHeist[id].pairs ~= nil then
        YachtHeist[YachtHeist[id].pairs].started=status
        TriggerClientEvent('human:statusSend', -1, YachtHeist[id].pairs, status)
    end
    YachtHeist[id].started=status
    TriggerClientEvent('human:statusSend', -1, id, status)
end)

local policeOnline

ESX.RegisterServerCallback("human:GetPoliceOnline",function(source,cb)
	local Players = ESX.GetPlayers()
	policeOnline = 0
	for i = 1, #Players do
		local xPlayer = ESX.GetPlayerFromId(Players[i])
		if xPlayer["job"]["name"] == Config.PoliceDBname then
			policeOnline = policeOnline + 1
		end
	end
	if policeOnline >= Config.RequiredPolice then
		cb(true)
	else
		cb(false)
	end
end)

RegisterServerEvent('human:statusHack')
AddEventHandler('human:statusHack', function(id, state)
    local xPlayer = ESX.GetPlayerFromId(source)
    if YachtHeist[id].pairs ~= nil then
        YachtHeist[YachtHeist[id].pairs].keypadHacked=state
        TriggerClientEvent('human:statusHackSend', -1, YachtHeist[id].pairs, state)
    end
    YachtHeist[id].keypadHacked=state
    TriggerClientEvent('human:statusHackSend', -1, id, state)
end)

RegisterServerEvent('human:currentlyHacking')
AddEventHandler('human:currentlyHacking', function(id, state)
    local xPlayer = ESX.GetPlayerFromId(source)
    if YachtHeist[id].pairs ~= nil then
        YachtHeist[YachtHeist[id].pairs].currentlyHacking=state
        TriggerClientEvent('human:statusCurrentlyHackingSend', -1, YachtHeist[id].pairs, state)
    end
    YachtHeist[id].currentlyHacking=state
    TriggerClientEvent('human:statusCurrentlyHackingSend', -1, id, state)
end)

RegisterServerEvent('human:statusVault')
AddEventHandler('human:statusVault', function(id, state)
    local xPlayer = ESX.GetPlayerFromId(source)
    if YachtHeist[id].pairs ~= nil then
        YachtHeist[YachtHeist[id].pairs].vaultLocked=state
        TriggerClientEvent('human:statusVaultSend', -1, YachtHeist[id].pairs, state)
    end
    YachtHeist[id].vaultLocked=state
    TriggerClientEvent('human:statusVaultSend', -1, id, state)
end)

RegisterServerEvent('human:HeistIsBeingReset')
AddEventHandler('human:HeistIsBeingReset', function(id)
    local xPlayer = ESX.GetPlayerFromId(source)
	-- started:
	YachtHeist[id].started=false
    TriggerClientEvent('human:statusSend', -1, id, false)
	Citizen.Wait(1000)
	-- recently robbed:
	TriggerEvent("human:heistCooldown")
	YachtHeist[id].recentlyRobbed=true
    TriggerClientEvent('human:statusRecentlyRobbed', -1, id, true)
	-- hacked:
    YachtHeist[id].keypadHacked=false
    TriggerClientEvent('human:statusHackSend', -1, id, false)
	-- currently hacking:
    YachtHeist[id].currentlyHacking=false
    TriggerClientEvent('human:statusCurrentlyHackingSend', -1, id, false)
	-- vault:
    YachtHeist[id].vaultLocked=true
    TriggerClientEvent('human:statusVaultSend', -1, id, true)
	-- safe:
    YachtHeist[id].safeRobbed=false
    TriggerClientEvent('human:statusSafeRobbedSend', -1, id, false)
	-- drilling:
    YachtHeist[id].drilling=false
    TriggerClientEvent('human:statusDrillingSend', -1, id, false)
	-- cashTaken:
    YachtHeist[id].cashTaken=false
    TriggerClientEvent('human:statusCashTakenSend', -1, id, false)
	-- stealing:
    YachtHeist[id].stealing=false
    TriggerClientEvent('human:statusStealingSend', -1, id, false)
	-- GoonsSpawned:
    YachtHeist[id].GoonsSpawned=false
    TriggerClientEvent('human:statusGoonsSpawnedSend', -1, id, false)
	-- JobPlayer:
    YachtHeist[id].JobPlayer=status
    TriggerClientEvent('human:statusJobPlayerSend', -1, id, status)
end)

RegisterServerEvent('human:drilling')
AddEventHandler('human:drilling', function(id, state)
    local xPlayer = ESX.GetPlayerFromId(source)
    if YachtHeist[id].pairs ~= nil then
        YachtHeist[YachtHeist[id].pairs].drilling=state
        TriggerClientEvent('human:statusDrillingSend', -1, YachtHeist[id].pairs, state)
    end
    YachtHeist[id].drilling=state
    TriggerClientEvent('human:statusDrillingSend', -1, id, state)
end)

RegisterServerEvent('human:stealing')
AddEventHandler('human:stealing', function(id, state)
    local xPlayer = ESX.GetPlayerFromId(source)
    if YachtHeist[id].pairs ~= nil then
        YachtHeist[YachtHeist[id].pairs].stealing=state
        TriggerClientEvent('human:statusStealingSend', -1, YachtHeist[id].pairs, state)
    end
    YachtHeist[id].stealing=state
    TriggerClientEvent('human:statusStealingSend', -1, id, state)
end)

RegisterServerEvent('human:cashTaken')
AddEventHandler('human:cashTaken', function(id, state)
    local xPlayer = ESX.GetPlayerFromId(source)
    if YachtHeist[id].pairs ~= nil then
        YachtHeist[YachtHeist[id].pairs].cashTaken=state
        TriggerClientEvent('human:statusCashTakenSend', -1, YachtHeist[id].pairs, state)
    end
    YachtHeist[id].cashTaken=state
    TriggerClientEvent('human:statusCashTakenSend', -1, id, state)
end)

RegisterServerEvent('human:safeRobbed')
AddEventHandler('human:safeRobbed', function(id, state)
    local xPlayer = ESX.GetPlayerFromId(source)
    if YachtHeist[id].pairs ~= nil then
        YachtHeist[YachtHeist[id].pairs].safeRobbed=state
        TriggerClientEvent('human:statusSafeRobbedSend', -1, YachtHeist[id].pairs, state)
    end
    YachtHeist[id].safeRobbed=state
    TriggerClientEvent('human:statusSafeRobbedSend', -1, id, state)
	
	if policeOnline > 5 then
		policeReward = 5
	else
		policeReward = policeOnline
	end
	local cashReward = 0
	local itemReward = 0
	if Config.RewardBasedOnCops then
		cashReward = ((math.random(Config.SafeMinCash,Config.SafeMaxCash) * 1000) * policeReward)
		itemReward = ((math.random(Config.SafeMinItem,Config.SafeMaxItem) * 10) * policeReward)
	else
		cashReward = math.random(30000,80000)
		itemReward = math.random(0,1)
	end
	xPlayer.addInventoryItem('thermite',5)
	xPlayer.addMoney(cashReward)
--	TriggerClientEvent("esx:showNotification",source,"You received: ~r~$"..cashReward.."~s~ money and ~b~"..itemReward.."x~s~ ~y~Gold Watches~s~")

TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Robaste: $'..cashReward.." y 5 cargas de Termita", style = { ['background-color'] = '#0086C4', ['color'] = '#ffffff' } })
end)

ESX.RegisterServerCallback("human:updateCashTaken",function(source,cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	if policeOnline > 5 then
		policeReward = 5
	else
		policeReward = policeOnline
	end
	if xPlayer then
		local randomMoney = 0
		if Config.RewardBasedOnCops then
			randomMoney = math.random(4500,5800)
		else
			randomMoney = math.random(12500,19800)
		end
		xPlayer.addAccountMoney('black_money', randomMoney)
		cb(randomMoney)
	end
end)

-- Server Callback to get inventory hackerDevice:
ESX.RegisterServerCallback("human:getHackerDevice",function(source,cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.getInventoryItem(Config.HackerDevice).count >= 1 then
		cb(true)
	else
		cb(false)
	--	TriggerClientEvent("esx:showNotification",source,"You need a ~y~Hacker Device~s~ to hack the terminal!")
		
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = "No tienes lo necesario", style = { ['background-color'] = '#C40000', ['color'] = '#ffffff' } })
		
	end
end)

-- Server Callback to get inventory drill:
ESX.RegisterServerCallback("human:getDrillItem",function(source,cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.getInventoryItem(Config.DrillItem).count >= 1 then
		cb(true)
	else
		cb(false)
--		TriggerClientEvent("esx:showNotification",source,"You need a ~y~Drill~s~ to drill the safe!")
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = "No tienes taladro", style = { ['background-color'] = '#C40000', ['color'] = '#ffffff' } })
	end
end)

ESX.RegisterServerCallback("human:getCooldownHeist",function(source,cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	if YachtHeist[1].recentlyRobbed == false then
		cb(true)
	else
		cb(false)
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = "No puedes robar", style = { ['background-color'] = '#C40000', ['color'] = '#ffffff' } })
--		TriggerClientEvent("esx:showNotification",source,string.format("New heist available in: ~b~%s minutes~s~",GetCooldownTimer()))
	end
end)

-- server side for cooldown timer
RegisterServerEvent("human:heistCooldown")
AddEventHandler("human:heistCooldown",function()
	table.insert(HeistTimer,{time = (Config.CooldownTimer * 60000)}) -- cooldown timer for doing missions
end)

-- thread for syncing the cooldown timer
Citizen.CreateThread(function() -- do not touch this thread function!
	while true do
	Citizen.Wait(1000)
		for k,v in pairs(HeistTimer) do
			if v.time <= 0 then
				YachtHeist[1].recentlyRobbed=false
				TriggerClientEvent('human:statusRecentlyRobbed', -1, 1, false)
			else
				v.time = v.time - 1000
			end
		end
	end
end)

function GetCooldownTimer()
	for k,v in pairs(HeistTimer) do
		if v.time > 0 then
			return math.ceil(v.time/60000)
		end
	end
end
