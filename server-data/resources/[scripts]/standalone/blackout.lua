-- No need to modify any of this, but I tried to document what it's doing
local isBlackedOut = false
local oldBodyDamage = 0
local oldSpeed = 0
local impact = 0


local function blackout()
	-- Only blackout once to prevent an extended blackout if both speed and damage thresholds were met
	if not isBlackedOut then
		isBlackedOut = true
		-- This thread will black out the user's screen for the specified time
		Citizen.CreateThread(function()
			print("La velocidad del impacto fue de ", impact) -- Print impact speed for F8 console ... in french
		--	TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 10.0, 'crash01', 0.2) -- Trigger crash sound around yourself, works with InteractiveSound
			if impact <= 50 then -- Shakycam on impact
				ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.4)
			elseif impact > 50 and impact <= 60 then
				ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.7)
			elseif impact > 60 and impact <= 70 then
				ShakeGameplayCam('MEDIUM_EXPLOSION_SHAKE', 1.2)
			elseif impact > 70 and impact <= 80 then
				ShakeGameplayCam('MEDIUM_EXPLOSION_SHAKE', 1.5)
			else 
				ShakeGameplayCam('LARGE_EXPLOSION_SHAKE', 1.5)
			end
			
			-- Cause death on blackout to have a ragdoll laying on the steering wheel for later revive
			--SetEntityHealth(GetPlayerPed(-1), 0)
			
			Citizen.Wait(200)
			DoScreenFadeOut(100)
			
			-- HERE IS AN ATTEMPT TO PLAY A LAYING ON THE STEERING WHEEL ANIMATION -> Ped disapears, don't know why
			-- while (not HasAnimDictLoaded("veh@std@ds@base")) do
				-- RequestAnimDict("veh@std@ds@base")
				-- Citizen.Wait(5)
			-- end
			-- TaskPlayAnim(GetPlayerPed(-1), "veh@std@ds@base", "veh@std@ds@base", 8.0, 1.0, 20000, -1, 0, 0, 0, 0)
			--veh@std@ds@base
			
			StartScreenEffect("DrugsDrivingIn",3000,false)	-- Start the injured effect
			while not IsScreenFadedOut() do
				Citizen.Wait(0)
			end
			
			if impact <= 50 then -- Blackout duration depending on impact speed, 1000 is 1 sec
				Citizen.Wait(1000)
			elseif impact > 50 and impact <= 60 then
				Citizen.Wait(2000)
				SetEntityHealth(GetPlayerPed(-1), 160)
			elseif impact > 60 and impact <= 70 then
				Citizen.Wait(2500)
				SetEntityHealth(GetPlayerPed(-1), 150)
			elseif impact > 70 and impact <= 80 then
				Citizen.Wait(3000)
				SetEntityHealth(GetPlayerPed(-1), 145)
			else 
				Citizen.Wait(3500)
				SetEntityHealth(GetPlayerPed(-1), 130) -- This setting cause death to passengers, try 100 if you want very low life.
			end
			
			-- HERE WAS THE REVIVE -> Issue is ped is warping out and in the car in a seconde for other players, didn't find a a way to avoid id
			-- local lastveh = GetVehiclePedIsIn(GetPlayerPed(-1))
			-- ResurrectPed(GetPlayerPed(-1))
			-- SetEntityHealth(GetPlayerPed(-1), GetEntityMaxHealth(GetPlayerPed(-1)))
			-- ClearPedTasksImmediately(GetPlayerPed(-1))
			-- SetPedIntoVehicle(GetPlayerPed(-1), lastveh, -1)
			
			SetFollowVehicleCamViewMode(4) -- Force first person view in the car to increase the blinking wakening and blinking effect
			
			if not HasAnimSetLoaded("MOVE_M@DRUNK@VERYDRUNK") then -- move_m@injured or MOVE_M@DRUNK@VERYDRUNK or move_injured_generic
				RequestAnimSet("MOVE_M@DRUNK@VERYDRUNK")
				while not HasAnimSetLoaded("MOVE_M@DRUNK@VERYDRUNK") do
					Citizen.Wait(0)
				end
			end	
			SetPedMovementClipset(GetPlayerPed(-1), "MOVE_M@DRUNK@VERYDRUNK", 1.0) -- Set the injured ped move, best one is verydrunk in my opinion.
			DoScreenFadeIn(1800) -- Blinking effect
			Citizen.Wait(2000)
			DoScreenFadeOut(1600)
			Citizen.Wait(1800)
			DoScreenFadeIn(1400)
			Citizen.Wait(1600)
			DoScreenFadeOut(1100)
			isBlackedOut = false -- Release controls to the player after 2 blinks (added a disable camera mode to force FPS and a disable multiplayer talking)
			Citizen.Wait(1100)
			DoScreenFadeIn(1000)
			Citizen.Wait(1200)
			DoScreenFadeOut(900)
			Citizen.Wait(900)
			DoScreenFadeIn(800)
			Citizen.Wait(1000)
			DoScreenFadeOut(700)
			Citizen.Wait(700)
			DoScreenFadeIn(600)	
			
			if impact <= 50 then -- Injured visual effect duration, depending on impact speed
				Citizen.Wait(1000)
			elseif impact > 50 and impact <= 60 then
				Citizen.Wait(5000)
			elseif impact > 60 and impact <= 70 then
				Citizen.Wait(10000)
			elseif impact > 70 and impact <= 80 then
				Citizen.Wait(15000)
			else 
				Citizen.Wait(23000)
			end			
			
			StopScreenEffect("DrugsDrivingIn") -- Stop the injured effect to introduce the smooth injured effect exit
			
			if impact <= 50 then -- Smooth exit, duration depending on impact speed, again
				StartScreenEffect("DrugsDrivingOut",1000,false)
				Citizen.Wait(1200)
				ResetPedMovementClipset(GetPlayerPed(-1))
				ResetPedWeaponMovementClipset(GetPlayerPed(-1))
				ResetPedStrafeClipset(GetPlayerPed(-1))
			elseif impact > 50 and impact <= 60 then
				StartScreenEffect("DrugsDrivingOut",4000,false)
				Citizen.Wait(4200)
				ResetPedMovementClipset(GetPlayerPed(-1))
				ResetPedWeaponMovementClipset(GetPlayerPed(-1))
				ResetPedStrafeClipset(GetPlayerPed(-1))
			elseif impact > 60 and impact <= 70 then
				StartScreenEffect("DrugsDrivingOut",8000,false)
				Citizen.Wait(8200)
				ResetPedMovementClipset(GetPlayerPed(-1))
				ResetPedWeaponMovementClipset(GetPlayerPed(-1))
				ResetPedStrafeClipset(GetPlayerPed(-1))
			elseif impact > 70 and impact <= 80 then
				StartScreenEffect("DrugsDrivingOut",10000,false)
				Citizen.Wait(10200)
				ResetPedMovementClipset(GetPlayerPed(-1))
				ResetPedWeaponMovementClipset(GetPlayerPed(-1))
				ResetPedStrafeClipset(GetPlayerPed(-1))
			else 
				StartScreenEffect("DrugsDrivingOut",20000,false)
				Citizen.Wait(20200)
				ResetPedMovementClipset(GetPlayerPed(-1))
				ResetPedWeaponMovementClipset(GetPlayerPed(-1))
				ResetPedStrafeClipset(GetPlayerPed(-1))
			end
		end)
	end
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(50)
		HideLoadingOnFadeThisFrame() -- Hide loading logo while blackout
		-- Get the vehicle the player is in, and continue if it exists
		local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
		if DoesEntityExist(vehicle) then
			-- Check if damage blackout is enabled
				local currentDamage = GetVehicleBodyHealth(vehicle)
				-- If the damage changed, see if it went over the threshold and blackout if necesary
				if currentDamage ~= oldBodyDamage then
					if not isBlackedOut and (currentDamage < oldBodyDamage) and ((oldBodyDamage - currentDamage) >= 25) then
						blackout()
					end
					oldBodyDamage = currentDamage
				end

				--local currentSpeed = GetEntitySpeed(vehicle) * 2.23
				local currentSpeed = GetEntitySpeed(vehicle) * 2.23
				-- If the speed changed, see if it went over the threshold and blackout if necesary
				if currentSpeed ~= oldSpeed then
					if not isBlackedOut and (currentSpeed < oldSpeed) and ((oldSpeed - currentSpeed) >= 125) then
						impact = (oldSpeed - currentSpeed)
						blackout()
					end
					oldSpeed = currentSpeed
				end
		else
			oldBodyDamage = 0
			oldSpeed = 0
		end
		
		if isBlackedOut then
			-- Borrowed controls from https://github.com/Sighmir/FiveM-Scripts/blob/master/vrp/vrp_hotkeys/client.lua
			DisableControlAction(0,71,true) -- veh forward
			DisableControlAction(0,72,true) -- veh backwards
			DisableControlAction(0,63,true) -- veh turn left
			DisableControlAction(0,64,true) -- veh turn right
			DisableControlAction(0,75,true) -- disable exit vehicle
			DisableControlAction(0,0,true) -- Disable camera mode to force FPS
			DisableControlAction(0,249,true) -- disable talking
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		SetPlayerHealthRechargeMultiplier(PlayerId(), 0.0)
		end
end)