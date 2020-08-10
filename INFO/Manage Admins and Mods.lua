How to add a superadmin or admin to your server:

1 - "Sign in into your server so your data can be saved on Database for the first time"
2 - "Go to your Database and search for Users table, search your username row and on Group change the value user to superadmin || On Permission_Level change 0 to 4"
3 - "Superadmin is only for server owners"

'superadmin have all privilegies, they can do whatever they want on server so be careful with that permission'

'If you want to add an Admin then add admin instead of superadmin on Group, also add level 10 on Permission_Level'

'Admin can set jobs, give items, revive players, give money and VIP so be careful'

'You need to restart the full server in order to make the new permissions work'



How to set Admin, Moderator or Tuner permissions on vMenu (The 'M' menu)

1 - 'Go to your resources folder > vMenu > config > permissions.cfg'
2 - "The first thing that you need to change here is in line 9 vmenu_use_permissions from false to true. By default and for testing purposes I always keep this False to give everyone on server access to vMenu so they can test scripts, weapons and cars"
	"But in a live enviroment this should be set to true so only Admins and Moderator can have access to this features" 
3 - "Go to Row 113 there you can find the Admin Group Players, you need to copy/paste all the code add_principal identifier.steam:XXXX group.admin in a new row in order to add a new admin | Replace the XXX with the user steam in hexadecimal value"
4 - "Repeat Step 3 for Moderator and Tuner Group | Remember copy/paste the add_principal identifier.steam:XXX group.moderator in a new row and replace XXX with user steam in hexadecimal"

Admins: "They have full access to vMenu, they can spawn all the weapons, they can turn on/off invisibility, god mode, noclip, spectate players, ban/unban players, etc"
Moderator: "They can NoClip, Teleport to waypoint, Spectate players, kick and kill other players and ban them but not unban | They don't have permissions to god mode, weapons or change time/weather neither upgrade vehicles" 
Tuner: "This group only have access to vehicle options, they can set vehicles extras, upgrade motor, transmission, paint, etc. They don't have access to any admin or moderator option"


How can I remove an Admin on Databse and vMenu?

1 - 'On Database change the Group from Admin to user and the Permission_Level from 10 to 0'
2 - 'On vMenu just delete the row that includes the player steam or change that value back to XXXX'