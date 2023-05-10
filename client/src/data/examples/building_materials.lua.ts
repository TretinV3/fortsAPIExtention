// TODO: add comments

export default `


---@type Material
local \${1:myNewMaterial} = {
    SaveName = "\${2:armour}",
    Icon = "hud-\${3:armor}-icon",
    Detail = "hud-detail-\${3}",
    Context = "context-\${3}",
    Sprite = "\${3}",
    RenderOrder = \${4:5},
    DoorTargetSaveName = "\${5:door}",
    ArmorRemovalTargetSaveName = "\${6:bracing}",
    ForegroundTargetSaveName = "\${7:bracing}",
    FogOfWarTargetSaveName = "\${8:bracing}",
    PostCreateTargetSaveName = "\${9:bracing}",
    RecessionTargetSaveName = "\${10:backbracing}",
    WeaponRecession = \${11:true},
    DoorOnClearanceOverlap = \${12:true},
    SelectEffect = "\${13:ui/hud/materials/ui_materials}",
    
    KeySpriteByDamage = \${14:true},
    Stiffness = \${15:250000},
    MaxCompression = \${16:0.9},
    MaxExpansion = \${17:1.1},
    MinLength = \${18:StandardMinLength},
    MaxLength = \${19:StandardMaxLength},
    MaxLinkLength = \${20:StandardMaxLinkLength},
    Mass = \${21:0.5},
    AirDrag = \${22:6.4},
    HitPoints = \${23:400},
    AbsorptionMomentumThreshold = \${24:50},
    ReflectionMomentumThreshold = \${25:1600},
    PenetrationMomentumThreshold = \${26:4000},
    BeamPenetrationBlockDist = \${27:90},
    RicochetVariationFactor = \${28:0.01},
    SpeedLossFactor = \${29:0.95},
    MetalBuildCost = \${30:1.8},
    MetalRepairCost = \${31:1.0},
    MetalReclaim = \${32:0.9},
    EnergyBuildCost = \${33:1.5},
    EnergyRepairCost = \${34:3.0},
    EnergyReclaim = \${35:0.0},
    EnergyRunCost = \${36:0.0},
    BuildTime = \${37:8},
    ScrapTime = \${38:4},
    SupportsDevices = \${39:false},
    ReflectsBeams = \${40:false},
    Node = \${41:StandardNode},
    IsBehindDevices = \${42:false},
    AttachesCladding = \${43:true},
    BuildEffect = "\${45:effects/build_armor.lua}",
    DestroyEffect = "\${46:effects/armor_destroy.lua}",
    IsFogOfWarArmour = \${47:true},
    NodeImpacts =
    {
        ["foundations"] = "effects/bounce_metal.lua",
        ["rocks01"] = "effects/bounce_metal.lua",
        ["default"] = "effects/bounce_metal.lua",
    },
    -- DegreesPerSecondMin = number,
    -- NoCostRecession = boolean,
    -- DegreesPerSecondMax = number,
    -- CatchesFire = boolean,
    -- FireDestroyEffect = string,
    -- Conversions = object,
    -- ArmorTargetSaveName = string,
    -- CollidesWithEnemyProjectiles = boolean,
    -- ShowOnHUD = boolean,
    -- ConductsPower = boolean,
    -- CollidesWithFriendlyProjectiles = boolean,
    -- CollidesWithEnemyBeams = boolean,
    -- BackgroundCladding = boolean,
    -- PoweredByDeviceOverlap = boolean,
    -- CollidesWithWind = boolean,
    -- CollidesWithFriendlyBeams = boolean,
    -- FullExtrusion = boolean,
    -- ShowInEditor = boolean,
    -- Enabled = boolean,
    -- SpriteDoor = string,
    -- PostCreateMaterialAlways = boolean,
    -- DoorSpeedClose = number,
    -- DoorCap = string,
    -- RepairRateMultiplier = number,
    -- OpenEffect = string,
    -- IsDoor = boolean,
    -- CloseEffect = string,
    -- DoorSpeed = number,
    -- DoorOpenMax = number,
    -- EnergyProductionClearance = number,
    -- NoProductionColour = object,
    -- MaxAngle = number,
    -- EnergyMinEfficiency = number,
    -- CanAttachToGround = boolean,
    -- EnergyMaxHeight = number,
    -- WarmUpTime = number,
    -- EndLinkOffset = number,
    -- WarmUpTimeDisabled = number,
    -- EnableEffect = string,
    -- WarmupEffect = string,
    -- DisableEffect = string,
    -- KeyEndCapByDamage = boolean,
    -- EndCap = string,
    -- SpriteDeactivated = string,
    -- ShowEndFireSegments = boolean,
    -- Pretension = number,
    -- SpringDamping = number,
    -- FireLateralOffsetStdDev = number,
    -- AlignedLinksAllowed = boolean,
    -- CanBeTempBraced = boolean,
    -- AngleStressSecondaryThreshold = number,
    -- AngleStressPrimaryThreshold = number,
    -- RequiresFoundationSupport = boolean,
    -- MaxSegmentLength = number,
    -- FireSprite = string,
    -- Repairable = boolean,
    -- SmokeEffect = string,
    -- Portal = boolean,
    -- SplashMultiplier = number,
    -- InvulnerableWhenBackground = boolean,
    -- Sprite1 = string,
    -- MaxLinkLengthMultiplierInEditor = number,
    -- Sprite2 = string,
    -- Invulnerable = boolean,
    -- CanDeleteInGameplay = boolean,
    -- DefaultRecessionTarget = boolean,
    -- OpenedEffect = string,
    -- EndCapOverlay = boolean,
    -- ClosedEffect = string,
    -- EndCapOffset = number,
    -- PoweredWhenNeutral = boolean,
}

table.insert(Materials, IndexOfMaterial('\${0:wood}') + 1, \${1})
`;