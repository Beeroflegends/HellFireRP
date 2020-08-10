Config = {}

Config.Yacht = {
    [1] = { 
		loc = {-2072.4143066406,-1020.1676025391,5.8841509819031},
		blipName = "Humane Labs",
		blipSprite = 108,
		blipColor = 5,
		blipScale = 0.7,
		recentlyRobbed = false,
		startPos = {3524.40,3711.41,21.10},
		started = false,
		keypad = {3522.41,3705.11,20.99},
		keypadHacked = false,
		currentlyHacking = false,
		vaultDoor = {3526.021,3702.243,21.34},
		vaultLocked = true,
		vaultModel = 19193616,
		trolleyPos = {3539.29,3665.64,28.12,261.86},
		cashTaken = false,
		stealing = false,
		JobPlayer = false,
		GoonsSpawned = false,
		Goons = {
			NPC1 = { x = 3524.47, y = 3688.41, z = 21.02, h = 353.60, ped = 'G_M_Y_Lost_02', animDict = 'amb@world_human_cop_idles@female@base', animName = 'base', weapon = 'WEAPON_PISTOL', },
			NPC2 = { x = 3536.47, y = 3667.97, z = 28.12, h = 128.62, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_PISTOL', },
			NPC3 = { x = 3529.32, y = 3659.85, z = 28.12, h = 359.54, ped = 'G_M_Y_SalvaBoss_01', animDict = 'amb@world_human_leaning@male@wall@back@legs_crossed@base', animName = 'base', weapon = 'WEAPON_PISTOL' }
		}
	},
}

Config.PoliceDBname = "police"				-- name for policejob in database
Config.RequiredPolice = 0 					-- required police online for starting heist
Config.EnablePlayerMoneyBag = true			-- enable/disable wearing a bag after cash animation
Config.CooldownTimer = 240					-- in minutes

Config.HackerDevice = "keycard"		-- database name for hacking item
Config.DrillItem = "drill"					-- database name for drill item

-- Reward Settings:
Config.RewardBasedOnCops = false	-- enable or disable rewards based on police online
Config.MinCashTake = 30				-- this value is multiplied with 100, so 3 means 300. 12 means 1200 and etc.
Config.MaxCashTake = 60				-- this value is multiplied with 100, so 6 means 600. 16 means 1600 and etc.
