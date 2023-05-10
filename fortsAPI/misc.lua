---@meta


-- funny error
---@diagnostic disable-next-line: duplicate-doc-alias
---@alias Vector3D {  }
---@diagnostic disable-next-line: duplicate-doc-alias
---@alias Vector2D {  }
---@diagnostic disable-next-line: duplicate-doc-alias
---@alias Colour {  }


---@alias Categories "Combat" | "Devices" | "Physics" | "Resources" | "Rules" | "Misc" | "Disable" | "Weapons" | "Technology" | "Materials" | "Environments" | "Campaigns"

---@type number
StandardMinLength = 3.14
---@type number
StandardMaxLength = 3.14
---@type number
StandardMaxLinkLength = 3.14
---@type any
StandardNode = {3.14}

---@type number
StandardMaxUpAngle = 3.14

---@param name string
---@return number
function IndexOfWeapon(name) end

---@param name string
---@return number
function IndexOfDevice(name) end

---@param name string
---@return number
function IndexOfMaterial(name) end

