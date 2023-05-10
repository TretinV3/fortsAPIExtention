// TODO: add comments

export default `---@type Device
local \${1:myNewDevice} = {
    SaveName = \${1},
    FileName = "devices/\${1}",
    Icon = "hud-\${4:mynewdevice}-icon",
    Detail = "hud-\${4}-mynewdevice",
    BuildTimeComplete = \${6:16.0},
    ScrapPeriod = \${7:8},
    MetalCost = \${8:150},
    EnergyCost = \${9:625},
    MetalRepairCost = \${10:15},
    EnergyRepairCost = \${11:312},
    MaxUpAngle = \${12:StandardMaxUpAngle},
    BuildOnGroundOnly = \${13:false},
    SelectEffect = \${14:"ui/hud/devices/ui_devices"},
    -- TeamOwned = boolean,
    -- AllowOverlap = boolean,
    -- SpotterTarget = boolean,
    -- NoReclaim = boolean,
    -- Enabled = boolean,
    -- ScoreWeight = number,
    -- ShowDetails = boolean,
    -- RequiresLand = boolean,
    -- BuildOnOreOnly = boolean,
    -- Upgrades = object,
    -- AlignToCursorNormal = boolean,
    -- RequiresWater = boolean,
    -- BuildTimeIntermediate = number,
    -- MinBuildDepth = number,
    -- CanMirrorFacing = boolean,
    -- MetalReclaimMax = number,
    -- MetalReclaimMin = number,
    -- EnergyReclaimMax = number,
    -- EnergyReclaimMin = number,
    -- HasDummy = boolean,
    -- CanMove = boolean,
    -- HideFromEditor = boolean,
    -- Tech = boolean,
    -- PopulationCap = number,
    -- IgnitePlatformOnDestruct = boolean,
}

table.insert(Devices, IndexOfDevice('\${40:sandbags}') + 1, $1)

`;