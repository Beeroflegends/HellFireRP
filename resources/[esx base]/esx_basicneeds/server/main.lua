ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('bread', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bread', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)

	TriggerClientEvent('esx_basicneeds:onEat', source)
--	TriggerClientEvent('esx:showNotification', source, _U('used_bread'))
	TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'success', text = _U('used_bread'), length = 4000, style = { ['background-color'] = '#32639A', ['color'] = '#ffffff' } })
end)



ESX.RegisterUsableItem('chickensalad', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('chickensalad', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 450000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_chickensalad'))
end)

ESX.RegisterUsableItem('chips', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('chips', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 450000)
	TriggerClientEvent('esx_basicneeds:eat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_chickensalad'))
end)

ESX.RegisterUsableItem('gardensalad', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('gardensalad', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 450000)
	TriggerClientEvent('esx_basicneeds:eat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_gardensalad'))
end)



ESX.RegisterUsableItem('water', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('water', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	
	TriggerClientEvent('esx_basicneeds:onDrink', source)
--	TriggerClientEvent('esx:showNotification', source, _U('used_water'))
--	TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'success', text = _U('used_water'), length = 4000, style = { ['background-color'] = '#32639A', ['color'] = '#ffffff' } })
end)



ESX.RegisterUsableItem('powerade', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('powerade', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 450000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_powerade'))
end)



ESX.RegisterUsableItem('icedtea', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('icedtea', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 450000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_icedtea'))
end)


ESX.RegisterUsableItem('soda', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('soda', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 205000)
	
	TriggerClientEvent('esx_basicneeds:soda', source)
--	TriggerClientEvent('esx:showNotification', source, _U('used_water'))
--	TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'success', text = _U('used_water'), length = 4000, style = { ['background-color'] = '#32639A', ['color'] = '#ffffff' } })
end)


ESX.RegisterUsableItem('jugo', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('jugo', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 205000)
	
	TriggerClientEvent('esx_basicneeds:jugo', source)
--	TriggerClientEvent('esx:showNotification', source, _U('used_water'))
--	TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'success', text = _U('used_water'), length = 4000, style = { ['background-color'] = '#32639A', ['color'] = '#ffffff' } })
end)

ESX.RegisterUsableItem('coffee', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('coffee', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 355000)
	
	TriggerClientEvent('esx_basicneeds:coffee', source)
--	TriggerClientEvent('esx:showNotification', source, _U('used_water'))
--	TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'success', text = _U('used_water'), length = 4000, style = { ['background-color'] = '#32639A', ['color'] = '#ffffff' } })
end)


ESX.RegisterUsableItem('sandwich', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('sandwich', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)

	TriggerClientEvent('esx_basicneeds:sandwich', source)
--	TriggerClientEvent('esx:showNotification', source, _U('used_bread'))
--	TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'success', text = _U('used_sandwich'), length = 4000, style = { ['background-color'] = '#32639A', ['color'] = '#ffffff' } })
end)



TriggerEvent('es:addGroupCommand', 'heal', 'admin', function(source, args, user)
	-- heal another player - don't heal source
	if args[1] then
		local playerId = tonumber(args[1])

		-- is the argument a number?
		if playerId then
			-- is the number a valid player?
			if GetPlayerName(playerId) then
				print(('esx_basicneeds: %s healed %s'):format(GetPlayerIdentifier(source, 0), GetPlayerIdentifier(playerId, 0)))
				TriggerClientEvent('esx_basicneeds:healPlayer', playerId)
				TriggerClientEvent('chat:addMessage', source, { args = { '^5HEAL', 'You have been healed.' } })
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Player not online.' } })
			end
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Invalid player id.' } })
		end
	else
		print(('esx_basicneeds: %s healed self'):format(GetPlayerIdentifier(source, 0)))
		TriggerClientEvent('esx_basicneeds:healPlayer', source)
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = 'Heal a player, or yourself - restores thirst, hunger and health.', params = {{name = 'playerId', help = '(optional) player id'}}})



ESX.RegisterUsableItem('icetea', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('icetea', 1)

    TriggerClientEvent('esx_status:add', source, 'thirst', 300000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)

	
end)

ESX.RegisterUsableItem('limonade', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('limonade', 1)

    TriggerClientEvent('esx_status:add', source, 'thirst', 300000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)

	
end)

ESX.RegisterUsableItem('drpepper', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('drpepper', 1)

    TriggerClientEvent('esx_status:add', source, 'thirst', 350000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)

	
end)

ESX.RegisterUsableItem('energy', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('energy', 1)

    TriggerClientEvent('esx_status:add', source, 'thirst', 400000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
  
	
end)

ESX.RegisterUsableItem('mixapero', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
	
	xPlayer.removeInventoryItem('mixapero', 1)

    TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
    TriggerClientEvent('esx_status:remove', source, 'thirst', 50000)
    TriggerClientEvent('esx_basicneeds:onEat', source)

	
end)

ESX.RegisterUsableItem('vodka', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('vodka', 1)

    TriggerClientEvent('esx_status:add', source, 'drunk', 10000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
 
	
end)

ESX.RegisterUsableItem('jager', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('jager', 1)

    TriggerClientEvent('esx_status:add', source, 'drunk', 20000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
   
	
end)

ESX.RegisterUsableItem('rhum', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('rhum', 1)

    TriggerClientEvent('esx_status:add', source, 'drunk', 40000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
   
	
end)

ESX.RegisterUsableItem('whisky', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('whisky', 1)

    TriggerClientEvent('esx_status:add', source, 'drunk', 350000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
  
	
end)

ESX.RegisterUsableItem('martini', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('martini', 1)

    TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
   
	
end)

ESX.RegisterUsableItem('vodkaenergy', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('vodkaenergy', 1)

    TriggerClientEvent('esx_status:add', source, 'drunk', 500000)
    TriggerClientEvent('esx_status:remove', source, 'hunger', 1000)
    TriggerClientEvent('esx_status:remove', source, 'thirst', 7000)
    TriggerClientEvent('esx_optionalneeds:onDrink', source)
   
	
end)