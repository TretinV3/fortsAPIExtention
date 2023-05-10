// TODO: add comments

export default `
---@type Projectile
local \${1:myNewProjectile} = {
    SaveName = "\${2:cannon}",
    ProjectileType = "\${3:mortar}",
    ProjectileSprite = "\${4:weapons/media/bullet}",
    ProjectileSpriteMipMap = \${5:false},
    DrawBlurredProjectile = \${6:true},
    ProjectileMass = \${7:16},
    ProjectileDrag = \${8:0},
    Impact = \${9:20000},
    DestroyShields = \${10:true},
    DeflectedByShields = \${11:false},
    PassesThroughMaterials = \${12:false},
    ExplodeOnTouch = \${13:false},
    ProjectileThickness = \${14:10.0},
    ProjectileShootDownRadius = \${15:60},
    BeamTileRate = \${16:0.02},
    BeamScrollRate = \${17:0.0},
    ProjectileDamage = \${18:700.0},
    ProjectileSplashDamage = \${19:30.0},
    ProjectileSplashDamageMaxRadius = \${20:200.0},
    ProjectileSplashMaxForce = \${21:10000},
    SpeedIndicatorFactor = \${22:0.25},

    TrailEffect = "\${23:effects/cannon_trail.lua}",

    Effects =
    {
        Impact =
        {
            ["device"] = "effects/impact_heavy.lua",
            ["foundations"] = "effects/impact_heavy_ground.lua",
            ["rocks01"] = "effects/impact_heavy_ground.lua",
            ["bracing"] = "effects/impact_heavy.lua",
            ["armour"] = "effects/impact_heavy.lua",
            ["door"] = "effects/impact_heavy.lua",
            ["default"] = "effects/impact_heavy.lua",
        },
        Deflect =
        {
            ["armour"] = "effects/armor_ricochet.lua",
            ["door"] = "effects/armor_ricochet.lua",
            ["shield"] = "effects/energy_shield_ricochet.lua",
        },
    },
    MomentumThreshold =
    {
        ["armour"] = { Reflect = 0, Penetrate = 4000 },
        ["door"] = { Reflect = 0, Penetrate = 4000 },
    },
    -- MaxAge = number,
    -- MinAge = number,
    -- DamageMultiplier = object,
    -- WeaponDamageBonus = number,
    -- ImpactMomentumLimit = number,
    -- DeflectedByTerrain = boolean,
    -- CollidesWithBeams = boolean,
    -- ExpiresOnFreeFall = boolean,
    -- PenetrationDamage = number,
    -- PenetrationSpeedMultiplier = number,
    -- ProjectileIncendiary = boolean,
    -- AntiAirDamage = number,
    -- Projectile = object,
    -- IgnitesBackgroundMaterials = boolean,
    -- DisableShields = boolean,
    -- EMPSensitivity = number,
    -- EnemyCanTeleport = boolean,
    -- EMPMissileProbabilityOfCircling = number,
    -- IncendiaryOffset = number,
    -- IncendiaryRadius = number,
    -- AlwaysIncendiary = boolean,
    -- Missile = object,
    -- IncendiaryRadiusHeated = number,
    -- FlipSpriteFacingLeft = boolean,
    -- AntiAirHitpoints = number,
    -- ImpactSize = number,
    -- BeamOcclusionDistanceWater = number,
    -- BeamOcclusionDistance = number,
    -- IgnitesBackgroundMaterialsPassing = boolean,
    -- IgnitesBackgroundMaterialsPassingSource = boolean,
    -- ProjectileShootDownRadiusBeamWidth = number,
    -- CollisionLookaheadDist = number,
    -- DrawFromAge = number,
    -- EMPOffset = number,
    -- Gravity = number,
    -- EMPRadius = number,
    -- EMPDuration = number,
    -- MinPenetration = number,
    -- MagneticModifierEnemy = number,
    -- FieldRadius = number,
    -- FieldType = number,
    -- FieldCreatesImpactProjectile = boolean,
    -- CollidesWithBackgroundMaterials = boolean,
    -- CollidesWithLike = boolean,
    -- ProjectileSplashOffset = number,
    -- CollidesWithLikeTag = string,
    -- DetonatesOnExpiry = boolean,
    -- MagneticModifierFriendly = number,
    -- CanBeShotDown = boolean,
    -- FieldIntersectionNearest = boolean,
    -- RayOffset = number,
    -- RayIncendiaryRadius = number,
    -- RayStopAtForeground = boolean,
    -- RayExcludeBackground = boolean,
    -- RayDamage = number,
    -- RayLength = number,
    -- CollidesWithConstruction = boolean,
    -- RayDamageLimit = number,
    -- CollidesWithProjectiles = boolean,
    -- CollidesWithStructure = boolean,
    -- FieldStrengthMax = number,
    -- FieldStrengthFalloffPower = number,
    -- DecoyMinTargetAge = number,
    -- Additive = boolean,
    -- ScattershotNoTrajectory = boolean,
    -- dlc2_Bombs = object,
    -- StructureSplashDamage = number,
    -- IncendiaryOnPenetration = boolean,
    -- StructureSplashDamageMaxRadius = number,
    -- IncendiaryOnDeviceCollision = boolean,
    -- ProjectileIncendiaryDevicePlatform = boolean,
    -- dlc2_orbital = object,
    -- DoesNotReflectDuringFadeOut = boolean,
    -- BeamCollisionThickness = string,
    -- BeamDamage = string,
    -- BeamThickness = string,
    -- Beam = object,
    -- dlc2_control = object

}

table.insert(Projectiles, \${1})

`;