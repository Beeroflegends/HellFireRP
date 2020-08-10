ESX                = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_heal:pay')
AddEventHandler('esx_heal:pay', function()
    local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    
	xPlayer.removeAccountMoney('bank', 500)
end)

ESX.RegisterServerCallback('esx_heal:money', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local money    = xPlayer.getMoney(source)
    if money >= 0 then
     cb(true)
    else
     cb(false)
     TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Not enough money', length = 2500, style = { ['background-color'] = '#C40000', ['color'] = '#ffffff' } })
    end
end)
                
function sendNotification(xSource, message, messageType, messageTimeout)
    TriggerClientEvent("pNotify:SendNotification", xSource, {
        text = message,
        type = messageType,
        queue = "zeaq",
        timeout = messageTimeout,
        layout = "bottomCenter"
    })
end

RegisterServerEvent('esx_heal:check')
AddEventHandler('esx_heal:check', function()
    local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers = ESX.GetPlayers()

    local ambulance = 0
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
            if xPlayer.job.name == 'ambulance' then
                    ambulance = ambulance + 1
            end
        end
        if ambulance <= 3 then
            TriggerClientEvent('esx_heal:Last', _source)
    else
       TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'There is medics on service', length = 2500, style = { ['background-color'] = '#C40000', ['color'] = '#ffffff' } })
	   TriggerClientEvent('MF_Trackables:DoNotify',-1,'[Jenny]: We have a patient waiting for assistance on lobby',"",'ambulance')
    end
end)
