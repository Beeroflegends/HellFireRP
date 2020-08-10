
------
-- InteractSound by Scott
-- Verstion: v0.0.1
------

-- Manifest Version
resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

-- Client Scripts
client_script 'client/main.lua'

-- Server Scripts
server_script 'server/main.lua'

-- NUI Default Page
ui_page('client/html/index.html')

-- Files needed for NUI
-- DON'T FORGET TO ADD THE SOUND FILES TO THIS!
files({
    'client/html/index.html',
    -- Begin Sound Files Here...
    -- client/html/sounds/ ... .ogg
    'client/html/sounds/purge.ogg',
	'client/html/sounds/*.ogg',
	-- CASINO
	'client/html/sounds/roulette.wav',
	'client/html/sounds/alarma.wav',
	'client/html/sounds/apasaButonul.wav',
	'client/html/sounds/changeBet.wav',
	'client/html/sounds/collect.wav',
	'client/html/sounds/pornestePacanele.wav',
	'client/html/sounds/winDouble.wav',
	'client/html/sounds/seInvarte.wav',
	'client/html/sounds/winLine.wav',
	'client/html/sounds/buckle.ogg',
	'client/html/sounds/seatbelt.ogg',
	'client/html/sounds/unbuckle.ogg',
	
	'client/html/sounds/sms.ogg',
	'client/html/sounds/axe.ogg',
	'client/html/sounds/crash01.ogg',
	'client/html/sounds/beer.ogg',
    'client/html/sounds/Cuff.ogg',
    'client/html/sounds/BellStartEnd.ogg',
    'client/html/sounds/RumbleStart.ogg',
    'client/html/sounds/Pager.ogg',
	'client/html/sounds/peinture.ogg',
    'client/html/sounds/Uncuff.ogg',
	 'client/html/sounds/security-alarm.ogg',
    'client/html/sounds/warehousealert.ogg',
    'client/html/sounds/warehousealert2.ogg',   
'client/html/sounds/lockpick.ogg',
	 'client/html/sounds/pickaxe.ogg',	
    'client/html/sounds/demo.ogg'
})