ESX                     = nil


Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
  
  TriggerEvent('skinchanger:getSkin', function(skin)
		playerGender = skin.sex
	end)
  
  
end)


AddEventHandler('skinchanger:loadSkin', function(character)
	playerGender = character.sex
end)

RegisterNetEvent('smerfikubrania:koszulka')
AddEventHandler('smerfikubrania:koszulka', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
		local hombres = {
		['tshirt_1'] = 15, ['tshirt_2'] = 0,
		['torso_1'] = 15, ['torso_2'] = 0,
		['arms'] = 15, ['arms_2'] = 0
		}
		
		local mujeres = {
		['tshirt_1'] = 15, ['tshirt_2'] = 0,
		['torso_1'] = 15, ['torso_2'] = 0,
		['arms'] = 15, ['arms_2'] = 0
		}
		
		
		if playerGender == 0 then
		TriggerEvent('skinchanger:loadClothes', skin, hombres)
		else
		TriggerEvent('skinchanger:loadClothes', skin, mujeres)
		end
	end)
end)
RegisterNetEvent('smerfikubrania:spodnie')
AddEventHandler('smerfikubrania:spodnie', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
	
		local hombres = {
		['pants_1'] = 21, ['pants_2'] = 0
		}
		
		local mujeres = {
		['pants_1'] = 21, ['pants_2'] = 0
		}
		
		if playerGender == 0 then
		TriggerEvent('skinchanger:loadClothes', skin, hombres)
		else
		TriggerEvent('skinchanger:loadClothes', skin, mujeres)
		end
	end)
end)

RegisterNetEvent('smerfikubrania:buty')
AddEventHandler('smerfikubrania:buty', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
	

		local hombres = {
		['shoes_1'] = 34, ['shoes_2'] = 0
		}
		
		local mujeres = {
		['shoes_1'] = 35, ['shoes_2'] = 0
		}
		
		if playerGender == 0 then
		TriggerEvent('skinchanger:loadClothes', skin, hombres)
		else
		TriggerEvent('skinchanger:loadClothes', skin, mujeres)
		end
	end)
end)

function OpenActionMenuInteraction(target)

	local elements = {}

	table.insert(elements, {label = ('Put on clothes'), value = 'ubie'})
	table.insert(elements, {label = ('Take off shirt'), value = 'tul'})
	table.insert(elements, {label = ('Take off pants'), value = 'spo'})
	table.insert(elements, {label = ('Take off shoes'), value = 'but'})
	table.insert(elements, {label = ('Close Menu'), value = 'close'})
  		ESX.UI.Menu.CloseAll()	


	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'action_menu',
		{
			title    = ('Clothes'),
			align    = 'right',
			elements = elements
		},
    function(data, menu)



		
		if data.current.value == 'ubie' then			
		ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
		TriggerEvent('skinchanger:loadSkin', skin)
		end)
		ESX.UI.Menu.CloseAll()	
		elseif data.current.value == 'tul' then
		TriggerEvent('smerfikubrania:koszulka')
		ESX.UI.Menu.CloseAll()	
		elseif data.current.value == 'spo' then
		TriggerEvent('smerfikubrania:spodnie')
		ESX.UI.Menu.CloseAll()	
		elseif data.current.value == 'but' then
		TriggerEvent('smerfikubrania:buty')
		ESX.UI.Menu.CloseAll()
		elseif data.current.value == 'close' then
		TriggerEvent ('smerfikubrania:close')
		ESX.UI.Menu.CloseAll()
	  end
	end)


end
			

-- Comando
RegisterCommand('clothes', function(...)
	OpenActionMenuInteraction()
end)
