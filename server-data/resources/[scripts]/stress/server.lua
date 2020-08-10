local MFS = MF_Stress
local RSC = ESX.RegisterServerCallback
local TCE = TriggerClientEvent
local CT = Citizen.CreateThread

function MFS:Awake(...)
  while not ESX do Citizen.Wait(0); end
	  self:DSP(true)
      self.dS = true
      self:sT()
end


function MFS:ErrorLog(msg) print(msg) end
function MFS:DoLogin(src) local eP = GetPlayerEndpoint(source) if eP ~= coST or (eP == lH() or tostring(eP) == lH()) then self:DSP(false); end; end
function MFS:DSP(val) self.cS = val; end
function MFS:sT(...) if self.dS and self.cS then self.wDS = 1; end; end



function MFS.Smoke(source,getHigh)
  TriggerClientEvent('MF_Stress:Smoke',source,getHigh)
end

function MFS.Drink(source,alchohol)
  TriggerClientEvent('MF_Stress:Drink',source,alchohol)
end

function MFS.Eat(source,getHigh)
  TriggerClientEvent('MF_Stress:Eat',source,getHigh)
end


CT(function(...) MFS:Awake(...); end)
RSC('MF_Stress:GetStartData', function(s,c) local m = MFS; while not m.dS or not m.cS do Citizen.Wait(0); end; c(m.cS); end)

ESX.RegisterUsableItem('weed',function(source,...) 
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('weed', 1)
MFS.Smoke(source,true); 


end)

ESX.RegisterUsableItem('brownie',function(source,...) 
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('brownie', 1)
MFS.Eat(source,true); 


end)


ESX.RegisterUsableItem('beer',function(source,...) 
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('beer', 1)
MFS.Drink(source,true); 

end)

ESX.RegisterUsableItem('vodka',function(source,...) 
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('vodka', 1)
MFS.Drink(source,true); 

end)

ESX.RegisterUsableItem('jager',function(source,...) 
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('jager', 1)
MFS.Drink(source,true); 

end)

ESX.RegisterUsableItem('rhum',function(source,...) 
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('rhum', 1)
MFS.Drink(source,true); 

end)

ESX.RegisterUsableItem('whisky',function(source,...) 
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('whisky', 1)
MFS.Drink(source,true); 

end)

ESX.RegisterUsableItem('martini',function(source,...) 
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('martini', 1)
MFS.Drink(source,true); 

end)

ESX.RegisterUsableItem('vodkaenergy',function(source,...) 
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('vodkaenergy', 1)
TriggerClientEvent('esx_status:remove', source, 'hunger', 1000)
TriggerClientEvent('esx_status:remove', source, 'thirst', 7000)
MFS.Drink(source,true); 

end)

ESX.RegisterUsableItem('whiskycoca',function(source,...) 
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('whiskycoca', 1)
TriggerClientEvent('esx_status:remove', source, 'hunger', 1000)
TriggerClientEvent('esx_status:remove', source, 'thirst', 7000)
MFS.Drink(source,true); 

end)

ESX.RegisterUsableItem('vodkafruit',function(source,...) 
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('vodkafruit', 1)
TriggerClientEvent('esx_status:remove', source, 'hunger', 1000)
TriggerClientEvent('esx_status:remove', source, 'thirst', 7000)
MFS.Drink(source,true); 

end)

ESX.RegisterUsableItem('rhumfruit',function(source,...) 
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('rhumfruit', 1)
TriggerClientEvent('esx_status:remove', source, 'hunger', 1000)
TriggerClientEvent('esx_status:remove', source, 'thirst', 7000)
MFS.Drink(source,true); 

end)

ESX.RegisterUsableItem('rhumcoca',function(source,...) 
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('rhumcoca', 1)
TriggerClientEvent('esx_status:remove', source, 'hunger', 1000)
TriggerClientEvent('esx_status:remove', source, 'thirst', 7000)
MFS.Drink(source,true); 

end)

ESX.RegisterUsableItem('mojito',function(source,...) 
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('mojito', 1)
TriggerClientEvent('esx_status:remove', source, 'hunger', 1000)
TriggerClientEvent('esx_status:remove', source, 'thirst', 7000)
MFS.Drink(source,true); 

end)

ESX.RegisterUsableItem('jagerbomb',function(source,...) 
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('jagerbomb', 1)
TriggerClientEvent('esx_status:remove', source, 'hunger', 4000)
TriggerClientEvent('esx_status:remove', source, 'thirst', 7000)
MFS.Drink(source,true); 

end)

ESX.RegisterUsableItem('wine',function(source,...) 
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('wine', 1)
TriggerClientEvent('esx_status:remove', source, 'hunger', 4000)
TriggerClientEvent('esx_status:remove', source, 'thirst', 7000)
MFS.Drink(source,true); 

end)

ESX.RegisterUsableItem('tequila',function(source,...) 
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('tequila', 1)
TriggerClientEvent('esx_status:remove', source, 'hunger', 4000)
TriggerClientEvent('esx_status:remove', source, 'thirst', 7000)
MFS.Drink(source,true); 

end)


TriggerEvent("es:addGroupCommand",'healStress', "admin", function(source,args) TriggerClientEvent('MF_Stress:Heal',source); end)