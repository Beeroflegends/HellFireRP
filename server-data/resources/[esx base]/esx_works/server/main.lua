ESX                			 = nil


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_cityworks:GiveItem')
AddEventHandler('esx_cityworks:GiveItem', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	local pago = math.random(150,250)
	
	xPlayer.addAccountMoney('bank', pago)
	TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'success', text = ('You got paid: $' ..pago), length = 4000, style = { ['background-color'] = '#0085BF', ['color'] = '#ffffff' } })
end)




