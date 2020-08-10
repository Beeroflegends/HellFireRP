
--[[

    -- You will have to implement this into your garage and vehicle shop menu when it creates the vehicle with CreateVehicle, use the variable that native is assigned to, instead of "veh"
    
    local vehNet = NetworkGetNetworkIdFromEntity(veh)
    local plate = GetVehicleNumberPlateText(veh)
    TriggerServerEvent("SOSAY_Locking:GiveKeys", vehNet, plate)

]]

ESX = nil -- dont touch

---------------------------------------------------------------------------
-- Threads
---------------------------------------------------------------------------
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
    while true do

        local ply = PlayerPedId()
        if DoesEntityExist(GetVehiclePedIsTryingToEnter(ply)) then
            local veh = GetVehiclePedIsTryingToEnter(ply)
            local isLocked = GetVehicleDoorLockStatus(veh)
            if isLocked == 7 then -- Prevent people from pulling AI out of there vehicles, if not wanted, comment it out.
                SetVehicleDoorsLocked(veh, 2)
            end

            if isLocked == 4 then -- Lock default parked cars 50%
                ClearPedTasks(ply)
            end

            local aiPed = GetPedInVehicleSeat(veh, -1)
            if aiPed then
                SetPedCanBeDraggedOut(aiPed, false)
            end
        end
        
        if IsControlJustPressed(0, 303) and GetLastInputMethod(0) then
            local insideVeh = IsPedInAnyVehicle(ply, false)

            if insideVeh == 1 then
                local veh = GetVehiclePedIsIn(ply, false)
                local isLocked = GetVehicleDoorLockStatus(veh)
                if isLocked == 0 then
                    SetVehicleDoorsLocked(veh, 2)
                elseif isLocked == 1 then
                    SetVehicleDoorsLocked(veh, 2)
                elseif isLocked == 5 then
                    SetVehicleDoorsLocked(veh, 2)
                else
                    SetVehicleDoorsLocked(veh, 0)
                end
            else
                local inFront = GetVehicleInFront()
                if inFront ~= 0 then
                    local vehNet = NetworkGetNetworkIdFromEntity(inFront)
                    local plate = GetVehicleNumberPlateText(inFront)
                    if vehNet ~= 0 then
                        TriggerServerEvent("SOSAY_Locking:CheckOwnership", vehNet, plate)
                    end
                end
            end
        end
        Wait(0)
    end
end)



---------------------------------------------------------------------------
-- Handle ESX Above Mini-Map notification from server side
---------------------------------------------------------------------------
RegisterNetEvent("SOSAY_Locking:ESX_Notification")
AddEventHandler("SOSAY_Locking:ESX_Notification", function(message)
    ESX.ShowNotification(message)
end)

---------------------------------------------------------------------------
-- Functions
---------------------------------------------------------------------------



-- Get Closest and Vehicle In Front of you-
function GetVehicleInFront()
	local plyCoords = GetEntityCoords(GetPlayerPed(PlayerId()), false)
	local plyOffset = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 5.0, 0.0)
	local rayHandle = StartShapeTestCapsule(plyCoords.x, plyCoords.y, plyCoords.z, plyOffset.x, plyOffset.y, plyOffset.z, 1.0, 10, GetPlayerPed(PlayerId()), 7)
	local _, _, _, _, vehicle = GetShapeTestResult(rayHandle)
	return vehicle
end

function GetClosestVeh()
	local ply = GetPlayerPed(-1)
    local plyCoords = GetEntityCoords(ply, 0)
    local entityWorld = GetOffsetFromEntityInWorldCoords(ply, 0.0, 20.0, 0.0)
    local rayHandle = CastRayPointToPoint(plyCoords["x"], plyCoords["y"], plyCoords["z"], entityWorld.x, entityWorld.y, entityWorld.z, 10, ply, 0)
    local a, b, c, d, targetVehicle = GetRaycastResult(rayHandle)

    return targetVehicle
end