require ("util")

local shift_digit = {x = -1/32, y = -7/32}
local arrow_box = {{-.5, 1}, {0.5, 1}}
circuit_connector_definitions["SNTD-nixie-tube"] = circuit_connector_definitions.create
(
  universal_connector_template,
  {
    { variation = 26,
    main_offset = util.by_pixel(2.5, 18.0),
    shadow_offset = util.by_pixel(2.0, 18.0),
    show_shadow = true },
  }
)



data:extend{

  -- nixie-tube
  {
    type = "recipe",
    name = "SNTD-nixie-tube",
    enabled = "false",
    ingredients = {
      {"electronic-circuit", 1},
      {"iron-plate", 2},
      {"iron-stick", 10},
    },
    result = "SNTD-nixie-tube"
  },

  {
    type = "item",
    name = "SNTD-nixie-tube",
    icon = "__SantasNixieTubeDisplay__/graphics/nixie-tube-icon.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "circuit-network",
    order = "c-a",
    place_result = "SNTD-nixie-tube",
    stack_size = 50
  },

  {
    type = "lamp",
    name = "SNTD-nixie-tube",
    icon = "__SantasNixieTubeDisplay__/graphics/nixie-tube-base.png",
    icon_size = 32,
    flags = {"placeable-neutral","player-creation","not-on-map"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "SNTD-nixie-tube"},
    max_health = 55,
    order = "z[zebra]",
    corpse = "small-remnants",
    collision_box = {{-0.49, -0.9}, {0.49, .9}},
    selection_box = {{-.5, -1.0}, {0.5, 1.0}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage_per_tick = "4KW",
    light = {intensity = 0.0, size = 0, color = {r=1, g=.6, b=.3, a=0}},
    picture_off =
    {
      filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-base.png",
      priority = "high",
      width = 40,
      height = 64,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {4/32,0}
    },
    picture_on =
    {
      filename = "__SantasNixieTubeDisplay__/graphics/empty.png",
      priority = "high",
      width = 1,
      height = 1,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {0,0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {22.5/32, 23.5/32},
        green = {18.5/32, 28.5/32},
      },
      wire =
      {
        red = {12/32, 23/32},
        green = {12/32, 28/32},
      }
    },
    circuit_wire_connection_point = circuit_connector_definitions["SNTD-nixie-tube"].points,
    circuit_connector_sprites = circuit_connector_definitions["SNTD-nixie-tube"].sprites,

    circuit_wire_max_distance = 7.5
  },

  {
    type = "arithmetic-combinator",
    name = "SNTD-nixie-tube-sprite",
    icon = "__SantasNixieTubeDisplay__/graphics/nixie-tube-icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-off-grid", "player-creation", "hide-alt-info"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "SNTD-nixie-tube"},
    max_health = 200,
    order="z[zebra]",
    corpse = "small-remnants",
    collision_box = {{-0.1, -.1}, {.1,.1}},
    selection_box = {{0,-.5}, {0,-.5}},

    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      render_no_network_icon = false,
      render_no_power_icon = false
    },
    active_energy_usage = "0KW",

    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/combinator.ogg",
        volume = 0,
      },
      max_sounds_per_type = 1,
      match_speed_to_activity = true,
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },

    -- base of the nixie tube
    sprites = {
      north = {
        filename = "__SantasNixieTubeDisplay__/graphics/empty.png",
        width = 40,
        height = 64,
        frame_count = 1,
        shift = {0,0}
      },
      east = {
        filename = "__SantasNixieTubeDisplay__/graphics/empty.png",
        width = 40,
        height = 64,
        frame_count = 1,
        shift = {0,0}
      },
      south = {
        filename = "__SantasNixieTubeDisplay__/graphics/empty.png",
        width = 40,
        height = 64,
        frame_count = 1,
        shift = {0,0}
      },
      west = {
        filename = "__SantasNixieTubeDisplay__/graphics/empty.png",
        width = 40,
        height = 64,
        frame_count = 1,
        shift = {0,0}
      }
    },

    activity_led_sprites =
    {
      north =
      {
        filename = "__SantasNixieTubeDisplay__/graphics/empty.png",
        width = 1,
        height = 1,
        frame_count = 1,
        shift = {0,0}
      },
      east =
      {
        filename = "__SantasNixieTubeDisplay__/graphics/empty.png",
        width = 1,
        height = 1,
        frame_count = 1,
        shift = {0,0}
      },
      south =
      {
        filename = "__SantasNixieTubeDisplay__/graphics/empty.png",
        width = 1,
        height = 1,
        frame_count = 1,
        shift = {0,0}
      },
      west =
      {
        filename = "__SantasNixieTubeDisplay__/graphics/empty.png",
        width = 1,
        height = 1,
        frame_count = 1,
        shift = {0,0}
      }
    },

    activity_led_light =
    {
      intensity = 0,
      size = 1,
      color = {r = 1.0, g = 1.0, b = 1.0}
    },

    activity_led_light_offsets =
    {
      {0, 0},
      {0, 0},
      {0, 0},
      {0, 0}
    },

    screen_light =
    {
      intensity = 0.3,
      size = 0.6,
      color = {r = 1.0, g = 1.0, b = 1.0}
    },

    screen_light_offsets =
    {
      {0.015625, -0.234375},
      {0.015625, -0.296875},
      {0.015625, -0.234375},
      {0.015625, -0.296875}
    },

    -- empty number display
    multiply_symbol_sprites = {
      north = {
        filename = "__SantasNixieTubeDisplay__/graphics/empty.png",
        width = 1,
        height = 1,
        shift = shift_digit
      },
      east = {
        filename = "__SantasNixieTubeDisplay__/graphics/empty.png",
        width = 1,
        height = 1,
        shift = shift_digit
      },
      south = {
        filename = "__SantasNixieTubeDisplay__/graphics/empty.png",
        width = 1,
        height = 1,
        shift = shift_digit
      },
      west = {
        filename = "__SantasNixieTubeDisplay__/graphics/empty.png",
        width = 1,
        height = 1,
        shift = shift_digit
      }
    },
    -- number 0
    plus_symbol_sprites = {
      north = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 0,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      east = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 0,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      south = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 0,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      west = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 0,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      }
    },
    -- number 1
    minus_symbol_sprites = {
      north = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 20,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      east = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 20,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      south = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 20,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      west = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 20,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      }
    },
    -- number 2
    divide_symbol_sprites = {
      north = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 40,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      east = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 40,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      south = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 40,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      west = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 40,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      }
    },
    -- number 3
    modulo_symbol_sprites = {
      north = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 60,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      east = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 60,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      south = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 60,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      west = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 60,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      }
    },
    -- number 4
    power_symbol_sprites = {
      north = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 80,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      east = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 80,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      south = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 80,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      west = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 80,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      }
    },
    -- number 5
    left_shift_symbol_sprites = {
      north = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 100,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      east = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 100,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      south = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 100,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      west = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 100,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      }
    },
    -- number 6
    right_shift_symbol_sprites = {
      north = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 120,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      east = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 120,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      south = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 120,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      west = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 120,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      }
    },
    -- number 7
    and_symbol_sprites = {
      north = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 140,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      east = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 140,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      south = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 140,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      west = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 140,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      }
    },
    -- number 8
    or_symbol_sprites = {
      north = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 160,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      east = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 160,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      south = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 160,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      west = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 160,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      }
    },
    -- number_9
    xor_symbol_sprites = {
      north = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 180,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      east = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 180,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      south = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 180,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      },
      west = {
        filename = "__SantasNixieTubeDisplay__/graphics/nixie-tube-numbers.png",
        x = 180,
        y=0,
        width = 20,
        height = 44,
        shift = shift_digit
      }
    },

    input_connection_bounding_box = arrow_box,
    input_connection_points = {
      {
        shadow = {
          red = {22.5/32, 23.5/32},
          green = {18.5/32, 28.5/32},
        },
        wire = {
          red = {12/32, 23/32},
          green = {12/32, 28/32},
        }
      },
      {
        shadow = {
          red = {22.5/32, 23.5/32},
          green = {18.5/32, 28.5/32},
        },
        wire = {
          red = {12/32, 23/32},
          green = {12/32, 28/32},
        }
      },
      {
        shadow = {
          red = {22.5/32, 23.5/32},
          green = {18.5/32, 28.5/32},
        },
        wire = {
          red = {12/32, 23/32},
          green = {12/32, 28/32},
        }
      },
      {
        shadow = {
          red = {22.5/32, 23.5/32},
          green = {18.5/32, 28.5/32},
        },
        wire = {
          red = {12/32, 23/32},
          green = {12/32, 28/32},
        }
      }
    },

    output_connection_bounding_box = arrow_box,
    output_connection_points = {
      {
        shadow = {
          red = {22.5/32, 23.5/32},
          green = {18.5/32, 28.5/32},
        },
        wire = {
          red = {12/32, 23/32},
          green = {12/32, 28/32},
        }
      },
      {
        shadow = {
          red = {22.5/32, 23.5/32},
          green = {18.5/32, 28.5/32},
        },
        wire = {
          red = {12/32, 23/32},
          green = {12/32, 28/32},
        }
      },
      {
        shadow = {
          red = {22.5/32, 23.5/32},
          green = {18.5/32, 28.5/32},
        },
        wire = {
          red = {12/32, 23/32},
          green = {12/32, 28/32},
        }
      },
      {
        shadow = {
          red = {22.5/32, 23.5/32},
          green = {18.5/32, 28.5/32},
        },
        wire = {
          red = {12/32, 23/32},
          green = {12/32, 28/32},
        }
      }
    },

    circuit_wire_max_distance = 9
  }

}
