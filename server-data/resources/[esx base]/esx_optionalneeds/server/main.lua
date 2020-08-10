ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)


ESX.RegisterUsableItem('cigarette', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local lighter = xPlayer.getInventoryItem('cagelighter')
	if lighter.count > 0 then
			TriggerClientEvent('esx_optionalneeds:startSmoke', source)
			TriggerClientEvent('esx_status:remove', source, 'stress', 50000)
			xPlayer.removeInventoryItem('cigarette', 1)
		else
		
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'U need a lighter', length = 2500, style = { ['background-color'] = '#CE0000', ['color'] = '#ffffff' } })
		end
end)

