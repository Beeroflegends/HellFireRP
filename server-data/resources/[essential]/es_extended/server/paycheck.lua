ESX.StartPayCheck = function()

	function payCheck()
		local xPlayers = ESX.GetPlayers()

		for i=1, #xPlayers, 1 do
			local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			local job     = xPlayer.job.grade_name
			local salary  = xPlayer.job.grade_salary

			if salary > 0 then
				if job == 'unemployed' then -- unemployed
					xPlayer.addAccountMoney('bank', salary)
					
					
					TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'success', text = _U('received_help', salary), length = 4000, style = { ['background-color'] = '#109501', ['color'] = '#ffffff' } })
					
				elseif Config.EnableSocietyPayouts then -- possibly a society
					TriggerEvent('esx_society:getSociety', xPlayer.job.name, function (society)
						if society ~= nil then -- verified society
							TriggerEvent('esx_addonaccount:getSharedAccount', society.account, function (account)
								if account.money >= salary then -- does the society money to pay its employees?
									xPlayer.addAccountMoney('bank', salary)
									
									account.removeMoney(1)
	
								
								TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'success', text = _U('received_help', salary), length = 4000, style = { ['background-color'] = '#109501', ['color'] = '#ffffff' } })
								else
									
									TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'success', text = _U('received_help', salary), length = 4000, style = { ['background-color'] = '#109501', ['color'] = '#ffffff' } })
								end
							end)
						else -- not a society
							xPlayer.addAccountMoney('bank', salary)
							
							TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'success', text = _U('received_help', salary), length = 4000, style = { ['background-color'] = '#109501', ['color'] = '#ffffff' } })
							
						end
					end)
				else -- generic job
					xPlayer.addAccountMoney('bank', salary)
					
					
					TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'success', text = _U('received_help', salary), length = 4000, style = { ['background-color'] = '#109501', ['color'] = '#ffffff' } })
				end
			end
		end
		SetTimeout(Config.PaycheckInterval, payCheck)
	end
	SetTimeout(Config.PaycheckInterval, payCheck)
end
