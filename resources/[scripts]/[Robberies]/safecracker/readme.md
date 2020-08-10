Requirements
- ESX

Installation
- Extract to resources folder
- Start in server.cfg
- If sql file provided, import it.
- Check the config for options you might want to change.

Usage

---
- Spawn a safe
---
local objectTable
TriggerEvent('safecracker:SpawnSafe',false,location,heading, function(callbackObjectTable)
  objectTable = callbackObjectTable -- a table full of the gameobjects related to the safe.
end)

---
- Start minigame
---
local safeRewards = { 
  CashAmount    = math.random(500,1000),
  ItemsAmount   = 1, -- math.random(0,itemsamount) = reward
  Items = { 'pacificidcard' }, -- ^ for all
}
TriggerEvent('safecracker:StartMinigame', false, safeRewards)

---
- Listen for result of minigame
---
RegisterNetEvent('safecracker:EndMinigame')
AddEventHandler('safecracker:EndMinigame', function(didWin)
  if didWin then
    -- player cracked the safe
  else
    -- player did not crack the safe
  end
end)
---