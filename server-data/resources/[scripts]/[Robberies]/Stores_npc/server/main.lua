local ESX

local cachedData = {}

TriggerEvent("esx:getSharedObject", function(obj) 
	ESX = obj 
end)

MySQL.ready(function()
	Citizen.Wait(500)

	local players = ESX.GetPlayers()

	if #players > 0 then
		TriggerClientEvent("storerobbery:eventHandler", players[1], "create_clerks")

		while not cachedData["networkedClerks"] do
			Citizen.Wait(0)
		end

		TriggerClientEvent("storerobbery:eventHandler", -1, "update_clerks", cachedData["networkedClerks"])
	end
end)

RegisterServerEvent("storerobbery:globalEvent")
AddEventHandler("storerobbery:globalEvent", function(options)
    TriggerClientEvent("storerobbery:eventHandler", -1, options["event"] or "none", options["data"] or nil)
end)

RegisterServerEvent("storerobbery:receiveBagCash")
AddEventHandler("storerobbery:receiveBagCash", function(cashAmount)	
	local player = ESX.GetPlayerFromId(source)

	if player then
		player.addMoney(cashAmount)

		TriggerClientEvent("esx:showNotification", source, "Robaste $" .. cashAmount .. ", lo guardas en tu bolsillo.")
	end
end)

ESX.RegisterServerCallback("storerobbery:createClerks", function(source, callback)
	local player = ESX.GetPlayerFromId(source)

	if player then
		local players = ESX.GetPlayers()

		if #players == 1 then
			callback(true)
		elseif cachedData["networkedClerks"] then
			callback(cachedData["networkedClerks"])
		else
			callback(true)
		end
	else
		callback(false)
	end
end)

ESX.RegisterServerCallback("storerobbery:updateClerks", function(source, callback, networkedClerks)
	local player = ESX.GetPlayerFromId(source)

	if player then
		if networkedClerks then
			cachedData["networkedClerks"] = networkedClerks

			callback(true)
		else
			callback(false)
		end
	else
		callback(false)
	end
end)