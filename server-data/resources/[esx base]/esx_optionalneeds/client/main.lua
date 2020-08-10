ESX                  = nil
local IsAlreadyDrunk = false
local DrunkLevel     = -1
local plyPed = GetPlayerPed(-1)

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

function Drunk(level, start)
  
  Citizen.CreateThread(function()

    local playerPed = GetPlayerPed(-1)

    if start then
      DoScreenFadeOut(800)
      Wait(1000)
    end

    if level == 0 then

      RequestAnimSet("move_m@drunk@slightlydrunk")
      
      while not HasAnimSetLoaded("move_m@drunk@slightlydrunk") do
        Citizen.Wait(0)
      end

      SetPedMovementClipset(playerPed, "move_m@drunk@slightlydrunk", true)

    elseif level == 1 then

      RequestAnimSet("move_m@drunk@moderatedrunk")
      
      while not HasAnimSetLoaded("move_m@drunk@moderatedrunk") do
        Citizen.Wait(0)
      end

      SetPedMovementClipset(playerPed, "move_m@drunk@moderatedrunk", true)

    elseif level == 2 then

      RequestAnimSet("move_m@drunk@verydrunk")
      
      while not HasAnimSetLoaded("move_m@drunk@verydrunk") do
        Citizen.Wait(0)
      end

      SetPedMovementClipset(playerPed, "move_m@drunk@verydrunk", true)

    end

    SetTimecycleModifier("spectator5")
    SetPedMotionBlur(playerPed, true)
    SetPedIsDrunk(playerPed, true)

    if start then
      DoScreenFadeIn(800)
    end

  end)

end

function Reality()

  Citizen.CreateThread(function()

    local playerPed = GetPlayerPed(-1)

    DoScreenFadeOut(800)
    Wait(1000)

    ClearTimecycleModifier()
    ResetScenarioTypesEnabled()
    ResetPedMovementClipset(playerPed, 0)
    SetPedIsDrunk(playerPed, false)
    SetPedMotionBlur(playerPed, false)

    DoScreenFadeIn(800)

  end)

end

AddEventHandler('esx_status:loaded', function(status)

  TriggerEvent('esx_status:registerStatus', 'drunk', 0, '#8F15A5', 
    function(status)
      if status.val > 0 then
        return false
      else
        return false
      end
    end,
    function(status)
      status.remove(1500)
    end
  )

	Citizen.CreateThread(function()

		while true do

			Wait(1000)

			TriggerEvent('esx_status:getStatus', 'drunk', function(status)
				
				if status.val > 0 then
					
          local start = true

          if IsAlreadyDrunk then
            start = false
          end

          local level = 0

          if status.val <= 250000 then
            level = 0
          elseif status.val <= 500000 then
            level = 1
          else
            level = 2
          end

          if level ~= DrunkLevel then
            Drunk(level, start)
          end

          IsAlreadyDrunk = true
          DrunkLevel     = level
				end

				if status.val == 0 then
          
          if IsAlreadyDrunk then
            Reality()
          end

          IsAlreadyDrunk = false
          DrunkLevel     = -1

				end

			end)

		end

	end)

end)

RegisterNetEvent('esx_optionalneeds:onDrink')
AddEventHandler('esx_optionalneeds:onDrink', function()
  
BeerAnimation()

end)


RegisterNetEvent('esx_optionalneeds:startSmoke')
AddEventHandler('esx_optionalneeds:startSmoke', function(source)
local playerPed = PlayerPedId()
	if IsPedInAnyVehicle(playerPed, false) then
		exports['progressBars']:startUI(40000,"Smoking")
		Citizen.Wait(40000)
		exports['mythic_notify']:DoHudText('inform', 'You feel more relaxed', 2500, { ['background-color'] = '#9600CE', ['color'] = '#ffffff' })
		else
	
	SmokeAnimation()
	end
end)

RegisterNetEvent('esx_optionalneeds:cocaina')
AddEventHandler('esx_optionalneeds:cocaina', function(source)
	cocaina()
end)

RegisterNetEvent('esx_optionalneeds:startChurro')
AddEventHandler('esx_optionalneeds:startChurro', function(source)
	ChurroAnimation()
end)



function SmokeAnimation()
	local playerPed = GetPlayerPed(-1)
	
		exports['progressBars']:startUI(40000,"Fumando")
        TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING", 0, true)
	
		Citizen.Wait(40000)
		ClearPedTasksImmediately(playerPed)
		exports['mythic_notify']:DoHudText('inform', 'You feel more relaxed', 2500, { ['background-color'] = '#9600CE', ['color'] = '#ffffff' })
		SetEntityHealth(PlayerPedId(), GetEntityHealth(PlayerPedId()) - 10)
	
end

function BeerAnimation()
	local playerPed = GetPlayerPed(-1)
	
	Citizen.CreateThread(function()
	
	
		exports['progressBars']:startUI(40000,"Drinking")
        TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_DRINKING", 0, true)
	
		Citizen.Wait(40000)
		ClearPedTasksImmediately(playerPed)
		exports['mythic_notify']:DoHudText('inform', 'You feel drunk', 2500, { ['background-color'] = '#9600CE', ['color'] = '#ffffff' })		
	end)
end



function cocaina()
	local playerPed = GetPlayerPed(-1)
	local dict = "amb@medic@standing@kneel@base"
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
	Citizen.Wait(10)
	end
	exports['progressBars']:startUI(20000,"Aspirando cocaina")
	TaskPlayAnim(GetPlayerPed(-1), dict, "base", 8.0, 8.0, -1, 11, 0, false, false, false)
	Citizen.Wait(20000)
	ClearPedTasksImmediately(playerPed)
end

function ChurroAnimation()
	local playerPed = GetPlayerPed(-1)
	
		TriggerEvent('skinchanger:getSkin', function(skin)
		if skin.sex == 0 then
		exports['progressBars']:startUI(40000,"Fumando marihuana")
        TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_DRUG_DEALER", 0, true)
		FreezeEntityPosition(plyPed,true)
		Citizen.Wait(40000)
		ClearPedTasksImmediately(playerPed)
		FreezeEntityPosition(plyPed,false)
		exports['mythic_notify']:DoHudText('inform', 'You feel more relaxed', 2500, { ['background-color'] = '#9600CE', ['color'] = '#ffffff' })
		SetEntityHealth(PlayerPedId(), GetEntityHealth(PlayerPedId()) + 25)
	else
		exports['progressBars']:startUI(40000,"Fumando marihuana")
        TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING", 0, true)
		FreezeEntityPosition(plyPed,true)
		Citizen.Wait(40000)
		ClearPedTasksImmediately(playerPed)
		FreezeEntityPosition(plyPed,false)
		exports['mythic_notify']:DoHudText('inform', 'You feel more relaxed', 2500, { ['background-color'] = '#9600CE', ['color'] = '#ffffff' })
		SetEntityHealth(PlayerPedId(), GetEntityHealth(PlayerPedId()) + 25)
	end
	end)
end

function ChurroMAnimation()
	local playerPed = GetPlayerPed(-1)
	
	Citizen.CreateThread(function()
	
	
		exports['progressBars']:startUI(40000,"Fumando marihuana")
        TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING", 0, true)
		FreezeEntityPosition(plyPed,true)
		Citizen.Wait(40000)
		ClearPedTasksImmediately(playerPed)
		FreezeEntityPosition(plyPed,false)
		exports['mythic_notify']:DoHudText('inform', 'Te sientes mas relajada', 2500, { ['background-color'] = '#9600CE', ['color'] = '#ffffff' })
		SetEntityHealth(PlayerPedId(), GetEntityHealth(PlayerPedId()) + 25)
	end)
end