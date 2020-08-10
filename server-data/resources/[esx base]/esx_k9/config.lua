-- TriggerEvent('esx_policedog:openMenu') to open menu

Config = {
    Job = 'police',
    Command = 'k9', -- set to false if you dont want to have a command
    Model = -1788665315,
    TpDistance = 50.0,
    Sit = {
        dict = 'creatures@rottweiler@amb@world_dog_sitting@base',
        anim = 'base'
    },
    Drugs = {'coke10g', 'coke1g', 'cokebrick', 'joint2g', 'meth10g', 'meth1g', 'methbrick', 'weed20g', 'weed4g', 'weedbrick', }, -- add all drugs here for the dog to detect
}

Strings = {
    ['not_police'] = 'You are not an officer!',
    ['menu_title'] = 'K9 Unit',
    ['take_out_remove'] = 'Take Out/Remove dog',
    ['deleted_dog'] = 'Dog deleted',
    ['spawned_dog'] = 'Dog spawned',
    ['sit_stand'] = 'Sit/Stand',
    ['no_dog'] = "No dogs!",
    ['dog_dead'] = 'Your dog is dead',
    ['search_drugs'] = 'Search drugs',
    ['no_drugs'] = 'No drugs found.', 
    ['drugs_found'] = 'Drugs found',
    ['dog_too_far'] = 'Dog is too far!',
    ['attack_closest'] = 'Attack closest player',
    ['get_in_out'] = 'Get in/out vehicle'
}