local Weapons = {}

Weapons.Configs = {
    Rifle = {
        Damage = 25,
        FireRate = 600,
        MagazineSize = 30,
        Range = 500,
    },

    Pistol = {
        Damage = 15,
        FireRate = 300,
        MagazineSize = 12,
        Range = 250,
    }
}

function Weapons.GetConfig(name)
    return Weapons.Configs[name]
end

function Weapons.CalculateDamage(name, distance)
    local config = Weapons.GetConfig(name)

    if not config then
        return 0
    end

    local falloff = math.clamp(distance / config.Range, 0, 1)

    return math.floor(config.Damage * (1 - (falloff * 0.5)))
end

return Weapons