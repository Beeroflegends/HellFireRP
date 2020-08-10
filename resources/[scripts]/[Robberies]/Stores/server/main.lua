local rob = false
local robbers = {}
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_holdup:tooFar')
AddEventHandler('esx_holdup:tooFar', function(currentStore)
	local _source = source
	local xPlayers = ESX.GetPlayers()
	rob = false

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		
		if xPlayer.job.name == 'police' then
--			TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_cancelled_at', Stores[currentStore].nameOfStore))
			TriggerClientEvent('esx_holdup:killBlip', xPlayers[i])
		end
	end

	if robbers[_source] then
		TriggerClientEvent('esx_holdup:tooFar', _source)
		robbers[_source] = nil
--		TriggerClientEvent('esx:showNotification', _source, _U('robbery_cancelled_at', Stores[currentStore].nameOfStore))
	end
end)

RegisterServerEvent('esx_holdup:robberyStarted')
AddEventHandler('esx_holdup:robberyStarted', function(currentStore)
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
	local xPlayers = ESX.GetPlayers()

	if Stores[currentStore] then
		local store = Stores[currentStore]

		if (os.time() - store.lastRobbed) < Config.TimerBeforeNewRob and store.lastRobbed ~= 0 then
	--		TriggerClientEvent('esx:showNotification', _source, _U('recently_robbed', Config.TimerBeforeNewRob - (os.time() - store.lastRobbed)))
			TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'success', text = ('Cooldown: ' ..Config.TimerBeforeNewRob - (os.time() - store.lastRobbed).. ' segundos'), length = 4000, style = { ['background-color'] = '#C40000', ['color'] = '#ffffff' } })
			return
		end

		local cops = 0
		for i=1, #xPlayers, 1 do
			local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			if xPlayer.job.name == 'police' then
				cops = cops + 1
			end
		end

		if not rob then
			if cops >= Config.PoliceNumberRequired then
				rob = true
				TriggerClientEvent("cajafuerte:start", _source)
				for i=1, #xPlayers, 1 do
					local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
					if xPlayer.job.name == 'police' then
	--					TriggerClientEvent('esx:showNotification', xPlayers[i], _U('rob_in_prog', store.nameOfStore))
						TriggerClientEvent('esx_holdup:setBlip', xPlayers[i], Stores[currentStore].position)
					end
				end

		--		TriggerClientEvent('esx:showNotification', _source, _U('started_to_rob', store.nameOfStore))
	--			TriggerClientEvent('esx:showNotification', _source, _U('alarm_triggered'))
				
				TriggerClientEvent('esx_holdup:currentlyRobbing', _source, currentStore)
				TriggerClientEvent('esx_holdup:startTimer', _source)
				
				Stores[currentStore].lastRobbed = os.time()
				robbers[_source] = currentStore

				SetTimeout(store.secondsRemaining * 1000, function()
					if robbers[_source] then
						rob = false
						
					end
				end)
			else
				TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'success', text = ('No hay suficientes policias'), length = 4000, style = { ['background-color'] = '#C40000', ['color'] = '#ffffff' } })
			--	TriggerClientEvent('esx:showNotification', _source, _U('min_police', Config.PoliceNumberRequired))
			end
		else
			TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'success', text = ('Ya hay un robo en curso'), length = 4000, style = { ['background-color'] = '#C40000', ['color'] = '#ffffff' } })
		end
	end
end)


RegisterServerEvent('cajafuerte:dinero')
AddEventHandler('cajafuerte:dinero', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	local pago = math.random(2000,3500)
	
	 xPlayer.addAccountMoney('black_money', pago)
	TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'success', text = ('Robaste: $' ..pago), length = 4000, style = { ['background-color'] = '#0085BF', ['color'] = '#ffffff' } })
	
end)