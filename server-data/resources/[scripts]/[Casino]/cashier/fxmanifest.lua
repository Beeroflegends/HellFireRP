fx_version 'adamant'

game 'gta5'

description 'Cashier'

version '1.3.0'


client_scripts {
    "config.lua",
    "client.lua"
}

server_scripts {
    "@mysql-async/lib/MySQL.lua",
    "config.lua",
    "server.lua"
}
