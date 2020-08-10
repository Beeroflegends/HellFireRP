function safecracker:AddReward(rewards)
	local xPlayer = ESX.GetPlayerFromId(source)
	if not xPlayer then return; end

	if rewards.CashAmount then xPlayer.addAccountMoney('black_money', rewards.CashAmount); end

  if rewards.Items then
  	for k,v in pairs(rewards.Items) do
  		local randomCount = math.random(1, rewards.ItemsAmount)
  		xPlayer.addInventoryItem(v, randomCount)
  	end
  end
end

RegisterNetEvent('safecracker:AddReward')
AddEventHandler('safecracker:AddReward', function(rewards) safecracker:AddReward(rewards); end)