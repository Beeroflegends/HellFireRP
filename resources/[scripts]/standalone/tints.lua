local ESX = nil

-- ESX
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)
 

RegisterCommand('tint', function(...)
	
	ESX.TriggerServerCallback('pxrp_vip:getVIPStatus', function(isVIP)
if isVIP then

   colores()
	
	else
							exports['mythic_notify']:DoHudText('error', 'Not a VIP member')
						end
						
						
					end, GetPlayerServerId(PlayerId()), '1')
	
end)


colores = function()
    local ped = GetPlayerPed(-1)
	local weaponhash = GetSelectedPedWeapon(PlayerPedId())
	
        ESX.UI.Menu.CloseAll()
        ESX.UI.Menu.Open(
                'default', GetCurrentResourceName(), 'buy_storage',
            {
                title = 'Weapon Tints',
                align = 'right',
               elements = {
			{label = 'Normal',	value = 'normal'},
			{label = 'Green',	value = 'verde'},
			{label = 'Gold',		value = 'dorada'},
			{label = 'Pink',	value = 'rosa'},
			{label = 'Militar',	value = 'militar'},
			{label = 'LSPD',		value = 'lspd'},
			{label = 'Orange',		value = 'naranja'},
			{label = 'Platinum',		value = 'platino'} }
            },
            function(data, menu)
                 if data.current.value == 'normal' then
				 
				 SetPedWeaponTintIndex(ped, weaponhash, 0)
				 
				elseif data.current.value == 'verde' then
				
				SetPedWeaponTintIndex(ped, weaponhash, 1)
				
				elseif data.current.value == 'dorada' then
				
				SetPedWeaponTintIndex(ped, weaponhash, 2)
				
				elseif data.current.value == 'rosa' then
				
				SetPedWeaponTintIndex(ped, weaponhash, 3)
				
				elseif data.current.value == 'militar' then
				
				SetPedWeaponTintIndex(ped, weaponhash, 4)
				
				elseif data.current.value == 'lspd' then
				
				SetPedWeaponTintIndex(ped, weaponhash, 5)
				
				elseif data.current.value == 'naranja' then
				
				SetPedWeaponTintIndex(ped, weaponhash, 6)
				
				elseif data.current.value == 'platino' then
				
				SetPedWeaponTintIndex(ped, weaponhash, 7)
				
			   end
            end,
        function(data, menu)
            menu.close()
        end)
end