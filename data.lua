if mods["grappling-gun"] then
    data:extend({
        {
          type = "technology",
          name = "nullius-grappling-gun",
          localised_name = {"technology-name.grappling-gun"},
          localised_description = {"technology-description.grappling-gun"},
          order = "nullius-e-g",
          icon = "__grappling-gun__/graphics/technology/grappling-gun.png",
          icon_size = 128,
          effects = {
            {
              type = "unlock-recipe",
              recipe = "nullius-grappling-gun"
            },
            {
                type = "unlock-recipe",
                recipe = "nullius-grappling-gun-ammo"
            }
          },
          unit = {
            count = 150,
            ingredients = {
              {"nullius-geology-pack", 1},
              {"nullius-climatology-pack", 1},
              {"nullius-mechanical-pack", 1}
            },
            time = 30
          },
          prerequisites = {"nullius-weaving-1", "nullius-locomotion-1"}
        },

        --nullius likes more painful recipes so lets be painful too :)
        {
            type = "recipe",
            name = "nullius-grappling-gun",
            enabled = false,
            always_show_made_in = true,
            category = "medium-crafting",
            energy_required = 10,
            ingredients = {
                { "nullius-rubber", 1 },
                { "nullius-steel-plate", 8 },
                { "nullius-steel-gear", 2 },
                { "pipe", 5 },
            },
            result = "grappling-gun"
        },
        {
            type = "recipe",
            name = "nullius-grappling-gun-ammo",
            enabled = false,
            always_show_made_in = true,
            category = "large-assembly",
            energy_required = 1,
            ingredients = {
                { type="item", name="nullius-steel-rod", amount=1 },
                { type="item", name="nullius-steel-cable", amount=1 },
                { type="item", name="nullius-plastic", amount=1 },
                { type="fluid", name="nullius-compressed-nitrogen", amount=100 },
            },
            result = "grappling-gun-ammo"
        },
    })
end