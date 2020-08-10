Config = {}

Config.VehicleMenu = true -- enable this if you wan't a vehicle menu.
Config.VehicleMenuButton = 166 -- change this to the key you want to open the menu with. buttons: https://docs.fivem.net/game-references/controls/
Config.RangeCheck = 25.0 -- this is the change you will be able to control the vehicle.

Config.Garages = {
    ["A"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(216.29, -809.70, 30.81)
            },
            ["vehicle"] = {
                ["position"] = vector3(217.06, -785.97, 30.81), 
                ["heading"] = 336.46
            }
        },
        ["camera"] = {  -- camera is not needed just if you want cool effects.
            ["x"] = 224.78, 
            ["y"] = -782.82, 
            ["z"] = 35.84, 
            ["rotationX"] = -31.401574149728, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = -243.40157422423 
        } 
    },

    ["B"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(1960.94, 3834.87, 32.18)
            },
            ["vehicle"] = {
                ["position"] = vector3(1971.51, 3838.59, 32.01), 
                ["heading"] = 296.23
            }
        },
        ["camera"] = { 
            ["x"] = 1975.99, 
            ["y"] = 3841.22, 
            ["z"] = 33.02, 
            ["rotationX"] = -21.637795701623, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 125.73228356242 
        }
    },

    ["C"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(115.22, 6608.87, 31.89)
            },
            ["vehicle"] = {
                ["position"] = vector3(122.72, 6607.59, 31.86), 
                ["heading"] = 224.81
            }
        },
        ["camera"] = { 
            ["x"] = 118.40, 
            ["y"] = 6601.12, 
            ["z"] = 37.50, 
            ["rotationX"] = -39.496062710881, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = -42.110235854983 
        }
    },
	--[[
	["D"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(457.77, -1008.13, 28.29)
            },
            ["vehicle"] = {
                ["position"] = vector3(443.52, -1016.51, 28.84), 
                ["heading"] = 94.09
            }
        },
        ["camera"] = { 
            ["x"] = 436.25, 
            ["y"] = -1016.66, 
            ["z"] = 32.65, 
            ["rotationX"] = -39.496062710881, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = -92.110235854983 
        }
    },
	
	["E"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(325.47, -557.44, 28.79)
            },
            ["vehicle"] = {
                ["position"] = vector3(342.35, -558.76, 28.94), 
                ["heading"] = 348.34
            }
        },
        ["camera"] = { 
            ["x"] = 344.54, 
            ["y"] = -553.37, 
            ["z"] = 30.95, 
            ["rotationX"] = -29.496062710881, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 152.110235854983 
        }
    },
	
	["F"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(896.53, -1035.66, 35.11)
            },
            ["vehicle"] = {
                ["position"] = vector3(899.32, -1029.81, 34.97), 
                ["heading"] = 3.69
            }
        },
        ["camera"] = { 
            ["x"] = 902.02, 
            ["y"] = -1023.18, 
            ["z"] = 37.95, 
            ["rotationX"] = -29.496062710881, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 152.110235854983 
        }
    }, ]]--
	
}

Config.Labels = {
    ["menu"] = "Press ~INPUT_CONTEXT~ to open Garage %s.",
    ["vehicle"] = "Press ~INPUT_CONTEXT~ to store your '%s'."
}

Config.Trim = function(value)
	if value then
		return (string.gsub(value, "^%s*(.-)%s*$", "%1"))
	else
		return nil
	end
end

Config.AlignMenu = "right" -- this is where the menu is located [left, right, center, top-right, top-left etc.]