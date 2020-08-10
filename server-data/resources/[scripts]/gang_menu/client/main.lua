local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local PlayerData = {}
local HasAlreadyEnteredMarker = false
local LastStation, LastPart, LastPartNum, LastEntity
local CurrentAction = nil
local CurrentActionMsg  = ''
local CurrentActionData = {}
local IsHandcuffed = false
local HandcuffTimer = {}
local DragStatus = {}
DragStatus.IsDragged = false
DragStatus.draganim = false
local hasAlreadyJoined = false
local blipsCops = {}
local isDead = false
local CurrentTask = {}
local playerInService = false
local spawnedVehicles, isInShopMenu = {}, false

ESX                           = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)



function drawLoadingText(text, red, green, blue, alpha)
	SetTextFont(4)
	SetTextProportional(0)
	SetTextScale(0.0, 0.5)
	SetTextColour(red, green, blue, alpha)
	SetTextDropShadow(0, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(true)

	BeginTextCommandDisplayText("STRING")
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandDisplayText(0.5, 0.5)
end

function OpenBikerActionsMenu()

  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'biker_actions',
    {
      title    = 'Delincuente',
      align    = 'bottom',
      elements = {
        {label = _U('citizen_interaction'), value = 'citizen_interaction'},
      },
    },


    function(data, menu)

      if data.current.value == 'citizen_interaction' then
 

        ESX.UI.Menu.Open(
          'default', GetCurrentResourceName(), 'citizen_interaction',
          {
            title    = _U('citizen_interaction'),
            align    = 'bottom',
            elements = {
              {label = _U('id_card'),       value = 'identity_card'},
              {label = _U('search'),        value = 'body_search'},
              {label = 'Cuff', value = 'handcuff'}, 
              {label = 'Uncuff', value = 'uncuff'} 

            },
          },
          function(data2, menu2)

            local player, distance = ESX.Game.GetClosestPlayer()

            if distance ~= -1 and distance <= 1.5 then

              if data2.current.value == 'identity_card' then
                OpenIdentityCardMenu(player)

              end

              if data2.current.value == 'body_search' then
         
                OpenBodySearchMenu(player)
				ESX.UI.Menu.CloseAll()

              end

              if data2.current.value == 'handcuff' then

              local ped = PlayerPedId()
   
            local target, distancee = ESX.Game.GetClosestPlayer()
            playerheading = GetEntityHeading(GetPlayerPed(-1))
            playerlocation = GetEntityForwardVector(PlayerPedId())
            playerCoords = GetEntityCoords(GetPlayerPed(-1))
            local target_id = GetPlayerServerId(target)

			if IsPedArmed(ped, 7) then
            if distancee <= 1.0 then
              TriggerServerEvent('Banda-Moteros1:requestarrest', target_id, playerheading, playerCoords, playerlocation)
            else
              --ESX.ShowNofitication('Not Close Enough')
            end
   else
    exports['mythic_notify']:DoHudText('error', 'You need a weapon',3500)

    end          
ESX.UI.Menu.CloseAll()


              end

              if data2.current.value == 'uncuff' then


             local target, distancee = ESX.Game.GetClosestPlayer()
            playerheading = GetEntityHeading(GetPlayerPed(-1))
            playerlocation = GetEntityForwardVector(PlayerPedId())
            playerCoords = GetEntityCoords(GetPlayerPed(-1))
            local target_id = GetPlayerServerId(target)
            if distancee <= 1.0 then
              TriggerServerEvent('Banda-Moteros1:requestrelease', target_id, playerheading, playerCoords, playerlocation)
            else
              --ESX.ShowNofitication('Not Close Enough')
            end 

			ESX.UI.Menu.CloseAll()
              end

              if data2.current.value == 'drag' then
                TriggerServerEvent('Banda-Moteros:drag', GetPlayerServerId(player))
              end

              if data2.current.value == 'put_in_vehicle' then
                TriggerServerEvent('Banda-Moteros:putInVehicle', GetPlayerServerId(player))
              end

              if data2.current.value == 'out_the_vehicle' then
                  TriggerServerEvent('Banda-Moteros:OutVehicle', GetPlayerServerId(player))
              end

              if data2.current.value == 'fine' then
                OpenFineMenu(player)
              end

            else
    exports['mythic_notify']:DoCustomHudText('error', 'No players nearby',3500)
            end

          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end

      if data.current.value == 'vehicle_interaction' then

        ESX.UI.Menu.Open(
          'default', GetCurrentResourceName(), 'vehicle_interaction',
          {
            title    = _U('vehicle_interaction'),
            align    = 'top-right',
            elements = {
              {label = _U('vehicle_info'), value = 'vehicle_infos'},
              {label = _U('pick_lock'),    value = 'hijack_vehicle'},
            },
          },
          function(data2, menu2)

            local playerPed = GetPlayerPed(-1)
            local coords    = GetEntityCoords(playerPed)
            local vehicle   = GetClosestVehicle(coords.x,  coords.y,  coords.z,  3.0,  0,  71)

            if DoesEntityExist(vehicle) then

              local vehicleData = ESX.Game.GetVehicleProperties(vehicle)

              if data2.current.value == 'vehicle_infos' then
                OpenVehicleInfosMenu(vehicleData)
              end

              if data2.current.value == 'hijack_vehicle' then

                local playerPed = GetPlayerPed(-1)
                local coords    = GetEntityCoords(playerPed)

                if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 3.0) then

                  local vehicle = GetClosestVehicle(coords.x,  coords.y,  coords.z,  3.0,  0,  71)

                  if DoesEntityExist(vehicle) then

                    Citizen.CreateThread(function()

                      TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_WELDING", 0, true)

                      Wait(20000)

                      ClearPedTasksImmediately(playerPed)

                      SetVehicleDoorsLocked(vehicle, 1)
                      SetVehicleDoorsLockedForAllPlayers(vehicle, false)

                      TriggerEvent('esx:showNotification', _U('vehicle_unlocked'))

                    end)

                  end

                end

              end

            else
              ESX.ShowNotification(_U('no_vehicles_nearby'))
            end

          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end

      if data.current.value == 'object_spawner' then

        ESX.UI.Menu.Open(
          'default', GetCurrentResourceName(), 'citizen_interaction',
          {
            title    = _U('traffic_interaction'),
            align    = 'top-right',
            elements = {
              {label = _U('cone'),     value = 'prop_mp_cone_04'},
              {label = _U('barrier'), value = 'prop_barrier_work06a'},

              {label = _U('paquetedrogacoca'),    value = 'prop_drug_package'},
              {label = _U('paquetedrogamari'),    value = 'prop_mp_drug_pack_blue'},
              {label = _U('paquetedrogameta'),    value = 'prop_mp_drug_pack_red'},


              {label = _U('cash'),   value = 'hei_prop_cash_crate_half_full'}
            },
          },
          function(data2, menu2)


            local model     = data2.current.value
            local playerPed = GetPlayerPed(-1)
            local coords    = GetEntityCoords(playerPed)
            local forward   = GetEntityForwardVector(playerPed)
            local x, y, z   = table.unpack(coords + forward * 1.0)

            if model == 'prop_roadcone02a' then
              z = z - 1.5
            end

             if model == 'prop_barrier_work06a' then
              z = z + 0.3
            end


            ESX.Game.SpawnObject(model, {
              x = x,
              y = y,
              z = z
            }, function(obj)
              SetEntityHeading(obj, GetEntityHeading(playerPed))
              PlaceObjectOnGroundProperly(obj)
            end)

          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end

    end,
    function(data, menu)

      menu.close()

    end
  )

end

function OpenIdentityCardMenu(player)

	ESX.TriggerServerCallback('esx_ballas:getOtherPlayerData', function(data)

		local elements    = {}
		local nameLabel   = _U('name', data.name)
--		local jobLabel    = nil
		local sexLabel    = nil
		local dobLabel    = nil
		local heightLabel = nil
		local idLabel     = nil
	
		
	
		if Config.EnableESXIdentity then
	
			nameLabel = _U('name', data.firstname .. ' ' .. data.lastname)
	
			if data.sex ~= nil then
				if string.lower(data.sex) == 'm' then
					sexLabel = _U('sex', _U('male'))
				else
					sexLabel = _U('sex', _U('female'))
				end
			else
				sexLabel = _U('sex', _U('unknown'))
			end
	
			if data.dob ~= nil then
				dobLabel = _U('dob', data.dob)
			else
				dobLabel = _U('dob', _U('unknown'))
			end
	
			if data.height ~= nil then
				heightLabel = _U('height', data.height)
			else
				heightLabel = _U('height', _U('unknown'))
			end
	
			if data.name ~= nil then
				idLabel = _U('id', data.name)
			else
				idLabel = _U('id', _U('unknown'))
			end
	
		end
	
		local elements = {
			{label = nameLabel, value = nil},
			
		}
	
		if Config.EnableESXIdentity then
			table.insert(elements, {label = sexLabel, value = nil})
			table.insert(elements, {label = dobLabel, value = nil})
			table.insert(elements, {label = heightLabel, value = nil})
			table.insert(elements, {label = idLabel, value = nil})
		end
	
		
	
		
	
		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'citizen_interaction',
		{
			title    = _U('citizen_interaction'),
			align    = 'bottom',
			elements = elements,
		}, function(data, menu)
	
		end, function(data, menu)
			menu.close()
		end)
	
	end, GetPlayerServerId(player))

end

function OpenBodySearchMenu(player)

	ESX.TriggerServerCallback('esx_ballas:getOtherPlayerData', function(data)

		local elements = {}

		for i=1, #data.accounts, 1 do

			if data.accounts[i].name == 'black_money' and data.accounts[i].money > 0 then

				table.insert(elements, {
					label    = _U('confiscate_dirty', ESX.Math.Round(data.accounts[i].money)),
					value    = 'black_money',
					itemType = 'item_account',
					amount   = data.accounts[i].money
				})

				break
			end

		end

		table.insert(elements, {label = _U('guns_label'), value = nil})

		for i=1, #data.weapons, 1 do
			table.insert(elements, {
				label    = _U('confiscate_weapon', ESX.GetWeaponLabel(data.weapons[i].name), data.weapons[i].ammo),
				value    = data.weapons[i].name,
				itemType = 'item_weapon',
				amount   = data.weapons[i].ammo
			})
		end

		table.insert(elements, {label = _U('inventory_label'), value = nil})

		for i=1, #data.inventory, 1 do
			if data.inventory[i].count > 0 then
				table.insert(elements, {
					label    = _U('confiscate_inv', data.inventory[i].count, data.inventory[i].label),
					value    = data.inventory[i].name,
					itemType = 'item_standard',
					amount   = data.inventory[i].count
				})
			end
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'body_search',
		{
			title    = _U('search'),
			align    = 'bottom-right',
			elements = elements,
		},
		function(data, menu)

			local itemType = data.current.itemType
			local itemName = data.current.value
			local amount   = data.current.amount

			if data.current.value ~= nil then
				TriggerServerEvent('esx_ballas:confiscatePlayerItem', GetPlayerServerId(player), itemType, itemName, amount)
				OpenBodySearchMenu(player)
			end

		end, function(data, menu)
			menu.close()
		end)

	end, GetPlayerServerId(player))

end



RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
	
	Citizen.Wait(5000)
	
end)






RegisterNetEvent('esx_ballas:drag')
AddEventHandler('esx_ballas:drag', function(copID)
	if not IsHandcuffed then
		return
	end

	DragStatus.IsDragged = not DragStatus.IsDragged
	DragStatus.CopId     = tonumber(copID)
end)



RegisterNetEvent('esx_ballas:putInVehicle')
AddEventHandler('esx_ballas:putInVehicle', function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)

	if not IsHandcuffed then
		return
	end

	if IsAnyVehicleNearPoint(coords, 5.0) then
		local vehicle = GetClosestVehicle(coords, 5.0, 0, 71)

		if DoesEntityExist(vehicle) then
			local maxSeats, freeSeat = GetVehicleMaxNumberOfPassengers(vehicle)

			for i=maxSeats - 1, 0, -1 do
				if IsVehicleSeatFree(vehicle, i) then
					freeSeat = i
					break
				end
			end

			if freeSeat then
				TaskWarpPedIntoVehicle(playerPed, vehicle, freeSeat)
				DragStatus.IsDragged = false
			end
		end
	end
end)

RegisterNetEvent('esx_ballas:OutVehicle')
AddEventHandler('esx_ballas:OutVehicle', function()
	local playerPed = PlayerPedId()

	if not IsPedSittingInAnyVehicle(playerPed) then
		return
	end

	local vehicle = GetVehiclePedIsIn(playerPed, false)
	TaskLeaveVehicle(playerPed, vehicle, 16)
end)


AddEventHandler('playerSpawned', function(spawn)
	isDead = false
	TriggerEvent('esx_ballas:unrestrain')
	
	if not hasAlreadyJoined then
		TriggerServerEvent('esx_ballas:spawned')
	end
	hasAlreadyJoined = true
end)

AddEventHandler('esx:onPlayerDeath', function(data)
	isDead = true
end)









---### animacion arrestart ####-----

RegisterNetEvent('Banda-Moteros1:getarrested')
AddEventHandler('Banda-Moteros1:getarrested', function(playerheading, playercoords, playerlocation)
  playerPed = GetPlayerPed(-1)
  SetCurrentPedWeapon(playerPed, GetHashKey('WEAPON_UNARMED'), true) -- unarm player
  local x, y, z   = table.unpack(playercoords + playerlocation * 1.0)
  SetEntityCoords(GetPlayerPed(-1), x, y, z)
  SetEntityHeading(GetPlayerPed(-1), playerheading)
IsHandcuffedMoved = true
  Citizen.Wait(250)
 loadanimdict('random@arrests@busted') 
loadanimdict('random@arrests')

        TaskPlayAnim(playerPed, "random@arrests", "idle_2_hands_up", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
        Wait (4000)
        TaskPlayAnim(playerPed, "random@arrests", "kneeling_arrest_idle", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
        Wait (500)
        TaskPlayAnim(playerPed, "random@arrests@busted", "enter", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
        Wait (1000)
        TaskPlayAnim(playerPed, "random@arrests@busted", "idle_a", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
        Citizen.Wait(1000)
        TaskPlayAnim(playerPed, 'random@arrests@busted', 'idle_c', 8.0, -8, -1, 49, 0.0, false, false, false)
  
      IsHandcuffedMoved = false
      IsHandcuffed = true
 
end)

RegisterNetEvent('Banda-Moteros1:doarrested')
AddEventHandler('Banda-Moteros1:doarrested', function()
  Citizen.Wait(250)
loadanimdict('anim@deathmatch_intros@1hmale')
 TaskPlayAnim(GetPlayerPed(-1), 'anim@deathmatch_intros@1hmale', 'intro_male_1h_a_trevor',12.0, -12.0,10400, 2, 0, 0, 0, 0)
  Citizen.Wait(10400)

 
end) 


 


RegisterNetEvent('Banda-Moteros1:douncuffing')
AddEventHandler('Banda-Moteros1:douncuffing', function()
  Citizen.Wait(250)

 loadanimdict('reaction@shove')
 TaskPlayAnim(GetPlayerPed(-1), 'reaction@shove','shove_var_a', 8.0, -8,-1, 2, 0, 0, 0, 0)
  Citizen.Wait(2000)
  ClearPedTasks(GetPlayerPed(-1))
end)

RegisterNetEvent('Banda-Moteros1:getuncuffed')
AddEventHandler('Banda-Moteros1:getuncuffed', function(playerheading, playercoords, playerlocation)
  local x, y, z   = table.unpack(playercoords + playerlocation * 1.0)
  SetEntityCoords(GetPlayerPed(-1), x, y, z)
  SetEntityHeading(GetPlayerPed(-1), playerheading)
  Citizen.Wait(250)
  loadanimdict('reaction@shove')

  TaskPlayAnim(GetPlayerPed(-1), 'reaction@shove', 'shoved_back', 8.0, -8,-1, 2, 0, 0, 0, 0)
  Citizen.Wait(2000)
  IsHandcuffed = false
  --TriggerEvent('esx_policejob:handcuff')
  ClearPedTasks(GetPlayerPed(-1))
end)




-- Handcuff

Citizen.CreateThread(function()
  while true do
    Wait(0)
    if IsHandcuffed then

      DisableControlAction(0, 327, true) -- F5  
      DisableControlAction(0, 318, true) -- F5
      DisableControlAction(0, 166, true) -- F5

      DisableControlAction(0, 1, true) -- Disable pan   
      DisableControlAction(0, 2, true) -- Disable tilt
      DisableControlAction(0, 24, true) -- Attack
      DisableControlAction(0, 257, true) -- Attack 2
      DisableControlAction(0, 25, true) -- Aim
      DisableControlAction(0, 263, true) -- Melee Attack 1
      DisableControlAction(0, 32, true) -- W
      DisableControlAction(0, 34, true) -- A
      DisableControlAction(0, 31, true) -- S
      DisableControlAction(0, 30, true) -- D
      DisableControlAction(0, 45, true) -- Reload
      DisableControlAction(0, 22, true) -- Jump
      DisableControlAction(0, 44, true) -- Cover
      DisableControlAction(0, 37, true) -- Select Weapon
      DisableControlAction(0, 23, true) -- Also 'enter'?
      DisableControlAction(0, 24, true) -- Attack
      DisableControlAction(0, 257, true) -- Attack 2
      DisableControlAction(0, 263, true) -- Melee Attack 1
      DisableControlAction(0, 217, true) -- Also 'enter'?
      DisableControlAction(0, 137, true) -- Also 'enter'?
      DisableControlAction(0, 288,  true) -- Disable phone
      DisableControlAction(0, 289, true) -- Inventory
      DisableControlAction(0, 170, true) -- Animations
      DisableControlAction(0, 167, true) -- Job --el f6
      DisableControlAction(0, 0, true) -- Disable changing view
      DisableControlAction(0, 26, true) -- Disable looking behind
      DisableControlAction(0, 73, true) -- Disable clearing animation
      DisableControlAction(2, 199, true) -- Disable pause screen
      DisableControlAction(0, 59, true) -- Disable steering in vehicle
      DisableControlAction(0, 71, true) -- Disable driving forward in vehicle
      DisableControlAction(0, 72, true) -- Disable reversing in vehicle
      DisableControlAction(2, 36, true) -- Disable going stealth
      DisableControlAction(0, 47, true)  -- Disable weapon
      DisableControlAction(0, 264, true) -- Disable melee
      DisableControlAction(0, 257, true) -- Disable melee
      DisableControlAction(0, 140, true) -- Disable melee
      DisableControlAction(0, 141, true) -- Disable melee
      DisableControlAction(0, 142, true) -- Disable melee
      DisableControlAction(0, 143, true) -- Disable melee
      DisableControlAction(0, 75, true)  -- Disable exit vehicle
      DisableControlAction(27, 75, true) -- Disable exit vehicle

         --    if IsEntityPlayingAnim(playerPed, 'mp_arresting', 'idle', 3) ~= 1 then
       --  ESX.Streaming.RequestAnimDict('mp_arresting', function()
       --  TaskPlayAnim(playerPed, 'mp_arresting', 'idle', 8.0, -8, -1, 49, 0.0, false, false, false)
       
  if IsEntityPlayingAnim(playerPed, 'random@arrests@busted', 'idle_c', 3) ~= 1 then
   ESX.Streaming.RequestAnimDict('random@arrests@busted', function()
      TaskPlayAnim(playerPed, 'random@arrests@busted', 'idle_c', 8.0, -8, -1, 49, 0.0, false, false, false)   
          
     end)
     end

    else

      Citizen.Wait(500)
    end



  end
end)



function loadanimdict(dictname)
  if not HasAnimDictLoaded(dictname) then
    RequestAnimDict(dictname) 
    while not HasAnimDictLoaded(dictname) do 
      Citizen.Wait(1)
    end
  end
end

-- Key Controls
Citizen.CreateThread(function()
	while true do

		Citizen.Wait(0)
		
		if IsControlJustReleased(0, Keys['F6']) and PlayerData.job ~= nil and PlayerData.job.name == 'vagos' and not ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'police_actions') then		
				OpenBikerActionsMenu()
		end
		
		if IsControlJustReleased(0, Keys['F6']) and PlayerData.job ~= nil and PlayerData.job.name == 'ballas' and not ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'police_actions') then		
				OpenBikerActionsMenu()
		end
		
		if IsControlJustReleased(0, Keys['F6']) and PlayerData.job ~= nil and PlayerData.job.name == 'families' and not ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'police_actions') then		
				OpenBikerActionsMenu()
		end
		
--[[		if IsControlJustReleased(0, Keys['F6']) and PlayerData.job ~= nil and PlayerData.job.name == 'JOBNAME' and not ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'police_actions') then		
				OpenBikerActionsMenu()
		end
		
		if IsControlJustReleased(0, Keys['F6']) and PlayerData.job ~= nil and PlayerData.job.name == 'JOBNAME' and not ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'police_actions') then		
				OpenBikerActionsMenu()
		end
		
		if IsControlJustReleased(0, Keys['F6']) and PlayerData.job ~= nil and PlayerData.job.name == 'JOBNAME' and not ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'police_actions') then		
				OpenBikerActionsMenu()
		end
		
		if IsControlJustReleased(0, Keys['F6']) and PlayerData.job ~= nil and PlayerData.job.name == 'JOBNAME' and not ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'police_actions') then		
				OpenBikerActionsMenu()
		end ]]--
	end
end)
