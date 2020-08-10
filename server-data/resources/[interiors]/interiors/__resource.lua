resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'
this_is_a_map 'yes'

data_file 'INTERIOR_PROXY_ORDER_FILE' 'interiorproxies.meta'

file 'gabz_timecycle_mods_1.xml'
data_file 'TIMECYCLEMOD_FILE' 'gabz_timecycle_mods_1.xml'
data_file 'DLC_ITYP_REQUEST' 'stream/l2k_logo.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/prison_props.ytyp'


files {

'interiorproxies.meta'
}

client_script {
	'galaxy.lua',
	'client.lua',
	'hospital.lua'
}