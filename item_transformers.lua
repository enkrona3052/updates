		
local cfg = {}

-- define static item transformers
-- see https://github.com/ImagicTheCat/vRP to understand the item transformer concept/definition

cfg.item_transformers = {
  -- example of harvest item transformer
    {
    name="Fischer", -- menu name
    permissions = {"mission.delivery.fish"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=100000,
    units_per_minute=200,
    x=743.19586181641,y=3895.3967285156,z=30.5, 
    radius=20, height=1.5, -- area
    recipes = {
      ["Wels"] = { -- action name
        description="Du versuchst jetzt Welse zu fangen", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["catfish"] = 1
        }
      },
      ["Barsch"] = { -- action name
        description="Du versuchst jetzt Barsche zu fangen", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["bass"] = 1
        }
      }
    }
  },
      {
    name="Waffenschmuggler", -- menu name
    permissions = {"mission.weapons.smuggler"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=100000,
    units_per_minute=5,
    x=-343.28500366211,y=6098.6586914063,z=31.327739715576,
    radius=3, height=1.5, -- area
    recipes = {
      ["AK47"] = { -- action name
        description="Ak's werden eingesammelt.", -- action description
        in_money=225, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["AK47"] = 1
        }
      },
      ["M4A1"] = { -- action name
        description="M4's werden eingesammelt.", -- action description
        in_money=375, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["M4A1"] = 1
        }
      }
    }
  },
      {
    name="Medizinischer Transport", -- menu name
    permissions = {"mission.delivery.medical"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=100000,
    units_per_minute=100,
    x=2213.0520019531,y=5577.5981445313,z=53.795757293701,
    radius=3, height=1.5, -- area
    recipes = {
      ["Medizinisches Marihuana"] = { -- action name
        description="Medizinisches Gras eingesammelt", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["Medical Weed"] = 2
        }
      }
	 }
  },
  {
    name="Wasser Flaschen/Taco Laden", -- menu name
    -- permissions = {"harvest.water_bottle_tacos"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=100000,
    units_per_minute=100,
    x=-1692.6646728516,y=-1086.3079833984,z=13.152559280396, -- pos
    radius=5, height=1.5, -- area
    recipes = {
      ["Wasserflaschen"] = { -- action name
        description="Sammel paar Wasserflaschen.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["water"] = 1
        }
      },
      ["Tacos"] = { -- action name
        description="Sammel paar Tacos.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["tacos"] = 1
        }
      }
    }
    --, onstart = function(player,recipe) end, -- optional start callback
    -- onstep = function(player,recipe) end, -- optional step callback
    -- onstop = function(player,recipe) end -- optional stop callback
  },
  {
    name="Fitness", -- menu name
    r=255,g=125,b=0, -- color
    max_units=100000,
    units_per_minute=5000,
    x=-1202.96252441406,y=-1566.14086914063,z=4.61040639877319,
    radius=7.5, height=1.5, -- area
    recipes = {
      ["Stärke trainieren"] = { -- action name
        description="Steigere deine Stärke", -- action description
        in_money=5, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={}, -- items given per unit
        aptitudes={ -- optional
          ["physical.strength"] = 0.3 -- "group.aptitude", give 1 exp per unit
        }
      }
    }
  },
 {
    name="Hacker", -- menu name
	permissions = {"hacker.credit_cards"}, -- you can add permissions
    r=255,g=125,b=0, -- color
    max_units=100000,
    units_per_minute=1,
    x=707.357238769531,y=-966.98876953125,z=30.4128551483154,
    radius=2, height=1.0, -- area
    recipes = {
      ["hacking"] = { -- action name
        description="Hacking credit cards.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["credit"] = 1,
		["dirty_money"] = 1
		}, -- items given per unit
        aptitudes={ -- optional
          ["hacker.hacking"] = 0.2 -- "group.aptitude", give 1 exp per unit
        }
      }
    }
  },
  {
    name="Fahrlizenz", -- menu name
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=-261.40533447266,y=-965.15747070313,z=31.224115371704,        
    radius=2, height=1.0, -- area
    recipes = {
      ["Fahrlizenz anschaffen"] = { -- action name
       description="Kauf eine Fahrlizenz.", -- action description`
        in_money=10000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["driver"] = 1
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },
  {
    name="Bankfahrer Mission", -- menu name 
	permissions = {"bankdriver.money"}, -- you can add permissions
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=236.87298583984,y=217.09535217285,z=106.28678894043,
    radius=2, height=1.0, -- area
    recipes = {
      ["Geld abheben"] = { -- action name
       description="Hole dir Geld von der Bank für die Mission",
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["bank_money"] = 500000
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },
  {
    name="Ruby", -- menu name -591.46490478516,2072.7470703125,131.29724121094
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=-591.46490478516,y=2072.7470703125,z=131.29724121094,
    radius=2, height=1.0, -- area
    recipes = {
      ["Mine Ruby"] = { -- action name
       description="Mine your ruby here.",
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["ruby"] = 1
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },
  {
    name="Emerald", -- menu name -589.03253173828,2060.8156738282,130.77743530274
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=-589.03253173828,y=2060.8156738282,z=130.77743530274,
    radius=2, height=1.0, -- area
    recipes = {
      ["Mine Emerald"] = { -- action name
       description="Mine your Emerald here.",
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["emerald"] = 1
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },
  {
    name="Diamond", -- menu name -587.59161376954,2049.3256835938,129.89027404786
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=-587.59161376954,y=2049.3256835938,z=129.89027404786,
    radius=2, height=1.0, -- area
    recipes = {
      ["Mine Diamond"] = { -- action name
       description="Mine your Diamond here.",
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["diamond"] = 1
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },
  {
    name="refine ruby", -- menu name 1072.471069336,-1957.5615234375,31.01424407959
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=1072.471069336,y=-1957.5615234375,z=31.01424407959,
    radius=2, height=1.0, -- area
    recipes = {
      ["refine ruby"] = { -- action name
       description="Refine Rubys",
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
		["ruby"] = 5
	}, -- items taken per unit
        products={
		["rubychain"] = 1 
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },
  {
    name="refine emerald", -- menu name 1072.471069336,-1957.5615234375,31.01424407959
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=1072.471069336,y=-1957.5615234375,z=31.01424407959,
    radius=2, height=1.0, -- area
    recipes = {
      ["refine emerald"] = { -- action name
       description="Refine Emeralds",
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
		["emerald"] = 10
	}, -- items taken per unit
        products={
		["emeraldring"] = 1 
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },
  {
    name="refine Diamonds", -- menu name 1072.471069336,-1957.5615234375,31.01424407959
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=1072.471069336,y=-1957.5615234375,z=31.01424407959,
    radius=2, height=1.0, -- area
    recipes = {
      ["Refine Diamond"] = { -- action name
       description="Refine Diamond into diamond coins.",
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
		["diamond"] = 15
	}, -- items taken per unit
        products={
		["dcoin"] = 1 
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },
 -- {
   -- name="Robbery Bank", -- menu name
   -- r=255,g=125,b=0, -- color
   -- max_units=600,
   -- units_per_minute=1,
   -- x=265.94982910156,y=213.54983520508,z=101.68338775635,
   -- radius=2, height=1.0, -- area
   -- recipes = {
     -- ["Bank Money"] = { -- action name
      -- description="get the money.", -- action description
       -- in_money=0, -- money taken per unit
       -- out_money=0, -- money earned per unit
      --  reagents={}, -- items taken per unit
      --  products={
	--	["dirty_money"] = 0
	--	}, -- items given per unit
       -- aptitudes={} -- optional
     -- }
   -- }
 -- },
  {
    name="Drogen Labor", -- menu name
	permissions = {"harvest.weed"}, -- job drug dealer required to use
    r=0,g=255,b=0, -- color
    max_units=100000,
    units_per_minute=10,
    x=-77.722381591797,y=6223.626953125,z=31.089864730835, -- pos (needed for public use lab tools)
    radius=1.1, height=1.5, -- area
    recipes = {
      ["Kokain"] = { -- action name
        description="Erstelle Kokain", -- action description
        in_money=450, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["benzoilmetilecgonina"] = 1
        },
        products={ -- items given per unit
          ["cocaine"] = 3
        },
        aptitudes={ -- optional
          ["laboratory.cocaine"] = 3, -- "group.aptitude", give 1 exp per unit
          ["science.chemicals"] = 6
        }
      },
      ["Gras"] = { -- action name
        description="Erstelle Gras", -- action description
        in_money=250, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={ -- items taken per unit
          ["seeds"] = 1
        },
        products={ -- items given per unit
          ["weed"] = 3
        },
        aptitudes={ -- optional
          ["laboratory.weed"] = 3, -- "group.aptitude", give 1 exp per unit
          ["science.chemicals"] = 6
        }
      },
      ["LSD"] = { -- action name
          description="Erstelle LSD", -- action description
          in_money=350, -- money taken per unit
          out_money=0, -- money earned per unit
          reagents={ -- items taken per unit
            ["harness"] = 1
          },
          products={ -- items given per unit
            ["lsd"] = 3
          },
          aptitudes={ -- optional
            ["laboratory.lsd"] = 3, -- "group.aptitude", give 1 exp per unit
            ["science.chemicals"] = 6
          }
        }
      }
    },
--  {
--    name="Rohstoffe verarbeiten", -- menu name
--	permissions = {"mission.bergarbeiter.craft"}, -- job drug dealer required to use
--    r=0,g=255,b=0, -- color
--    max_units=20,
--   units_per_minute=3,
--    x=1113.9343261719,y=-2006.4508056641,z=35.439392089844, -- pos (needed for public use lab tools)
--    radius=1.1, height=1.5, -- area
--    recipes = {
--      ["Rubinenkette"] = { -- action name
--        description="Stelle eine Kette aus Rubinen her.", -- action description
--        in_money=0, -- money taken per unit
--        out_money=0, -- money earned per unit
--        reagents={ -- items taken per unit
--          ["ruby"] = 5
--        },
--        products={ -- items given per unit
--          ["rubychain"] = 1
--        }
--      },
--      ["Smaragtring"] = { -- action name
--        description="Stelle einen Ring aus Smaragt her.", -- action description
--        in_money=0, -- money taken per unit
--        out_money=0, -- money earned per unit
--       reagents={ -- items taken per unit
--          ["emerald"] = 10
--        },
--        products={ -- items given per unit
--          ["emeraldring"] = 1
--        }
--      },
--      ["Diamantmünze"] = { -- action name
--        description="Stelle eine Münze aus Diamant her.", -- action description
--        in_money=0, -- money taken per unit
--        out_money=0, -- money earned per unit
--        reagents={ -- items taken per unit
--          ["diamond"] = 15
--        },
--        products={ -- items given per unit
--          ["dcoin"] = 1
--        }
--      }
--      }
--    },
--  {
--    name="Schmuck verkaufen", -- menu name
--    r=0,g=255,b=0, -- color
--    max_units=200,
--   units_per_minute=10,
--    x=-623.4951171875,y=-231.78807067871,z=38.05704498291, -- pos (needed for public use lab tools)
--   radius=1.1, height=1.5, -- area
--  recipes = {
--      ["Rubinenkette"] = { -- action name
--        description="Verkaufe eine Rubinenkette.", -- action description
--        in_money=0, -- money taken per unit
--        out_money=70000, -- money earned per unit
--        reagents={ -- items taken per unit
--          ["rubychain"] = 1
--        }
--      },
--      ["Smaragtring"] = { -- action name
--		description="Verkaufe einen Ring aus Smaragten.", -- action description
--        in_money=, -- money taken per unit
--        out_money=190000, -- money earned per unit
--        reagents={ -- items taken per unit
--         ["emeraldring"] = 1
--        }
--      },
--      ["Diamantmünze"] = { -- action name
--        description="Verkaufe eine Münze aus Diamant.", -- action description
--       in_money=0, -- money taken per unit
--        out_money=275000, -- money earned per unit
--        reagents={ -- items taken per unit
--          ["dcoin"] = 1
--        }
--      }
--      }
--    }
}

-- define transformers randomly placed on the map
cfg.hidden_transformers = {
  ["Marihuana Feld"] = {
    def = {
      name="Marihuana Feld", -- menu name
      permissions = {"harvest.weed"}, -- you can add permissions
      r=0,g=200,b=0, -- color
      max_units=100000,
      units_per_minute=5,
      x=0,y=0,z=0, -- pos
      radius=5, height=1.5, -- area		
      recipes = {
        ["Ernten"] = { -- action name
          description="Ernte paar Samen.", -- action description
          in_money=0, -- money taken per unit
          out_money=0, -- money earned per unit
          reagents={}, -- items taken per unit
          products={ -- items given per unit
            ["seeds"] = 1
          }
        }
      }
    },
    positions = {
      {2208.0104980469,5577.6987304688,53.739212036133}
    }
  },
  ["Kokain Dealer"] = {
    def = {
      name="Kokain Dealer", -- menu name
      permissions = {"harvest.weed"}, -- you can add permissions
      r=0,g=200,b=0, -- color
      max_units=100000,
      units_per_minute=5,
      x=0,y=0,z=0, -- pos
      radius=5, height=1.5, -- area
      recipes = {
        ["Sammeln"] = { -- action name
          description="Sammel etwas Methyl.", -- action description
          in_money=0, -- money taken per unit
          out_money=0, -- money earned per unit
          reagents={}, -- items taken per unit
          products={ -- items given per unit
            ["benzoilmetilecgonina"] = 1
          }
        }
      }
    },
    positions = {
      {1975.6110839844,3818.4440917969,33.436367034912}
    }
  },
  ["Lsd Bar"] = {
    def = {
      name="LSD Bar", -- menu name
      permissions = {"harvest.weed"}, -- you can add permissions
      r=0,g=200,b=0, -- color
      max_units=100000,
      units_per_minute=5,
      x=0,y=0,z=0, -- pos
      radius=5, height=1.5, -- area
      recipes = {
        ["Sammeln"] = { -- action name
          description="Sammel etwas Lysergid", -- action description	
          in_money=0, -- money taken per unit
          out_money=0, -- money earned per unit
          reagents={}, -- items taken per unit
          products={ -- items given per unit
      			["harness"] = 1
          }
        }
      }
    },
    positions = {
      {2433.8530273438,4969.1303710938,42.347599029541}
    }
  }
}

-- time in minutes before hidden transformers are relocated (min is 5 minutes)
cfg.hidden_transformer_duration = 5*24*60 -- 5 days

-- configure the information reseller (can sell hidden transformers positions)
cfg.informer = {
  infos = {
    ["Marihuana Ort"] = 5000,
	["Kokain Ort"] = 5000,
	["LSD Ort"] = 5000
  },
  positions = {
    {2208.0104980469,5577.6987304688,53.739212036133},
    {1975.6110839844,3818.4440917969,33.436367034912},
	{2433.8530273438,4969.1303710938,42.347599029541}
  },
  interval = 60, -- interval in minutes for the reseller respawn
  duration = 10, -- duration in minutes of the spawned reseller
  blipid = 133,
  blipcolor = 2
}

return cfg
