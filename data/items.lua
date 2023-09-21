return {
    ['bandage'] = {
        label = 'Bandage',
        weight = 115,
        client = {
            anim = {
                dict = 'missheistdockssetup1clipboard@idle_a',
                clip = 'idle_a',
                flag = 49
            },
            prop = {
                model = prop_rolled_sock_02,
                pos = vec3(-0.14, -0.14, -0.08),
                rot = vec3(-50.0, -50.0, 0.0)
            },
            disable = { move = true, car = true, combat = true },
            usetime = 2500
        }
    },

    ['medikit'] = { label = 'Medi-kit', weight = 115 },

    ['tente'] = { label = 'Kit de camping', weight = 1150 },

    ['bocalvide'] = { label = 'Bocal vide', weight = 500 },

    ['bocallait'] = { label = 'Bocal de lait', weight = 600 },

    ['trousseau'] = { label = 'Trousseau de clés', weight = 50 },

    ['portefeuille'] = { label = 'Portefeuille', weight = 50 },

    ['empty_petrolcan'] = { label = 'Bidon d\'essence', weight = 1200, description = 'Ce bidon est vide, vous pouvez le remplir à l\'aide d\'une citerne d\'essence' },

    ['torch'] = {
        label = 'Torch',
        weight = 115,
        consume = 0,
        stack = false,
        degrade = 60
    },

    ['black_money'] = { label = 'Argent sale' },

    ['belier'] = {
        label = 'Bélier',
        weight = 15000,
        description = 'Idéal pour défoncer une porte '
    },
    ['ble'] = {
        label = 'Blé',
        weight = 150,
        description = 'Provien d\'un champ'
    },

    ['beerbox'] = {
        label = 'Carton de Bière',
        weight = 2500,
        description = 'Entreprise Pibwasser'
    },

    ['czombie'] = {
        label = 'Corp de zombie',
        weight = 15500,
        description = 'Corp de zombie très lourd, peut être découpé.'
    },

    ['mainzombie'] = {
        label = 'Mains de zombie',
        weight = 155,
        description = 'Mains de zombie infectés'
    },

    ['organenoninfecte'] = {
        label = 'Glacière',
        weight = 1500,
        description = 'Glacière d\'organes non infectés'
    },
    ---- drug
    ['coke_bloc'] = {
        label = 'Cocaïne en bloc',
        weight = 15000,
        stack = false,
        description = 'Grosse quantité de cocaine en bloc (15kg)'
    },

    ['coke_pochon'] = {
        label = 'Cocaïne',
        weight = 100,
        description = 'Pochon de cocaine (100g)'
    },

    ['weed_plant'] = { label = 'Feuille de weed', weight = 15 },

    ['weed_pochon'] = {
        label = 'Weed',
        weight = 100,
        description = 'Pochon de weed (100g)'
    },

    ['pochonvide'] = { label = 'Pochon vide', weight = 10 },

    ['ciseau'] = { label = 'Ciseau', weight = 10 },

    ['pepper_spray'] = {
        label = 'Spray au poivre',
        description = "Spray contre les zombies et peu aussi aveugler un humain.",
        stack = false,
        allowArmed = false,
        decay = true,
        close = true,
        consume = 0.2,
        weight = 20
    },

    ['burger'] = {
        label = 'Burger',
        weight = 220,
        client = {
            status = { hunger = 20000, poo = 250000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500,
            notification = 'Vous avez mangé un délicieux burger'
        }
    },

    ['candy'] = {
        label = 'BonBon',
        weight = 20,
        client = {
            status = { hunger = 10000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = ng_proc_candy01a,
                pos = vec3(0.01, 0.01, 0.00),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500,
            notification = 'Vous avez mangé des bonbon'
        }
    },

    ['chipscheese'] = {
        label = 'Chips au fromage',
        weight = 20,
        client = {
            status = { hunger = 10000, maladie = -200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = v_ret_ml_chips4,
                pos = vec3(0.01, 0.01, 0.00),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['chipsribs'] = {
        label = 'Chips BBq',
        weight = 20,
        client = {
            status = { hunger = 10000, maladie = -200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = v_ret_ml_chips1,
                pos = vec3(0.01, 0.01, 0.00),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['chipssalt'] = {
        label = 'Chips',
        weight = 20,
        client = {
            status = { hunger = 10000, maladie = -200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = v_ret_ml_chips3,
                pos = vec3(0.01, 0.01, 0.00),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['chipshabanero'] = {
        label = 'Chips Tortilla',
        weight = 20,
        client = {
            status = { hunger = 10000, maladie = -200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = v_ret_ml_chips4,
                pos = vec3(0.01, 0.01, 0.00),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['bfrites'] = {
        label = 'Barquette de frites',
        weight = 20,
        client = {
            status = { hunger = 21000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = v_ret_ml_chips4,
                pos = vec3(0.01, 0.01, 0.00),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['ramenpoulet'] = {
        label = 'Ramen au poulet',
        weight = 20,
        client = {
            status = { hunger = 25000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = prop_food_cb_juice02,
                pos = vec3(0.01, 0.01, 0.00),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['ramenpoulet'] = {
        label = 'Ramen au poulet',
        weight = 20,
        client = {
            status = { hunger = 25000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = prop_food_cb_juice02,
                pos = vec3(0.01, 0.01, 0.00),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['sandwichpoulet'] = {
        label = 'Sandwich au poulet',
        weight = 250,
        client = {
            status = { hunger = 25500, poo = 150000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = prop_food_cb_juice02,
                pos = vec3(0.01, 0.01, 0.00),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['maxiburger'] = {
        label = 'Maxi Burger',
        weight = 250,
        client = {
            status = { hunger = 35500, poo = 150000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500
        }
    },

    ['bsburger'] = {
        label = 'BS Burger',
        weight = 250,
        client = {
            status = { hunger = 65500, poo = 250000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500
        }
    },

    ['chickenburger'] = {
        label = 'Chicken Burger',
        weight = 250,
        client = {
            status = { hunger = 26500 },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500
        }
    },

    ['bswrap'] = {
        label = 'BS Wrap',
        weight = 250,
        client = {
            status = { hunger = 29500 },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500
        }
    },

    ['bsnuggets'] = {
        label = 'BS Nuggets',
        weight = 250,
        client = {
            status = { hunger = 29500 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = prop_food_bs_juice01,
                pos = vec3(0.01, 0.01, 0.00),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['bsrings'] = {
        label = 'BS Rings',
        weight = 250,
        client = {
            status = { hunger = 21500 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = prop_food_bs_juice01,
                pos = vec3(0.01, 0.01, 0.00),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['bsfrites'] = {
        label = 'BS Frites',
        weight = 250,
        client = {
            status = { hunger = 21500 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = prop_food_bs_juice01,
                pos = vec3(0.01, 0.01, 0.00),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['cola'] = {
        label = 'Coca-Cola',
        weight = 350,
        client = {
            status = { thirst = 150000, pee = 150000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = prop_ecola_can,
                pos = vec3(0.01, 0.01, 0.06),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500,
            notification = 'Coca bien frais chacal'
        }
    },

    ['coffeecup'] = {
        label = 'Café',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = p_ing_coffeecup_01,
                pos = vec3(0.01, 0.01, 0.06),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['cafelait'] = {
        label = 'Café au lait',
        weight = 350,
        client = {
            status = { thirst = 250000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = p_ing_coffeecup_01,
                pos = vec3(0.01, 0.01, 0.06),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['granita'] = {
        label = 'Granita',
        weight = 350,
        client = {
            status = { thirst = 255000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = p_ing_coffeecup_01,
                pos = vec3(0.01, 0.01, 0.06),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['gcoffee'] = { label = 'Graine de café', weight = 50 },

    ['pouletcru'] = { label = 'Poulet cru', weight = 50 },

    ['riz'] = { label = 'Riz', weight = 50 },

    ['saumon'] = { label = 'Saumon', weight = 50 },

    ['boitederamen'] = { label = 'Boite de Ramen', weight = 50 },

    ['parachute'] = {
        label = 'Parachute',
        weight = 8000,
        stack = false,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 1500
        }
    },

    ['garbage'] = { label = 'Déchets' },

    ['plastique'] = {
        label = 'Filament souple',
        description = 'Filament plastique, utile pour les imprimantes 3D'
    },

    ['schemacouteau'] = {
        label = 'Clé USB',
        description = 'USB contenant un schéma pour couteau en 3D'
    },

    ['schemapistolettrasher'] = {
        label = 'Clé USB',
        description = 'USB contenant un schéma pour pistolet TRASHER en 3D'
    },

    ['circuitelec'] = {
        label = 'Circuit électronique',
        description = 'Circuit électronique peut servir pour différents objets.'
    },

    ['paperbag'] = {
        label = 'Sac en papier',
        weight = 1,
        stack = false,
        close = false,
        consume = 0
    },

    ['pizzabox'] = {
        label = 'Boîte à pizza',
        description = 'Pour garder une pizza en bon état.',
        weight = 100,
        stack = false,
        close = false,
        consume = 0
    },

    ['panties'] = {
        label = 'Culotte',
        weight = 10,
        consume = 0,
        client = { notification = 't\'es serieux la ?' }
    },

    ['lockpick'] = {
        label = 'Kit de Crochetage',
        weight = 160,
        consume = 0,
        client = {
            anim = {
                dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                clip = 'machinic_loop_mechandplayer'
            },
            disable = { move = true, car = true, combat = true },
            usetime = 5000,
            cancel = true
        }
    },

    ['phone'] = {
        label = 'Téléphone',
        weight = 190,
        stack = false,
        consume = 0,
        client = {
            notification = 'Batterie HS'
        }
    },

    ['money'] = { label = 'Argent' },


    ['mustard'] = {
        label = 'Moutarde',
        weight = 500,
        client = {
            status = { hunger = 25000, thirst = -55000, poo = 355000, maladie = -250000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = prop_food_mustard,
                pos = vec3(0.01, 0.0, -0.07),
                rot = vec3(1.0, 1.0, -1.5)
            },
            usetime = 2500,
            notification = 'Aie ça pique'
        }
    },

    ['water'] = {
        label = 'bouteille d\'eau',
        weight = 500,
        client = {
            status = { thirst = 200000, drunk = -10000, pee = 255000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = prop_ld_flow_bottle,
                pos = vec3(0.03, 0.03, 0.02),
                rot = vec3(0.0, 0.0, -1.5)
            },
            usetime = 2500,
            cancel = true,
            notification = 'Tu as bu de l\'eau rafraîchissante'
        }

    },

    ['armur'] = {
        label = 'Gilet pare-balles',
        weight = 3000,
        stack = false,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 3500
        }
    },

    ['masque'] = {
        label = 'Masque à gaz',
        weight = 100,
        stack = false,
        close = true,
        consume = 0,
        description = 'Masque à gaz bas de gamme',
        degrade = 60,
        client = {
            anim = { dict = 'mp_masks@on_foot', clip = 'put_on_mask' },
            usetime = 1000,
            remove = function(total)
                if total < 1 then
                    SetPedComponentVariation(PlayerPedId(), 1, 0, 0, 0)
                end
            end
        }
    },

    ['carkey'] = {
        label = 'Clé véhicule',
        weight = 100,
        stack = false,
        consume = 0

    },

    ['key'] = { label = 'Clé', weight = 100, stack = false, consume = 0 },


    ['camera'] = {
        label = 'Appareil photo',
        weight = 900,
        close = true,
        stack = false,
    },

    ['paper'] = {
        label = 'Papier',
        weight = 1,
        description = "Peut être utiliser avec une imprimante si vous avez de l'encre"

    },

    ['ink'] = {
        label = 'Encre',
        weight = 10,
        description = "Pour imprimante"

    },

    ['photo'] = {
        label = 'Photo',
        weight = 70,
        close = true,
        stack = false,
        consume = 0
    },

    ['feuille'] = {
        label = 'Feuille',
        weight = 70,
        close = true,
        stack = false,
        consume = 0
    },

    ['ticketparking'] = {
        label = 'Ticket de Parking',
        weight = 70,
        close = true,
        stack = false,
        consume = 0
    },

    ['roller'] = {
        label = 'Roller',
        weight = 1000,
        close = true,
        stack = true,
        consume = 0,
        client = { notification = '/enlever pour enlever les roller' }
    },

    ['radio'] = {
        label = 'Radio',
        weight = 100,
        stack = true,
        close = true,
        client = {
            export = 'ac_radio.openRadio',
            remove = function(total)
                -- Disconnets a player from the radio when all his radio items are removed.
                if total < 1 and GetConvar('radio_noRadioDisconnect', 'true') ==
                    'true' then
                    exports.ac_radio:leaveRadio()
                end
            end
        }
    },

    ['sacpoubelle'] = {
        label = 'Sac poubelle',
        weight = 10000,
        stack = false,
        description = 'en dev'

    },

    ['id_card'] = {
        label = 'Carte d\'identité',
        weight = 0,
        stack = false,
        close = true,
        description = "Une carte d'identité appartenant à quelqu'un"

    },
    ['driver_license'] = {
        label = 'Drivers License',
        weight = 0,
        stack = false,
        close = true,
        description = "Your Description"

    },
    ['farmlicense'] = {
        label = 'Permis de chasse',
        weight = 0,
        stack = false,
        close = true,
        description = "Idéal pour la chasse"

    },
    ['lawyerpass'] = {
        label = 'Lawyer Pass',
        weight = 0,
        stack = false,
        close = true,
        description = "Your Description"

    },

    ['cartegrise'] = { label = 'Carte grise', stack = false },

    ['citron'] = { label = 'Citron', weight = 30 },

    ['fruitsmelange'] = { label = 'Mélange de fruits', weight = 50 },

    ['banane'] = { label = 'Banane', weight = 20 },

    ['ice'] = { label = 'Glacon', weight = 20 },

    ['apple'] = { label = 'Pomme', weight = 20 },

    ['orange'] = { label = 'Orange', weight = 20 },

    ['caisseorange'] = { label = 'Caisse d\'orange', weight = 2500 },

    ['fraise'] = { label = 'Fraise', weight = 10 },

    ['menthe'] = { label = 'Menthe', weight = 5 },

    ['coconut'] = { label = 'Noix de Coco', weight = 100 },

    ['lait'] = {
        label = 'Bouteille de lait',
        weight = 300,
        client = {
            status = { thirst = 4000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = v_res_tt_milk,
                pos = vec3(0.01, 0.01, 0.06),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['smoothiebanane'] = {
        label = 'Smoothie Banane',
        weight = 30,
        client = {
            status = { thirst = 35000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = p_ing_coffeecup_01,
                pos = vec3(0.01, 0.01, 0.06),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['smoothiefraise'] = {
        label = 'Smoothie Fraise',
        weight = 30,
        client = {
            status = { thirst = 39000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = p_ing_coffeecup_01,
                pos = vec3(0.01, 0.01, 0.06),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['smoothiefruits'] = {
        label = 'Smoothie Fruits',
        weight = 30,
        client = {
            status = { thirst = 35000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = p_ing_coffeecup_01,
                pos = vec3(0.01, 0.01, 0.06),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['nutella'] = { label = 'Nutella 250g', weight = 250 },

    ['bread'] = {
        label = 'Pain',
        weight = 10,
        client = {
            status = { hunger = 20000 },
            anim = {
                dict = 'mp_player_inteat@burger',
                clip = 'mp_player_int_eat_burger'
            },
            prop = {
                model = prop_sandwich_01,
                pos = vec3(0.01, 0.01, 0.0),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['pizzam'] = {
        label = 'Pizza Margherita',
        weight = 10,
        client = {
            status = { hunger = 420000 },
            anim = {
                dict = 'mp_player_inteat@burger',
                clip = 'mp_player_int_eat_burger'
            },
            prop = {
                model = prop_sandwich_01,
                pos = vec3(0.01, 0.01, 0.0),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['sushi'] = {
        label = 'Sushi',
        weight = 10,
        client = {
            status = { hunger = 420000 },
            anim = {
                dict = 'mp_player_inteat@burger',
                clip = 'mp_player_int_eat_burger'
            },
            prop = {
                model = prop_sandwich_01,
                pos = vec3(0.01, 0.01, 0.0),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['spaghettis'] = {
        label = 'Spaghettis Bolognaise',
        weight = 30,
        description = 'Plat italien',
        client = {
            status = { hunger = 51000 },
            anim = {
                dict = 'mp_player_inteat@burger',
                clip = 'mp_player_int_eat_burger'
            },
            prop = {
                model = prop_sandwich_01,
                pos = vec3(0.01, 0.01, 0.0),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['focaccia'] = {
        label = 'Focaccia',
        weight = 30,
        description = 'Plat italien',
        client = {
            status = { hunger = 51000 },
            anim = {
                dict = 'mp_player_inteat@burger',
                clip = 'mp_player_int_eat_burger'
            },
            prop = {
                model = prop_sandwich_01,
                pos = vec3(0.01, 0.01, 0.0),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['tomate'] = { label = 'Tomate', weight = 10, description = 'Ingredient' },

    ['farine'] = { label = 'Farine', weight = 950, description = 'Ingredient' },

    ['pates'] = { label = 'Pâtes', weight = 10, description = 'Ingredient' },

    ['viandeh'] = {
        label = 'Viande hachée',
        weight = 10,
        description = 'Ingredient'
    },

    ['patepizza'] = {
        label = 'Pâte À Pizza',
        weight = 10,
        description = 'Ingredient'
    },

    ['fromage'] = { label = 'Fromage', weight = 10, description = 'Ingredient' },

    ['tartinenutella'] = {
        label = 'Tartine nutella',
        weight = 20,
        client = {
            status = { hunger = 26000, poo = 150000 },
            anim = {
                dict = 'mp_player_inteat@burger',
                clip = 'mp_player_int_eat_burger'
            },
            prop = {
                model = v_res_fa_bread03,
                pos = vec3(0.01, 0.01, 0.0),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['pile'] = { label = 'Pile', weight = 10 },

    ['jumelles'] = {
        label = 'Jumelles',
        weight = 100,
        stack = false,
        close = true,
        client = { notification = 'Jumelle' }
    },

    ['ampoule'] = { label = 'Ampoule', weight = 10 },

    ['morceaudebois'] = { label = 'Morceaux de bois', weight = 150 },

    ['roue'] = { label = 'Roue bmx', weight = 360 },

    ['pedales'] = { label = 'Pédales bmx', weight = 60 },

    ['guidon'] = { label = 'Guidon bmx', weight = 600 },

    ['bmx'] = {
        label = 'Bmx',
        weight = 2000,
        client = {
            anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
            usetime = 2500
        }
    },

    ['doliprane'] = {
        label = 'Doliprane',
        description = 'Efficace pour certaines maladies.',
        weight = 6,
        client = { anim = { dict = 'mp_suicide', clip = 'pill' }, usetime = 2500 }
    },

    ['ferraille'] = { label = 'Ferraille', weight = 1500, description = 'Outil' },

    ['acier'] = { label = 'Acier', weight = 2500 },

    ['acierrenforce'] = { label = 'Acier renforcé', weight = 4500 },

    ['canonpompe'] = {
        label = 'Canon scié',
        description = 'Peut être monter sur une crosse',
        weight = 1500
    },

    ['crossepompe'] = {
        label = 'Crosse en bois',
        description = 'Peut être monter sur un canon scié',
        weight = 1900
    },

    ['cables'] = { label = 'Cables', weight = 1000, description = 'Outil' },

    ['tissu'] = {
        label = 'Tissu',
        weight = 100,
        description = 'Peut servir pour fabriquer des vêtements'
    },

    ['fish'] = {
        label = 'Poisson',
        weight = 50,
        description = 'Peut être revendu'
    },

    ['canneapeche'] = { label = 'Canne à pêche', weight = 50 },
    ['puceatm'] = { label = 'Puce explosif', weight = 50 },

    ['tshirt'] = {
        label = 'T-shirt',
        weight = 100,
        description = 'Peut être revendu'
    },

    ['eponge'] = { label = 'Éponge', weight = 10 },

    ['lavevitre'] = { label = 'Lave vitre', weight = 1000 },

    ['boiteoutils'] = {
        label = 'Ensembles d\'outils',
        weight = 1000,
        description = 'Outil'
    },

    ['kitmoteur'] = {
        label = 'kit de réparation moteur',
        description = 'kit de réparation pour mouteur',
        weight = 1000,

    },

    ['kitnet'] = {
        label = 'kit de nettoyage',
        description = 'kit de nettoyage pour voiture',
        weight = 500,

    },

    ['kitcaro'] = {
        label = 'kit de réparation carrosserie',
        description = 'kit de réparation pour carrosserie',
        weight = 1000,

    },

    ['oxygenmask'] = {
        label = 'Masque oxygene',
        description = 'en dev',
        weight = 1000,
        consume = 0,
        stack = false,
        degrade = 60

    },

    -- Alcool
    ['vodka'] = {
        label = 'Absolut Vodka',
        weight = 100,
        description = 'Bouteille d\'un litre'
    },

    ['vin'] = {
        label = 'Vin Rouge',
        weight = 100,
        description = 'Bouteille d\'un litre'
    },

    ['cognac'] = {
        label = 'Cognac',
        weight = 100,
        description = 'Bouteille d\'un litre'
    },

    ['champagne'] = {
        label = 'Champagne',
        weight = 100,
        description = 'Bouteille d\'un litre'
    },

    ['verrevide'] = {
        label = 'Verre vide',
        weight = 100,
        description = 'Verre destiné à de l\'alcool'
    },

    ['beer'] = {
        label = 'Bière',
        weight = 10,
        client = {
            status = { drunk = 20000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = prop_amb_beer_bottle,
                pos = vec3(0.01, 0.01, 0.06),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['verrevin'] = {
        label = 'Verre de Vin',
        weight = 10,
        client = {
            status = { drunk = 30000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = p_wine_glass_s,
                pos = vec3(0.01, 0.01, 0.06),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['verrecognac'] = {
        label = 'Verre de Cognac',
        weight = 10,
        client = {
            status = { drunk = 35000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = prop_drink_whisky,
                pos = vec3(0.01, 0.01, 0.06),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['verrechampagne'] = {
        label = 'Verre de Champagne',
        weight = 10,
        client = {
            status = { drunk = 35000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = prop_cs_champ_flute,
                pos = vec3(0.01, 0.01, 0.06),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['verrevodka'] = {
        label = 'Verre de Vodka',
        weight = 10,
        client = {
            status = { drunk = 45000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = {
                model = prop_drink_whisky,
                pos = vec3(0.01, 0.01, 0.06),
                rot = vec3(5.0, 5.0, -180.5)
            },
            usetime = 2500
        }
    },

    ['handcuffs'] = {
        label = 'Menottes',
        weight = 10,
        stack = false,
        consume = 0
    },

    ['handcuffs_key'] = {
        label = 'Clé pour menottes',
        weight = 5,
        stack = false,
        consume = 0
    },

    ['rope'] = { label = 'Corde', weight = 10, stack = false, consume = 0 },

    ['leather'] = {
        label = 'Peau d\'animeaux',
        weight = 5000,
        stack = false,
        close = false,
        consume = 0
    },

    ['meat'] = {
        label = 'Viande',
        weight = 1000,
        stack = true,
        close = false,
        consume = 0
    },

    ['a_c_deer_horns'] = {
        label = 'cornes de cerf',
        weight = 2500,
        stack = true,
        close = false,
        consume = 0
    },

    ['oxygenmask'] = {
        label = 'Masque oxygene',
        weight = 2500,
        stack = false,
        close = true,
        client = {
            anim = { dict = 'missmic4', clip = 'michael_tux_fidget' },
            usetime = 1000
        }

    },

    ['outfitbag'] = {
        label = 'Sac de sport',
        description = "Sac de sport contenant vos vêtements",
        weight = 241,
        stack = true,
        close = false,
    },

    ['backpack'] = {
        label = 'Sac à dos',
        weight = 10000,
        stack = false,
        consume = 0,
    },
    ['sacpoubelle'] = {
        label = 'Sac poubelle',
        weight = 5000,
        stack = false,
    },

    -- Animeaux:
    ['cat'] = {
        label = 'Chat',
        description = "Petit chat en manque d'affection",
        weight = 5000,
        stack = false,
    },
    ['loup'] = {
        label = 'Chien loup',
        description = "Peut être agressif",
        weight = 5000,
        stack = false,
    },
    ['lapin'] = {
        label = 'Lapin',
        description = "Voleur de carottes",
        weight = 5000,
        stack = false,
    },
    ['husky'] = {
        label = 'Husky',
        description = "Trop classe ce chien",
        weight = 5000,
        stack = false,
    },
    ['cochon'] = {
        label = 'Cochon',
        description = "Cochon a deux doigts de mourir",
        weight = 5000,
        stack = false,
    },
    ['caniche'] = {
        label = 'Caniche',
        description = "Utile que pour pécho",
        weight = 5000,
        stack = false,
    },
    ['carlin'] = {
        label = 'Carlin',
        description = "Seul inconvénient, il pue de la geule",
        weight = 5000,
        stack = false,
    },
    ['retriever'] = {
        label = 'Retriever',
        description = "Il a tendance a faire caca toute les 2 secondes",
        weight = 5000,
        stack = false,
    },
    ['berger'] = {
        label = 'Berger',
        description = "Le chien préféré des flics",
        weight = 5000,
        stack = false,
    },
    ['westie'] = {
        label = 'Westie',
        description = "Le chien préféré des flics",
        weight = 5000,
        stack = false,
    },
    ['chop'] = {
        label = 'Chop',
        description = "Le chien le plus connu de Los Santos",
        weight = 5000,
        stack = false,
    },
}
