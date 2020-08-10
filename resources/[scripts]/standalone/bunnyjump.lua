--[[
ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer   
end)

----------------------------------
-- Fall while Running & Jumping --
----------------------------------

local ragdoll_chance = 0.75

print('chance of falling set to: ' .. ragdoll_chance)
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(100)
		local ped = PlayerPedId()
		if IsPedOnFoot(ped) and not IsPedSwimming(ped) and (IsPedRunning(ped) or IsPedSprinting(ped)) and not IsPedClimbing(ped) and IsPedJumping(ped) and not IsPedRagdoll(ped) then
			local chance_result = math.random()
		--	print('lose grip result: ' .. chance_result)
			if chance_result < ragdoll_chance then 
				Citizen.Wait(600)
      --          ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.25)
				SetPedToRagdoll(ped, 5000, 1, 2)
		--		print('falling!')
			else
				Citizen.Wait(2000)
			end
		end
	end
end)

]]--