Config = {}

Config.Clothes = {
    ['torso'] = {
        default = {
            torso_1 = 15,   
            torso_2 = 0,
            tshirt_1 = 15,  
            tshirt_2 = 0,
            arms = 15,
        },
        clothes = {
            torso_1 = true,   
            torso_2 = true,
            tshirt_1 = true,  
            tshirt_2 = true,
            arms = true,
        }
    },
    
    ['pants'] = {
        default = {
            pants_1 = 14,   
            pants_2 = 0,
        },
        clothes = {
            pants_1 = true,   
            pants_2 = true,
        }
    },

    ['shoes'] = {
        default = {
            shoes_1 = 34,   
            shoes_2 = 0,
        },
        clothes = {
            shoes_1 = true,   
            shoes_2 = true,
        }
    },
    
    ['bracelet'] = {
        default = {
            bracelets_1 = -1,   
            bracelets_2 = 0,   
        },
        clothes = {
            bracelets_1 = true,   
            bracelets_2 = true,   
        }
    },
    
    ['bag'] = {
        default = {
            bags_1 = 0,   
            bags_2 = 0,   
        },
        clothes = {
            bags_1 = true,   
            bags_2 = true,   
        }
    },

    ['watch'] = {
        default = {
            watches_1 = -1,   
            watches_2 = 0,   
        },
        clothes = {
            watches_1 = true,   
            watches_2 = true,   
        }
    },
    
    ['helmet'] = {
        default = {
            helmet_1 = -1,  
            helmet_2 = 0  
        },
        clothes = {
            helmet_1 = true,  
            helmet_2 = true,
        }
    },

    ['chain'] = {
        default = {
            chain_1 = -1,    
            chain_2 = 0,
        },
        clothes = {
            chain_1 = true,    
            chain_2 = true,
        }
    },

    ['vest'] = {
        default = {
            bproof_1 = 0,    
            bproof_2 = 0,
        },
        clothes = {
            bproof_1 = true,    
            bproof_2 = true,
        }
    },

    ['mask'] = {
        default = {
            mask_1 = 0,    
            mask_2 = 0,
        },
        clothes = {
            mask_1 = true,    
            mask_2 = true,
        }
    },

    ['glasses'] = {
        default = {
            glasses_1 = -1,    
            glasses_2 = 0,
        },
        clothes = {
            glasses_1 = true,    
            glasses_2 = true,
        }
    },

    ['ears'] = {
        default = {
            ears_1 = -1,     
            ears_2 = 0
        },
        clothes = {
            ears_1 = true,     
            ears_2 = true
        }
    }
}

Config.ClothingAnimations = {
    helmet = { lib = "missheistdockssetup1hardhat@", anim = "put_on_hat", duration = -1, loop = 56 },
    ears = { lib = "anim@amb@nightclub@djs@switch@tale_djset_switchover@", anim = "tale_start_mm", duration = 2800, loop = 56 },
    mask = { lib = "mp_masks@standard_car@rds@", anim = "put_on_mask", duration = -1, loop = 56 },
    glasses = { lib = "clothingspecs", anim = "try_glasses_negative_b", duration = 1300, loop = 56 },
    torso = { lib = "clothingshirt", anim = "try_shirt_positive_d", duration = 2500, loop = 56 },
    tie = { lib = "clothingtie", anim = "try_tie_positive_a", duration = 3250, loop = 56 },
    bracelet = { lib = "clothingshirt", anim = "try_shirt_negative_c", duration = 800, loop = 56 },
    watch = { lib = "anim@random@shop_clothes@watches", anim = "idle_d", duration = 1600, loop = 56 },
    pants = { lib = "clothingtrousers", anim = "try_trousers_neutral_c", duration = 2700, loop = 0 },
    shoes = { lib = "clothingshoes", anim = "try_shoes_positive_d", duration = 2400, loop = 0 },
    bag = { lib = "skydive@parachute@", anim = "chute_off", duration = -1, loop = 56 },
    vest = { lib = "clothingshirt", anim = "try_shirt_positive_d", duration = 2500, loop = 56 }
}