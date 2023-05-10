// TODO: add comments

export default `
---@type Weapon
local \${1:myNewWeapon} = {
    SaveName = "\${2:myNewWeapon}",
    FileName = "weapons/\${2}.lua",
    Icon = "hud-\${3:mynewweapon}-icon",
    GroupButton = "hud-group-\${3}",
    Detail = "hud-detail-\${3}",
    BuildTimeComplete = \${4:15.0},
    ScrapPeriod = \${5:5},
    MetalCost = \${6:75},
    EnergyCost = \${7:250},
    MetalRepairCost = \${8:7.5},
    EnergyRepairCost = \${9:225},
    MaxSpotterAssistance = \${10:0},
    MaxUpAngle = \${11:StandardMaxUpAngle},
    BuildOnGroundOnly = \${12:false},
    FireGroupWhenDoorBlocks = \${13:true},
    SelectEffect = "\${14:ui/hud/weapons/ui_weapons}",
    Upgrades = {\${15}},
    -- Prerequisite = string,
    -- Enabled = boolean,
    -- MaxWeaponGroupSize = number,
    -- SpotterFactor = number,
    -- DrawBlurredProjectile = boolean,
    -- CompatibleGroupTypes = object,
    -- MetalReclaimMax = number,
    -- EnergyReclaimMin = number,
    -- MetalReclaimMin = number,
    -- EnergyReclaimMax = number,
    -- BuildTimeIntermediate = number,
    -- HideFromToolTipsAmmoFor = boolean,
    -- BuildQueueModifier = object,
    -- RequiresSpotterToFire = boolean,
    -- RequiresLand = boolean,
    -- AlignToCursorNormal = boolean,
    -- AnimationScript = string,
    -- InvertedType = string,
    -- Inverted = boolean,
    -- RequiresWater = boolean,
    -- IgnitePlatformOnDestruct = boolean,
    -- ProxyUpgrades = object,
    -- HideFromEditor = boolean,
    -- Selectable = boolean,
    -- dlc2_BuildAnywhere = boolean,
    -- ExcludeUnlockAll = boolean,
    -- SavedInEditor = boolean
}

table.insert(Weapons, IndexOfWeapon('\${16:sniper}') + 1, \${1})

`;