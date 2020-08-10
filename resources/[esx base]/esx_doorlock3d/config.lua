Config = {}
Config.Locale = 'en'

Config.Draw3DText = "~r~Locked~r~"
Config.Draw3DTexts = "Press ~g~[E]~s~ to ~y~Unlock~s~"

Config.DoorList = {

	-- Entrance Doors
	{
		textCoords = vector3(434.7, -982.0, 31.5),
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_ph_door01',
				objYaw = -90.0,
				objCoords = vector3(434.7, -980.6, 30.8)
			},

			{
				objName = 'v_ilev_ph_door002',
				objYaw = -90.0,
				objCoords = vector3(434.7, -983.2, 30.8)
			}
		}
	},

	-- To locker room & roof
	{
		objName = 'v_ilev_ph_gendoor004',
		objYaw = 90.0,
		objCoords  = vector3(449.6, -986.4, 30.6),
		textCoords = vector3(450.1, -986.3, 31.7),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Rooftop
	{
		objName = 'v_ilev_gtdoor02',
		objYaw = 90.0,
		objCoords  = vector3(464.3, -984.6, 43.8),
		textCoords = vector3(464.3, -984.0, 44.8),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Hallway to roof
	{
		objName = 'v_ilev_arm_secdoor',
		objYaw = 90.0,
		objCoords  = vector3(461.2, -985.3, 30.8),
		textCoords = vector3(461.5, -986.0, 31.5),
		authorizedJobs = { 'police' },
		locked = true
	},

	
	-- Armory
	{
		objName = 'v_ilev_arm_secdoor',
		objYaw = -90.0,
		objCoords  = vector3(452.6, -982.7, 30.6),
		textCoords = vector3(453.0, -982.6, 31.7),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Captain Office
	{
		objName = 'v_ilev_ph_gendoor002',
		objYaw = -180.0,
		objCoords  = vector3(447.2, -980.6, 30.6),
		textCoords = vector3(447.2, -980.0, 31.7),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- To downstairs (double doors)
	{
		textCoords = vector3(444.6, -989.4, 31.7),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 4,
		doors = {
			{
				objName = 'v_ilev_ph_gendoor005',
				objYaw = 180.0,
				objCoords = vector3(443.9, -989.0, 30.6)
			},

			{
				objName = 'v_ilev_ph_gendoor005',
				objYaw = 0.0,
				objCoords = vector3(445.3, -988.7, 30.6)
			}
		}
	},

	
	--
	-- Mission Row Cells
	--

	-- Main Cells
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 0.0,
		objCoords  = vector3(463.8, -992.6, 24.9),
		textCoords = vector3(463.3, -992.6, 25.1),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Cell 1
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = -90.0,
		objCoords  = vector3(462.3, -993.6, 24.9),
		textCoords = vector3(461.8, -993.3, 25.0),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Cell 2
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 90.0,
		objCoords  = vector3(462.3, -998.1, 24.9),
		textCoords = vector3(461.8, -998.8, 25.0),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Cell 3
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 90.0,
		objCoords  = vector3(462.7, -1001.9, 24.9),
		textCoords = vector3(461.8, -1002.4, 25.0),
		authorizedJobs = { 'police' },
		locked = true
	},
	
	{
		textCoords = vector3(460.82, -990.52, 30.84),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 4,
		doors = {
			{
				objName = 'v_ilev_ph_gendoor006',
				objYaw = 90.11,
				objCoords  = vector3(460.82, -989.52, 30.84)
			},

			{
				objName = 'v_ilev_ph_gendoor006',
				objYaw = 270.0,
				objCoords  = vector3(460.82, -992.12, 30.05)
			}
		}
	},
	
	{
		objName = 'v_ilev_rc_door2',
		objYaw = 0.50,
		objCoords  = vector3(451.32, -987.36, 30.84),
		textCoords = vector3(452.72, -987.36, 30.84),
		authorizedJobs = { 'police' },
		distance = 2,
		locked = true
	},
	
	
	
	

	-- Bean Machine

		{
		objName = 'v_ilev_ra_door2',
		objYaw = 0.0,
		objCoords  = vector3(-629.79, 228.98, 82.04),
		textCoords = vector3(-629.13, 229.35, 81.88),
		authorizedJobs = { 'cafe' },
		locked = false
	},

		{
		objName = 'v_ilev_ra_door2',
		objYaw = 270.0,
		objCoords  = vector3(-633.10, 228.28, 82.04),
		textCoords = vector3(-633.05, 227.44, 81.88),
		authorizedJobs = { 'cafe' },
		locked = false
	},

	{
		textCoords = vector3(-630.89, 234.23, 86.33),
		authorizedJobs = { 'cafe' },
		locked = false,
		distance = 5,
		doors = {
			{
				objName = 'prop_doorbin',
				objYaw = 208.15,
				objCoords = vector3(-632.23, 233.86, 86.40)
			},

			{
				objName = 'prop_doorbin',
				objYaw = 27.80,
				objCoords = vector3(-629.93, 235.07, 86.40)
			}
		}
	},


	
	
	-- To Back
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 0.0,
		objCoords  = vector3(463.4, -1003.5, 25.0),
		textCoords = vector3(464.0, -1003.5, 25.5),
		authorizedJobs = { 'police' },
		locked = true
	},

	--
	-- Mission Row Back
	--

	-- Back (double doors)
	{
		textCoords = vector3(468.6, -1014.4, 27.1),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 4,
		doors = {
			{
				objName = 'v_ilev_rc_door2',
				objYaw = 0.0,
				objCoords  = vector3(467.3, -1014.4, 26.5)
			},

			{
				objName = 'v_ilev_rc_door2',
				objYaw = 180.0,
				objCoords  = vector3(469.9, -1014.4, 26.5)
			}
		}
	},

	

	
	-- Entrada Garage
	
	{
		textCoords = vector3(445.9212, -999.001, 30.78),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 1,
		doors = {
			{
				objName = 'v_ilev_gtdoor',
				objYaw = 0.172439,
				objCoords  = vector3(444.6212, -999.001, 30.78)
			},

			{
				objName = 'v_ilev_gtdoor',
				objYaw = 180.16,
				objCoords  = vector3(447.2184, -999.0023, 30.78)
			}
		}
	},
	
	{
		textCoords = vector3(445.82, -997.044, 30.84),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 1,
		doors = {
			{
				objName = 'v_ilev_rc_door2',
				objYaw = 179.8404,
				objCoords  = vector3(447.2303, -997.0447, 30.84)
			},

			{
				objName = 'v_ilev_rc_door2',
				objYaw = 0.16,
				objCoords  = vector3(444.62, -997.044, 30.84)
			}
		}
	},
	
	-- Escaleras Principales
	

	
	{
		textCoords = vector3(443.0298, -992.941, 30.83),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 1,
		doors = {
			{
				objName = 'v_ilev_ph_gendoor006',
				objYaw = 270.019,
				objCoords  = vector3(443.02, -994.5412, 30.83)
			},

			{
				objName = 'v_ilev_ph_gendoor006',
				objYaw = 90.16,
				objCoords  = vector3(443.0298, -991.941, 30.83)
			}
		}
	},
	
	
	
	
	-- Armeria
	{
		objName = 'v_ilev_arm_secdoor',
		objYaw = 161.014,
		objCoords  = vector3(618.38, -18.44, 82.92),
		textCoords = vector3(619.68, -18.44, 82.92),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 14,
		size = 2
	},
	
	--
	-- Sandy Shores
	--

	-- Entrance
	{
		objName = 'v_ilev_shrfdoor',
		objYaw = 30.0,
		objCoords  = vector3(1855.1, 3683.5, 34.2),
		textCoords = vector3(1855.1, 3683.5, 35.0),
		authorizedJobs = { 'police' },
		locked = false
	},

	--
	-- Paleto Bay
	--

	-- Entrance (double doors)
	{
		textCoords = vector3(-443.5, 6016.3, 32.0),
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_shrf2door',
				objYaw = -45.0,
				objCoords  = vector3(-443.1, 6015.6, 31.7),
			},

			{
				objName = 'v_ilev_shrf2door',
				objYaw = 135.0,
				objCoords  = vector3(-443.9, 6016.6, 31.7)
			}
		}
	},

	
	
	-- Hospital
	
	  -- Casilleros
	  
	  
	
	{
		objName = 'gabz_pillbox_singledoor',
		objCoords  = vector3(308.23, -597.75, 43.43),
		textCoords = vector3(308.23, -597.75, 43.43),
		authorizedJobs = { 'ambulance' },
		locked = true
	},
	
	{
		objName = 'gabz_pillbox_singledoor',
		objCoords  = vector3(303.9087, -596.578, 43.43391),
		textCoords = vector3(303.9087, -597.578, 43.43391),
		authorizedJobs = { 'ambulance' },
		locked = true
	},
	
	-- Oficina principal
	
	{
		objName = 'gabz_pillbox_singledoor',
		objCoords  = vector3(339.005, -586.7034, 43.43391),
		textCoords = vector3(340.005, -586.7034, 43.43391),
		authorizedJobs = { 'ambulance' },
		locked = true
	},
	
	
	-- Helipuerto / Garage
		
	{
		textCoords = vector3(327.30, -593.81, 43.43),
		authorizedJobs = { 'ambulance' },
		locked = true,
		distance = 5,
		doors = {
			{
				objName = 'gabz_pillbox_doubledoor_l',
				
				objCoords = vector3(328.1364, -592.7761, 43.43391)
			},

			{
				objName = 'gabz_pillbox_doubledoor_r',
				
				objCoords = vector3(327.256, -595.195, 43.43394)
			}
		}
	},
	
	
	
	--[[ Galaxy
	
	{
		objName = 'ba_prop_door_club_entrance',
		objYaw = 166.53,
		objCoords  = vector3(355.69, 301.0186, 104.20), 
		textCoords = vector3(354.69, 301.0186, 104.20),
		authorizedJobs = { 'nightclub' },
		locked = true
	},
	
	{
		objName = 'ba_prop_door_club_entrance',
		objYaw = 344.47,
		objCoords  = vector3(343.69, 290.11, 95.95), 
		textCoords = vector3(344.69, 290.11, 95.95),
		authorizedJobs = { 'nightclub' },
		locked = true
	},
	
	{
		objName = 'ba_prop_door_club_glam_generic',
		objYaw = 344.80,
		objCoords  = vector3(380.15, 266.63, 91.35), 
		textCoords = vector3(381.15, 266.63, 91.35),
		authorizedJobs = { 'nightclub' },
		locked = true
	},
	
	{
		objName = 'ba_prop_door_club_generic_vip',
		objYaw = 74.67,
		objCoords  = vector3(377.78, 267.76, 95.15), 
		textCoords = vector3(377.95, 269.26, 95.15),
		authorizedJobs = { 'nightclub' },
		locked = true
	},
	
	{
		objName = 'ba_prop_door_club_glass',
		objYaw = 299.66,
		objCoords  = vector3(384.90, 269.45, 95.15), 
		textCoords = vector3(384.90, 268.45, 95.15),
		authorizedJobs = { 'nightclub' },
		locked = true
	},
	
	{
		objName = 'ba_prop_door_club_glass',
		objYaw = 305.477,
		objCoords  = vector3(393.94, 274.67, 95.15), 
		textCoords = vector3(394.54, 273.67, 95.15),
		authorizedJobs = { 'nightclub' },
		locked = true
	},
	
	{
		objName = 'ba_prop_door_club_glam_generic',
		objYaw = 254.49,
		objCoords  = vector3(394.80, 278.05, 95.15), 
		textCoords = vector3(394.80, 276.95, 95.15),
		authorizedJobs = { 'nightclub' },
		locked = true
	},
	
	]]--
	
	-- HOSPITAL Laterales
	
	{
		textCoords = vector3(325.34, -589.60, 43.28),
		authorizedJobs = { 'ambulance' },
		locked = true,
		distance = 5,
		doors = {
			{
				objName = 'gabz_pillbox_doubledoor_l',
				
				objCoords = vector3(324.23, -589.22, 43.43391)
			},

			{
				objName = 'gabz_pillbox_doubledoor_r',
				
				objCoords = vector3(326.65, -590.10, 43.43394)
			}
		}
	},
	
	{
		textCoords = vector3(313.04, -572.02, 43.28),
		authorizedJobs = { 'ambulance' },
		locked = true,
		distance = 5,
		doors = {
			{
				objName = 'gabz_pillbox_doubledoor_l',
				
				objCoords = vector3(312.78, -572.99, 43.43391)
			},

			{
				objName = 'gabz_pillbox_doubledoor_r',
				
				objCoords = vector3(314.42, -572.22, 43.43394)
			}
		}
	},
	
	
	{
		objName = 'v_ilev_trev_doorfront',
		objYaw = 35.0,
		objCoords  = vector3(-1149.70, -1521.08, 10.78), 
		textCoords = vector3(-1150.84, -1521.52, 10.78),
		authorizedJobs = { 'ambulance' },
		locked = true
	},
	
	{
		objName = 'v_ilev_trev_door',
		objYaw = 305.00,
		objCoords  = vector3(-1149.89, -1515.72, 10.78), 
		textCoords = vector3(-1150.30, -1514.72, 10.78),
		authorizedJobs = { 'ambulance' },
		locked = true
	},
	
	{
		objName = 'prison_prop_door1',
		objYaw = 269.60,
		objCoords  = vector3(1759.91, 2614.64, 45.93), 
		textCoords = vector3(1759.91, 2614.64, 45.98),
		authorizedJobs = { 'police' },
		locked = true
	},
	
	{
		objName = 'prison_prop_door2',
		objYaw = 90.01,
		objCoords  = vector3(1763.44, 2617.44, 46.13), 
		textCoords = vector3(1763.44, 2617.44, 46.15),
		authorizedJobs = { 'police' },
		locked = true
	},
	
	-- Sandy Comisaria
	
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 300.00,
		objCoords  = vector3(1858.99, 3694.93, 30.40), 
		textCoords = vector3(1858.09, 3695.84, 30.26),
		authorizedJobs = { 'police' },
		locked = true
	},
	
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 300.00,
		objCoords  = vector3(1859.58, 3692.27, 30.26), 
		textCoords = vector3(1860.09, 3692.49, 30.26),
		authorizedJobs = { 'police' },
		locked = true
	},
	
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 300.00,
		objCoords  = vector3(1862.76, 3688.41, 30.40), 
		textCoords = vector3(1862.01, 3689.26, 30.40),
		authorizedJobs = { 'police' },
		locked = true
	},
	
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 300.00,
		objCoords  = vector3(1859.69, 3686.64, 30.40), 
		textCoords = vector3(1859.33, 3687.67, 30.40),
		authorizedJobs = { 'police' },
		locked = true
	},
	
	{
		objName = 'v_ilev_arm_secdoor',
		objYaw = 29.87,
		objCoords  = vector3(1852.92, 3686.40, 30.40), 
		textCoords = vector3(1852.12, 3685.41, 30.40),
		authorizedJobs = { 'police' },
		locked = true
	},
	
	{
		objName = 'v_ilev_arm_secdoor',
		objYaw = 29.87,
		objCoords  = vector3(1856.16, 3688.26, 30.40), 
		textCoords = vector3(1855.36, 3687.36, 30.40),
		authorizedJobs = { 'police' },
		locked = true
	},
	
	
	{
		textCoords = vector3(1850.16, 3682.61, 30.26),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 2,
		doors = {
			{
				objName = 'v_ilev_rc_door2',
				objYaw = 299.56,
				objCoords = vector3(1849.67, 3683.85, 30.40)
			},

			{
				objName = 'v_ilev_rc_door2',
				objYaw = 120.74,
				objCoords = vector3(1850.98, 3681.60, 30.40)
			}
		}
	},
	
	{
		textCoords = vector3(1847.56, 3683.18, 30.26),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 2,
		doors = {
			{
				objName = 'v_ilev_rc_door2',
				objYaw = 30.26,
				objCoords = vector3(1846.41, 3682.62, 30.40)
			},

			{
				objName = 'v_ilev_rc_door2',
				objYaw = 210.12,
				objCoords = vector3(1848.65, 3683.92, 30.40)
			}
		}
	},
	
	{
		textCoords = vector3(1846.41, 3682.62, 34.41),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 2,
		doors = {
			{
				objName = 'v_ilev_rc_door2',
				objYaw = 30.26,
				objCoords = vector3(1846.41, 3682.62, 34.40)
			},

			{
				objName = 'v_ilev_rc_door2',
				objYaw = 210.12,
				objCoords = vector3(1848.65, 3683.92, 34.40)
			}
		}
	},
	
	{
		textCoords = vector3(1850.50, 3683.02, 34.41),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 2,
		doors = {
			{
				objName = 'v_ilev_rc_door2',
				objYaw = 120.26,
				objCoords = vector3(1851.28, 3681.87, 34.40)
			},

			{
				objName = 'v_ilev_rc_door2',
				objYaw = 299.12,
				objCoords = vector3(1849.98, 3684.11, 34.41)
			}
		}
	},
	
	{
		textCoords = vector3(1848.31, 3690.02, 34.27),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 2,
		doors = {
			{
				objName = 'v_ilev_rc_door2',
				objYaw = 210.26,
				objCoords = vector3(1849.40, 3691.20, 34.40)
			},

			{
				objName = 'v_ilev_rc_door2',
				objYaw = 28.92,
				objCoords = vector3(1847.13, 3689.94, 34.41)
			}
		}
	},
	
	{
		objName = 'v_ilev_cd_entrydoor',
		objYaw = 299.67,
		objCoords  = vector3(1844.26, 3694.16, 34.40), 
		textCoords = vector3(1845.17, 3693.19, 34.40),
		authorizedJobs = { 'police' },
		locked = true
	},
	
	{
		objName = 'v_ilev_rc_door2',
		objYaw = 299.67,
		objCoords  = vector3(1848.64, 3693.44, 34.40), 
		textCoords = vector3(1848.98, 3692.34, 34.40),
		authorizedJobs = { 'police' },
		locked = true
	},
	
	{
		objName = 'v_ilev_rc_door2',
		objYaw = 208.61,
		objCoords  = vector3(1857.25, 3690.29, 34.40), 
		textCoords = vector3(1856.40, 3689.34, 34.40),
		authorizedJobs = { 'police' },
		locked = true
	},
	
	{
		objName = 'v_ilev_shrfdoor',
		objYaw = 30.01,
		objCoords  = vector3(1860.74, 3692.40, 34.59), 
		textCoords = vector3(1859.79, 3691.94, 34.40),
		authorizedJobs = { 'police' },
		locked = true
	},
	
	{
		objName = 'v_ilev_rc_door2',
		objYaw = 120.01,
		objCoords  = vector3(1852.50, 3694.17, 34.41), 
		textCoords = vector3(1851.68, 3695.04, 34.40),
		authorizedJobs = { 'police' },
		locked = true
	},
	
	{
		objName = 'prop_fnclink_02gate6_l',
		objYaw = 209.01,
		objCoords  = vector3(1858.15, 3699.13, 34.54), 
		textCoords = vector3(1856.61, 3697.91, 34.54),
		authorizedJobs = { 'police' },
		locked = true
	},
	
	-- Hospital Sandy Shores
	
	{
		textCoords = vector3(1839.30, 3677.46, 34.27),
		authorizedJobs = { 'ambulance' },
		locked = true,
		distance = 2,
		doors = {
			{
				objName = 'v_ilev_cor_doorglassb',
				objYaw = 120.06,
				objCoords = vector3(1838.79, 3678.69, 34.42)
			},

			{
				objName = 'v_ilev_cor_doorglassa',
				objYaw = 120.14,
				objCoords = vector3(1840.08, 3676.44, 34.41)
			}
		}
	},
	
	{
		objName = 'v_ilev_cor_firedoor',
		objYaw = 209.91,
		objCoords  = vector3(1840.71, 3681.74, 34.29), 
		textCoords = vector3(1841.81, 3681.94, 34.29),
		authorizedJobs = { 'ambulance' },
		locked = true
	},
	
	{
		objName = 'v_ilev_cor_firedoor',
		objYaw = 120.00,
		objCoords  = vector3(1826.88, 3676.90, 34.29), 
		textCoords = vector3(1827.82, 3675.64, 34.29),
		authorizedJobs = { 'ambulance' },
		locked = true
	},
	
	
}