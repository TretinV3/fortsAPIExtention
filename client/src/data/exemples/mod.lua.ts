// TODO: add comments

export default `--- Is your mod selectable in the mod selection screen ?
---@type boolean
Selectable = \${1:true}

--- Where your mod will be ?
---@type Categories
Category = \${2:"Misc"}

-- When does he will execute ?
---@type number
Priority = \${3:5}

---@type boolean
SupportsMoonshot = \${4:true}

---@type boolean
RequiresMoonshot = \${5:false}

---@type boolean
SupportsHighSeas = \${6:true}

---@type boolean
RequiresHighSeas = \${7:false}

---@type boolean
AIFortSpecialisation = \${8:false}

---@type string
Include = \${9:''}`;