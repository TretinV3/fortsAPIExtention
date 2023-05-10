---@meta

---@param id integer
---@return integer
function DoorCountAI(id) end

---@param teamId integer
---@param fort string
---@param difficulty number
---@param fortIdPos integer
---@return nil
function EnableAI(teamId, fort, difficulty, fortIdPos) end

---@param aiClearanceMinimum number
---@return nil
function SetAIClearanceMinimum(aiClearanceMinimum) end

---@param seriesId integer
---@param duration number
---@param volume number
---@return nil
function AdjustStreamVolume(seriesId, duration, volume) end

---@param seriesId integer
---@return nil
function ContinueStreamOnPauseMenu(seriesId) end

---@param undefined any
---@return nil
function DisableMusic(undefined) end

---@param seriesId integer
---@param duration number
---@return nil
function FadeStream(seriesId, duration) end

---@param seriesId integer
---@param pause boolean
---@param fadePeriod number
---@return nil
function PauseStream(seriesId, pause, fadePeriod) end

---@param seriesId integer
---@param pause boolean
---@return nil
function PauseStreamOnAdvance(seriesId, pause) end

---@param id integer
---@param name string
---@param value number
---@return nil
function SetAudioParameter(id, name, value) end

---@param name string
---@param value number
---@return nil
function SetGlobalAudioParameter(name, value) end

---@param filename string
---@param loop boolean
---@param randomise boolean
---@return integer
function StartMusic(filename, loop, randomise) end

---@param filename string
---@param volume number
---@return integer
function StartStream(filename, volume) end

---@param undefined any
---@return nil
function StopAllStreams(undefined) end

---@param seriesId integer
---@return nil
function StopStream(seriesId) end

---@param teamId integer
---@return nil
function ActivateCommander(teamId) end

---@param teamId integer
---@return number
function GetTeamCommanderPoints(teamId) end

---@param teamId integer
---@return boolean
function IsCommanderActive(teamId) end

---@param name string
---@return number
function GetConstant(name) end

---@param name string
---@return string
function GetConstantString(name) end

---@param teamId integer
---@param name string
---@return number
function GetRule(teamId, name) end

---@param text string
---@return nil
function Log(text) end

---@param text string
---@return nil
function LogToFile(text) end

---@param text string
---@return nil
function LogToFileW(text) end

---@param text string
---@return nil
function LogW(text) end

---@param text string
---@return nil
function Notice(text) end

---@param pos Vector3D
---@param radius number
---@param colour Colour
---@param duration number
---@return integer
function SpawnCircle(pos, radius, colour, duration) end

---@param posA Vector3D
---@param posB Vector3D
---@param colour Colour
---@param duration number
---@return integer
function SpawnLine(posA, posB, colour, duration) end

---@param text string
---@return string
function towstring(text) end

---@param id integer
---@param target Vector3D
---@return boolean
function AimWeapon(id, target) end

---@param deviceId integer
---@param damage number
---@return number
function ApplyDamageToDevice(deviceId, damage) end

---@param id integer
---@return nil
function ClearWeaponPaintTarget(id) end

---@param deviceTeamId integer
---@param saveName string
---@param nodeIdA integer
---@param nodeIdB integer
---@param t number
---@return integer
function CreateDevice(deviceTeamId, saveName, nodeIdA, nodeIdB, t) end

---@param deviceTeamId integer
---@param saveName string
---@param nodeIdA integer
---@param nodeIdB integer
---@param t number
---@param flags integer
---@param movingDeviceId integer
---@return integer
function CreateDeviceWithFlags(deviceTeamId, saveName, nodeIdA, nodeIdB, t, flags, movingDeviceId) end

---@param deviceTeamId integer
---@param saveName string
---@param position Vector3D
---@param angle number
---@return integer
function CreateGroundDevice(deviceTeamId, saveName, position, angle) end

---@param teamId integer
---@param nodeIdA integer
---@param nodeIdB integer
---@return integer
function DestroyDevice(teamId, nodeIdA, nodeIdB) end

---@param teamId integer
---@param position Vector3D
---@return integer
function DestroyDeviceAtPos(teamId, position) end

---@param deviceId integer
---@return integer
function DestroyDeviceById(deviceId) end

---@param deviceId integer
---@return boolean
function DeviceCanBeDestroyedById(deviceId) end

---@param deviceId integer
---@return boolean
function DeviceDisabled(deviceId) end

---@param deviceId integer
---@return boolean
function DeviceExists(deviceId) end

---@param deviceId integer
---@return boolean
function DeviceExpired(deviceId) end

---@param deviceTeamId integer
---@param saveName string
---@param position Vector3D
---@param angle number
---@return integer
function dlc2_CreateFloatingDevice(deviceTeamId, saveName, position, angle) end

---@param deviceId integer
---@param pos Vector3D
---@return nil
function dlc2_SetDevicePosition(deviceId, pos) end

---@param deviceId integer
---@param duration number
---@return nil
function EMPDevice(deviceId, duration) end

---@param saveName string
---@param enable boolean
---@param sideId integer
---@return nil
function EnableDevice(saveName, enable, sideId) end

---@param deviceSaveName string
---@param upgradeSaveName string
---@param sideId integer
---@param enable boolean
---@return nil
function EnableDeviceUpgrade(deviceSaveName, upgradeSaveName, sideId, enable) end

---@param saveName string
---@param enable boolean
---@param sideId integer
---@return nil
function EnableWeapon(saveName, enable, sideId) end

---@param deviceSaveName string
---@param upgradeSaveName string
---@param sideId integer
---@param enable boolean
---@return nil
function EnableWeaponUpgrade(deviceSaveName, upgradeSaveName, sideId, enable) end

---@param pos Vector3D
---@param structureId integer
---@param saveName string
---@return integer
function FindClosestDeviceOnStructure(pos, structureId, saveName) end

---@param saveName string
---@param teamId integer
---@param acceptIncomplete boolean
---@param index integer
---@return integer
function FindDeviceInstance(saveName, teamId, acceptIncomplete, index) end

---@param weaponId integer
---@return integer
function FindVisibleAngles(weaponId) end

---@param id integer
---@param target Vector3D
---@param stdDev number
---@param flags integer
---@return integer
function FireWeapon(id, target, stdDev, flags) end

---@param id integer
---@param target Vector3D
---@param stdDev number
---@param stdDevTestOverride number
---@param flags integer
---@param power number
---@return integer
function FireWeaponWithPower(id, target, stdDev, stdDevTestOverride, flags, power) end

---@param undefined any
---@return number
function GetAimWeaponAngle(undefined) end

---@param undefined any
---@return number
function GetAimWeaponSpeed(undefined) end

---@param undefined any
---@return integer
function GetBlockingDevice(undefined) end

---@param deviceId integer
---@return number
function GetDeviceAngle(deviceId) end

---@param deviceId integer
---@return boolean
function GetDeviceCanClaimStructures(deviceId) end

---@param deviceId integer
---@return Vector3D
function GetDeviceCentrePosition(deviceId) end

---@param deviceId integer
---@param component string
---@return Vector3D
function GetDeviceComponentPosition(deviceId, component) end

---@param saveName string
---@return any
function GetDeviceCost(saveName) end

---@param teamId integer
---@return integer
function GetDeviceCount(teamId) end

---@param sideId integer
---@return integer
function GetDeviceCountSide(sideId) end

---@param deviceId integer
---@return number
function GetDeviceEfficiency(deviceId) end

---@param saveName string
---@param sideId integer
---@return boolean
function GetDeviceEnabled(saveName, sideId) end

---@param deviceId integer
---@return Vector3D
function GetDeviceForward(deviceId) end

---@param deviceId integer
---@return number
function GetDeviceHealth(deviceId) end

---@param deviceId integer
---@return number
function GetDeviceHitpoints(deviceId) end

---@param teamId integer
---@param index integer
---@return integer
function GetDeviceId(teamId, index) end

---@param pos Vector3D
---@return integer
function GetDeviceIdAtPosition(pos) end

---@param nodeIdA integer
---@param nodeIdB integer
---@return integer
function GetDeviceIdOnPlatform(nodeIdA, nodeIdB) end

---@param sideId integer
---@param index integer
---@return integer
function GetDeviceIdSide(sideId, index) end

---@param deviceId integer
---@return number
function GetDeviceLinkPosition(deviceId) end

---@param deviceId integer
---@return integer
function GetDeviceMovingId(deviceId) end

---@param deviceId integer
---@return integer
function GetDevicePlatformA(deviceId) end

---@param deviceId integer
---@return integer
function GetDevicePlatformB(deviceId) end

---@param deviceId integer
---@return Vector3D
function GetDevicePosition(deviceId) end

---@param teamId integer
---@param saveName string
---@return any
function GetDeviceProductionRate(teamId, saveName) end

---@param deviceId integer
---@return integer
function GetDeviceStructureId(deviceId) end

---@param deviceId integer
---@return integer
function GetDeviceTeamId(deviceId) end

---@param deviceId integer
---@return integer
function GetDeviceTeamIdActual(deviceId) end

---@param deviceId integer
---@return string
function GetDeviceType(deviceId) end

---@param sideId any
---@return integer
function GetDeviceTypeCount(sideId) end

---@param saveName string
---@return integer
function GetDeviceTypeIndex(saveName) end

---@param index integer
---@param sideId any
---@return string
function GetDeviceTypeSaveNameByIndex(index, sideId) end

---@param index integer
---@param sideId any
---@return number
function GetDeviceTypeSplashDamageByIndex(index, sideId) end

---@param id integer
---@return number
function GetFireAngle(id) end

---@param id integer
---@return number
function GetFireSpeed(id) end

---@param id integer
---@return Vector3D
function GetFireVel(id) end

---@param id integer
---@param power number
---@return number
function GetFuseDelay(id, power) end

---@param undefined any
---@return integer
function GetLocalSelectedDeviceId(undefined) end

---@param id integer
---@return number
function GetMaxFireRadius(id) end

---@param pos1 Vector3D
---@param pos2 Vector3D
---@param deviceSaveName string
---@return boolean
function GetPlatformSupportsDevice(pos1, pos2, deviceSaveName) end

---@param index integer
---@return Vector3D
function GetVisibleAngleBracket(index) end

---@param undefined any
---@return integer
function GetVisibleAngleBracketCount(undefined) end

---@param deviceId integer
---@return string
function GetWeaponAmmo(deviceId) end

---@param saveName string
---@param teamId integer
---@return integer
function GetWeaponAmmoWithProjectileCount(saveName, teamId) end

---@param deviceId integer
---@return Vector3D
function GetWeaponBarrelPosition(deviceId) end

---@param weaponId integer
---@param teamId integer
---@return number
function GetWeaponBeamDamage(weaponId, teamId) end

---@param weaponId integer
---@param teamId integer
---@return boolean
function GetWeaponBeamReflected(weaponId, teamId) end

---@param teamId integer
---@return integer
function GetWeaponCount(teamId) end

---@param sideId integer
---@return integer
function GetWeaponCountSide(sideId) end

---@param deviceId integer
---@return boolean
function GetWeaponFieldsBlockFiring(deviceId) end

---@param id integer
---@return any
function GetWeaponFireCost(id) end

---@param deviceId integer
---@return number
function GetWeaponFiringTimeRemaining(deviceId) end

---@param deviceId integer
---@return Vector3D
function GetWeaponHardpointPosition(deviceId) end

---@param teamId integer
---@param index integer
---@return integer
function GetWeaponId(teamId, index) end

---@param sideId integer
---@param index integer
---@return integer
function GetWeaponIdSide(sideId, index) end

---@param teamId integer
---@param saveName string
---@return number
function GetWeaponMaxFireSpeed(teamId, saveName) end

---@param teamId integer
---@param saveName string
---@return number
function GetWeaponMinFireSpeed(teamId, saveName) end

---@param id integer
---@return boolean
function GetWeaponPaintTargetMarked(id) end

---@param teamId integer
---@param saveName string
---@return number
function GetWeaponReloadPeriod(teamId, saveName) end

---@param id integer
---@return number
function GetWeaponReloadPeriodById(id) end

---@param id integer
---@return number
function GetWeaponReloadTime(id) end

---@param deviceId integer
---@return string
function GetWeaponSelectedAmmo(deviceId) end

---@param deviceId integer
---@return integer
function GetWeaponSelectedAmmoMode(deviceId) end

---@param index integer
---@param teamId any
---@param ammoIndex integer
---@param deviceIndex integer
---@return boolean
function GetWeaponTypeAmmoConsumeByIndex(index, teamId, ammoIndex, deviceIndex) end

---@param index integer
---@param teamId any
---@param ammoIndex integer
---@return string
function GetWeaponTypeAmmoContextSpriteByIndex(index, teamId, ammoIndex) end

---@param index integer
---@param teamId any
---@return integer
function GetWeaponTypeAmmoCount(index, teamId) end

---@param index integer
---@param teamId any
---@param ammoIndex integer
---@param deviceIndex integer
---@return string
function GetWeaponTypeAmmoDeviceByIndex(index, teamId, ammoIndex, deviceIndex) end

---@param index integer
---@param teamId any
---@param ammoIndex integer
---@return integer
function GetWeaponTypeAmmoDeviceCountByIndex(index, teamId, ammoIndex) end

---@param index integer
---@param teamId any
---@param ammoIndex integer
---@return string
function GetWeaponTypeAmmoProjectileByIndex(index, teamId, ammoIndex) end

---@param index integer
---@param teamId any
---@param ammoIndex integer
---@return string
function GetWeaponTypeAmmoTagByIndex(index, teamId, ammoIndex) end

---@param saveName string
---@return any
function GetWeaponTypeFireCost(saveName) end

---@param saveName string
---@param teamId integer
---@return number
function GetWeaponTypeFireDelay(saveName, teamId) end

---@param saveName string
---@return number
function GetWeaponTypeProjectileSpeed(saveName) end

---@param saveName string
---@param teamId integer
---@return integer
function GetWeaponTypeRoundsEachBurst(saveName, teamId) end

---@param saveName string
---@param teamId integer
---@return number
function GetWeaponTypeRoundsPeriod(saveName, teamId) end

---@param id integer
---@return boolean
function IsCloaked(id) end

---@param deviceId integer
---@return boolean
function IsDeviceAvailable(deviceId) end

---@param deviceId integer
---@return boolean
function IsDeviceBeam(deviceId) end

---@param deviceId integer
---@return boolean
function IsDeviceFullyBuilt(deviceId) end

---@param deviceId integer
---@return boolean
function IsDeviceRepairable(deviceId) end

---@param saveName string
---@param teamId any
---@return boolean
function IsDeviceTypeAmmo(saveName, teamId) end

---@param saveName string
---@param sideId any
---@return boolean
function IsDeviceTypeAWeapon(saveName, sideId) end

---@param saveName string
---@param teamId any
---@return boolean
function IsDeviceTypeBeam(saveName, teamId) end

---@param saveName string
---@return boolean
function IsDeviceTypeWeapon(saveName) end

---@param deviceId integer
---@return boolean
function IsDeviceUnderConstruction(deviceId) end

---@param deviceId integer
---@return boolean
function IsDummy(deviceId) end

---@param deviceId integer
---@return boolean
function IsGroundDevice(deviceId) end

---@param deviceSaveName string
---@param sideId any
---@return boolean
function IsSpotter(deviceSaveName, sideId) end

---@param deviceId integer
---@return boolean
function IsWeapon(deviceId) end

---@param deviceId integer
---@return boolean
function IsWeaponReadyToFire(deviceId) end

---@param id integer
---@return boolean
function IsWeaponSpotting(id) end

---@param movingDeviceId integer
---@param nodeIdA integer
---@param nodeIdB integer
---@param t number
---@return integer
function MoveDevice(movingDeviceId, nodeIdA, nodeIdB, t) end

---@param movingDeviceId integer
---@param position Vector3D
---@param angle number
---@return integer
function MoveGroundDevice(movingDeviceId, position, angle) end

---@param weaponId integer
---@param pos1 Vector3D
---@param pos2 Vector3D
---@return integer
function NarrowVisibleAnglesBySegment(weaponId, pos1, pos2) end

---@param weaponId integer
---@param sideId integer
---@return integer
function NarrowVisibleAnglesBySide(weaponId, sideId) end

---@param deviceId integer
---@return nil
function ReloadWeapon(deviceId) end

---@param deviceId integer
---@return nil
function RepairDevice(deviceId) end

---@param deviceSaveName string
---@param teamId any
---@return boolean
function RequiresSpotter(deviceSaveName, teamId) end

---@param id integer
---@param duration number
---@return nil
function ReserveWeaponAim(id, duration) end

---@param deviceId integer
---@param angle number
---@return nil
function SetDeviceAngle(deviceId, angle) end

---@param saveName string
---@param sideId integer
---@param populationCap integer
---@return nil
function SetDevicePopulationCap(saveName, sideId, populationCap) end

---@param deviceId integer
---@param tag string
---@param enabled boolean
---@return nil
function SetWeaponEffectTag(deviceId, tag, enabled) end

---@param id integer
---@param target Vector3D
---@return nil
function SetWeaponPaintTarget(id, target) end

---@param id integer
---@param time number
---@return nil
function SetWeaponReloadTime(id, time) end

---@param deviceId integer
---@param tag string
---@return nil
function SetWeaponSelectedAmmo(deviceId, tag) end

---@param deviceId integer
---@param index integer
---@return nil
function SetWeaponSelectedAmmoMode(deviceId, index) end

---@param deviceId integer
---@param upgradeSaveName string
---@return integer
function UpgradeDevice(deviceId, upgradeSaveName) end

---@param sideId integer
---@param saveName string
---@param nodeName string
---@param effectPath string
---@param automatic boolean
---@return nil
function AddDeviceNodeEffect(sideId, saveName, nodeName, effectPath, automatic) end

---@param id integer
---@param duration number
---@return number
function AddToEffectLifeSpan(id, duration) end

---@param parent string
---@param name string
---@param effectId integer
---@return nil
function AttachEffectToControl(parent, name, effectId) end

---@param id integer
---@return nil
function CancelEffect(id) end

---@param sideId integer
---@param saveName string
---@param nodeName string
---@param automatic boolean
---@param actualTeam boolean
---@return nil
function ConfigureDeviceNodeEffect(sideId, saveName, nodeName, automatic, actualTeam) end

---@param id integer
---@return nil
function DisableEffect(id) end

---@param enable boolean
---@return nil
function EnableStartGameEffect(enable) end

---@param col Colour
---@param pulse boolean
---@return nil
function LightAll(col, pulse) end

---@param pause boolean
---@return nil
function MuteAllSounds(pause) end

---@param id integer
---@param direction Vector3D
---@return boolean
function SetEffectDirection(id, direction) end

---@param id integer
---@param position Vector3D
---@return boolean
function SetEffectPosition(id, position) end

---@param filename string
---@param pos Vector3D
---@return integer
function SpawnEffect(filename, pos) end

---@param filename string
---@param pos Vector3D
---@param dir Vector3D
---@return integer
function SpawnEffectEx(filename, pos, dir) end

---@param undefined any
---@return string
function GetEnvironmentPath(undefined) end

---@param undefined any
---@return string
function GetEnvironmentPathBase(undefined) end

---@param layerName string
---@param fadeAlpha number
---@param fadeTime number
---@return nil
function SetBackgroundLayerFade(layerName, fadeAlpha, fadeTime) end

---@param layerName string
---@param state string
---@param keepTime boolean
---@return nil
function SetBackgroundLayerSpriteState(layerName, state, keepTime) end

---@param filename string
---@param teamId integer
---@param instruction string
---@return nil
function ExecuteInScript(filename, teamId, instruction) end

---@param functionName string
---@param params string
---@param scriptName string
---@param toSelf boolean
---@return nil
function SendScriptEvent(functionName, params, scriptName, toSelf) end

---@param teamId integer
---@return nil
function AddForcedObserverFOW(teamId) end

---@param teamId integer
---@param enable boolean
---@return nil
function EnableFogOfWar(teamId, enable) end

---@param teamId integer
---@param enable boolean
---@return nil
function EnableFogOfWarShowArmour(teamId, enable) end

---@param ignore boolean
---@return nil
function FogOfWarIgnoreGameOver(ignore) end

---@param sideId integer
---@param visible boolean
---@return nil
function SetSideVisible(sideId, visible) end

---@param name string
---@param sprite string
---@param offsetX number
---@param offsetY number
---@param sizeX number
---@param sizeY number
---@return nil
function AddMouseAccessory(name, sprite, offsetX, offsetY, sizeX, sizeY) end

---@param name string
---@return nil
function DeleteMouseAccessory(name) end

---@param undefined any
---@return nil
function Deselect(undefined) end

---@param index integer
---@param memberIndex integer
---@return integer
function GetGroupMemberId(index, memberIndex) end

---@param index integer
---@return integer
function GetGroupSize(index) end

---@param undefined any
---@return boolean
function GetMouseAiming(undefined) end

---@param undefined any
---@return nil
function HideHUDOnRevert(undefined) end

---@param undefined any
---@return boolean
function IsFireAlarmOn(undefined) end

---@param name string
---@return nil
function OpenHUDTab(name) end

---@param saveName string
---@param dummy boolean
---@return nil
function SelectDeviceType(saveName, dummy) end

---@param teamId integer
---@return nil
function SetInspectedEnemyTeamId(teamId) end

---@param index integer
---@param enabled boolean
---@return nil
function SetReactorButtonEnabled(index, enabled) end

---@param teamId integer
---@param truceUIVisibility boolean
---@param warningEnabled boolean
---@return nil
function SetTruceUIVisible(teamId, truceUIVisibility, warningEnabled) end

---@param show boolean
---@return nil
function ShowBuildCostPreview(show) end

---@param show boolean
---@param instant boolean
---@return nil
function ShowHUD(show, instant) end

---@param name string
---@param show boolean
---@return nil
function ShowHUDTab(name, show) end

---@param show boolean
---@return nil
function ShowReactorBarPanel(show) end

---@param amount any
---@return nil
function ShowStolenResources(amount) end

---@param show boolean
---@return nil
function ShowTransactions(show) end

---@param undefined any
---@return nil
function CancelMoveToPoint(undefined) end

---@param enable boolean
---@return nil
function EnableCameraControls(enable) end

---@param enable boolean
---@return nil
function EnableCursor(enable) end

---@param name string
---@param enable boolean
---@return nil
function EnableKey(name, enable) end

---@param enable boolean
---@return nil
function EnableMouse(enable) end

---@param undefined any
---@return Vector3D
function GetMousePos(undefined) end

---@param undefined any
---@return nil
function LeftClickMouse(undefined) end

---@param lock boolean
---@return nil
function LockControls(lock) end

---@param undefined any
---@return nil
function MiddleClickMouse(undefined) end

---@param pos Vector3D
---@param duration number
---@return nil
function MoveMouseToPoint(pos, duration) end

---@param undefined any
---@return Vector3D
function ProcessedMousePos(undefined) end

---@param undefined any
---@return nil
function RightClickMouse(undefined) end

---@param source Vector3D
---@param target Vector3D
---@param terrainFlags integer
---@return integer
function CastGroundRay(source, target, terrainFlags) end

---@param id integer
---@param target Vector3D
---@param terrainFlags integer
---@return integer
function CastGroundRayFromWeapon(id, target, terrainFlags) end

---@param source Vector3D
---@param target Vector3D
---@param rayFlags integer
---@param fieldBlockFlags integer
---@return integer
function CastRay(source, target, rayFlags, fieldBlockFlags) end

---@param deviceId integer
---@param target Vector3D
---@param projectileHitPoints integer
---@param rayFlags integer
---@param fieldBlockFlags integer
---@return integer
function CastRayFromDevice(deviceId, target, projectileHitPoints, rayFlags, fieldBlockFlags) end

---@param undefined any
---@return integer
function GetRayHitDeviceId(undefined) end

---@param undefined any
---@return boolean
function GetRayHitDoor(undefined) end

---@param undefined any
---@return integer
function GetRayHitLinkNodeIdA(undefined) end

---@param undefined any
---@return integer
function GetRayHitLinkNodeIdB(undefined) end

---@param undefined any
---@return string
function GetRayHitMaterialSaveName(undefined) end

---@param undefined any
---@return Vector3D
function GetRayHitPosition(undefined) end

---@param undefined any
---@return integer
function GetRayHitSideId(undefined) end

---@param undefined any
---@return integer
function GetRayHitTeamId(undefined) end

---@param start Vector3D
---@param End Vector3D
---@param pt Vector3D
---@return Vector3D
function LineSegNearestToPoint(start, End, pt) end

---@param filename string
---@return nil
function AddStrings(filename) end

---@param undefined any
---@return string
function Language(undefined) end

---@param name string
---@return boolean
function StringExists(name) end

---@param nodeId integer
---@return nil
function DestroyProjectile(nodeId) end

---@param saveName string
---@param weaponSaveName string
---@param teamId integer
---@param position Vector3D
---@param velocity Vector3D
---@param lifespan number
---@return integer
function dlc2_CreateProjectile(saveName, weaponSaveName, teamId, position, velocity, lifespan) end

---@param nodeId integer
---@return Vector3D
function GetMissileTarget(nodeId) end

---@param nodeId integer
---@return Vector3D
function GetMissileTargetProjected(nodeId) end

---@param nodeId integer
---@return number
function GetNodeAge(nodeId) end

---@param nodeId integer
---@return number
function GetNodeProjectileAgeTrigger(nodeId) end

---@param nodeId integer
---@return number
function GetNodeProjectileDamage(nodeId) end

---@param nodeId integer
---@return string
function GetNodeProjectileSaveName(nodeId) end

---@param nodeId integer
---@return number
function GetNodeProjectileTimeRemaining(nodeId) end

---@param nodeId integer
---@return integer
function GetNodeProjectileType(nodeId) end

---@param saveName string
---@param teamId any
---@return number
function GetProjectileFieldRadius(saveName, teamId) end

---@param nodeId integer
---@return number
function GetProjectileGravity(nodeId) end

---@param sideId integer
---@param index integer
---@return integer
function GetProjectileId(sideId, index) end

---@param saveName string
---@param teamId any
---@param paramName string
---@param defaultValue boolean
---@return boolean
function GetProjectileParamBool(saveName, teamId, paramName, defaultValue) end

---@param index integer
---@param teamId any
---@param paramName string
---@param defaultValue boolean
---@return boolean
function GetProjectileParamBoolByIndex(index, teamId, paramName, defaultValue) end

---@param saveName string
---@param teamId integer
---@param paramName string
---@param defaultValue number
---@return number
function GetProjectileParamFloat(saveName, teamId, paramName, defaultValue) end

---@param saveName string
---@param teamId integer
---@param paramName string
---@param defaultValue integer
---@return integer
function GetProjectileParamInt(saveName, teamId, paramName, defaultValue) end

---@param index integer
---@param teamId integer
---@param paramName string
---@param defaultValue integer
---@return integer
function GetProjectileParamIntByIndex(index, teamId, paramName, defaultValue) end

---@param saveName string
---@param teamId integer
---@return any
function GetProjectileParams(saveName, teamId) end

---@param saveName string
---@param teamId integer
---@param paramName string
---@param defaultValue string
---@return string
function GetProjectileParamString(saveName, teamId, paramName, defaultValue) end

---@param index integer
---@param teamId integer
---@param paramName string
---@param defaultValue string
---@return string
function GetProjectileParamStringByIndex(index, teamId, paramName, defaultValue) end

---@param nodeId integer
---@return Vector3D
function GetProjectileTarget(nodeId) end

---@param teamId any
---@return integer
function GetProjectileTypeCount(teamId) end

---@param saveName string
---@param teamId any
---@return number
function GetProjectileTypeDrag(saveName, teamId) end

---@param saveName string
---@param teamId any
---@return number
function GetProjectileTypeGravity(saveName, teamId) end

---@param saveName string
---@param teamId integer
---@return integer
function GetProjectileTypeIndex(saveName, teamId) end

---@param index integer
---@param teamId any
---@return string
function GetProjectileTypeSaveNameByIndex(index, teamId) end

---@param index integer
---@param teamId integer
---@param nodeName string
---@return boolean
function HasProjectileParamNodeByIndex(index, teamId, nodeName) end

---@param nodeId integer
---@return boolean
function IsMissileAttacking(nodeId) end

---@param nodeId integer
---@return boolean
function IsNodeProjectile(nodeId) end

---@param sideId integer
---@return integer
function ProjectileCount(sideId) end

---@param nodeId integer
---@param target Vector3D
---@return nil
function SetMissileTarget(nodeId, target) end

---@param nodeId integer
---@param age number
---@return nil
function SetNodeProjectileAgeTrigger(nodeId, age) end

---@param undefined any
---@return integer
function GetPropCount(undefined) end

---@param propName string
---@return integer
function GetPropIndex(propName) end

---@param index integer
---@return string
function GetPropName(index) end

---@param index integer
---@return Vector3D
function GetPropPos(index) end

---@param propName string
---@return Vector3D
function GetPropPosByName(propName) end

---@param index integer
---@param type string
---@return boolean
function IsPropType(index, type) end

---@param index integer
---@param pos Vector3D
---@return nil
function SetPropPos(index, pos) end

---@param name string
---@param visible boolean
---@return nil
function ShowProp(name, visible) end

---@param std_dev number
---@param mean number
---@param desc string
---@return number
function GetNormalFloat(std_dev, mean, desc) end

---@param std_dev number
---@param mean number
---@return number
function GetNormalFloatLocal(std_dev, mean) end

---@param lower number
---@param upper number
---@param desc string
---@return number
function GetRandomFloat(lower, upper, desc) end

---@param lower number
---@param upper number
---@return number
function GetRandomFloatLocal(lower, upper) end

---@param lower integer
---@param upper integer
---@param desc string
---@return integer
function GetRandomInteger(lower, upper, desc) end

---@param lower integer
---@param upper integer
---@return integer
function GetRandomIntegerLocal(lower, upper) end

---@param teamId integer
---@param amount any
---@param hasPos boolean
---@param pos Vector3D
---@return nil
function AddResources(teamId, amount, hasPos, pos) end

---@param enable boolean
---@return nil
function EnableProduction(enable) end

---@param undefined any
---@return boolean
function GetProductionEnabled(undefined) end

---@param teamId integer
---@return any
function GetTeamResourceCapacity(teamId) end

---@param teamId integer
---@return any
function GetTeamResourceRate(teamId) end

---@param teamId integer
---@param unlimitedMetal boolean
---@param unlimitedEnergy boolean
---@return nil
function SetUnlimitedResources(teamId, unlimitedMetal, unlimitedEnergy) end

---@param teamIdFrom integer
---@param sideIdTo integer
---@param metal number
---@param energy number
---@return any
function TransferResources(teamIdFrom, sideIdTo, metal, energy) end

---@param undefined any
---@return nil
function ClearSimulation(undefined) end

---@param enable boolean
---@return nil
function EnablePhysics(enable) end

---@param undefined any
---@return nil
function EndReplay(undefined) end

---@param undefined any
---@return nil
function EnterGameOverMode(undefined) end

---@param side1Score number
---@param nextMap string
---@return nil
function Exit(side1Score, nextMap) end

---@param undefined any
---@return string
function GetGameMode(undefined) end

---@param undefined any
---@return string
function GetMapFilename(undefined) end

---@param undefined any
---@return boolean
function InReplay(undefined) end

---@param undefined any
---@return boolean
function IsPaused(undefined) end

---@param undefined any
---@return nil
function MakeUndoLevel(undefined) end

---@param modName string
---@return boolean
function ModActive(modName) end

---@param pause boolean
---@return nil
function Pause(pause) end

---@param winningTeamId integer
---@param silent boolean
---@return nil
function SetResult(winningTeamId, silent) end

---@param teamId integer
---@param trucePeriod number
---@return nil
function SetTrucePeriod(teamId, trucePeriod) end

---@param winningTeamId integer
---@return nil
function ShowResult(winningTeamId) end

---@param structureId integer
---@return nil
function AddPrimaryMidgroundRenderOrder(structureId) end

---@param nodeIdA integer
---@param nodeIdB integer
---@return nil
function CancelRepairLink(nodeIdA, nodeIdB) end

---@param undefined any
---@return nil
function ClearPrimaryMidgroundRenderOrder(undefined) end

---@param id integer
---@return nil
function CloseWeaponDoors(id) end

---@param teamId integer
---@param nodeIdA integer
---@param nodeIdB integer
---@param nodeIdADest integer
---@param nodeIdBDest integer
---@return integer
function ConnectPortals(teamId, nodeIdA, nodeIdB, nodeIdADest, nodeIdBDest) end

---@param teamId integer
---@param saveName string
---@param nodeIdA integer
---@param nodeIdB integer
---@return integer
function CreateLink(teamId, saveName, nodeIdA, nodeIdB) end

---@param teamId integer
---@param materialSaveName string
---@param linkedNodeIdA integer
---@param pos Vector3D
---@return integer
function CreateNode(teamId, materialSaveName, linkedNodeIdA, pos) end

---@param teamId integer
---@param nodeIdA integer
---@param nodeIdB integer
---@return nil
function DestroyLink(teamId, nodeIdA, nodeIdB) end

---@param teamId integer
---@param nodeId integer
---@return nil
function DestroyNode(teamId, nodeId) end

---@param nodeId integer
---@return nil
function DestroyStructure(nodeId) end

---@param nodeId integer
---@param force Vector3D
---@return nil
function dlc2_ApplyForce(nodeId, force) end

---@param structureId integer
---@param structureNodeId integer
---@param teamIdFrom integer
---@param teamIdTo integer
---@return nil
function dlc2_ConvertStructure(structureId, structureNodeId, teamIdFrom, teamIdTo) end

---@param saveName string
---@param enable boolean
---@param sideId integer
---@return nil
function EnableMaterial(saveName, enable, sideId) end

---@param nodeIdA integer
---@param nodeIdB integer
---@param callbackName string
---@return nil
function EnumerateChainNodes(nodeIdA, nodeIdB, callbackName) end

---@param teamId integer
---@param callbackName string
---@param damageThreshold number
---@param damageThresholdDevice number
---@param sourceDevice string
---@param matchSide boolean
---@return nil
function EnumerateLinks(teamId, callbackName, damageThreshold, damageThresholdDevice, sourceDevice, matchSide) end

---@param teamId integer
---@param structureId integer
---@param callbackName string
---@param matchSide boolean
---@return nil
function EnumerateStructureLinks(teamId, structureId, callbackName, matchSide) end

---@param pos Vector3D
---@param structureId integer
---@param farthest boolean
---@return integer
function FindNodeOnStructure(pos, structureId, farthest) end

---@param teamId integer
---@param position Vector3D
---@return integer
function GetClosestFoundationNodeId(teamId, position) end

---@param undefined any
---@return boolean
function GetCreateNodeGroundSnap(undefined) end

---@param undefined any
---@return string
function GetDefaultBackMaterial(undefined) end

---@param deviceId integer
---@return integer
function GetDeviceState(deviceId) end

---@param nodeIdA integer
---@param pos Vector3D
---@param materialSaveName string
---@param addFoundation boolean
---@return any
function GetLinkCost(nodeIdA, pos, materialSaveName, addFoundation) end

---@param teamId integer
---@return integer
function GetLinkCountOfSide(teamId) end

---@param teamId integer
---@return integer
function GetLinkCountOfTeam(teamId) end

---@param nodeIdA integer
---@param nodeIdB integer
---@return number
function GetLinkHealth(nodeIdA, nodeIdB) end

---@param length number
---@param materialSaveName string
---@param teamId integer
---@return any
function GetLinkLengthCost(length, materialSaveName, teamId) end

---@param nodeIdA integer
---@param nodeIdB integer
---@return string
function GetLinkMaterialSaveName(nodeIdA, nodeIdB) end

---@param nodeIdA integer
---@param nodeIdB integer
---@return any
function GetLinkRepairCost(nodeIdA, nodeIdB) end

---@param nodeIdA integer
---@param nodeIdB integer
---@return integer
function GetLinkSegmentsOnFire(nodeIdA, nodeIdB) end

---@param nodeIdA integer
---@param nodeIdB integer
---@return integer
function GetLinkState(nodeIdA, nodeIdB) end

---@param saveName string
---@param sideId integer
---@return boolean
function GetMaterialEnabled(saveName, sideId) end

---@param saveName string
---@param sideId integer
---@return number
function GetMaterialMaxLength(saveName, sideId) end

---@param saveName string
---@param sideId integer
---@return number
function GetMaterialMaxLinkLength(saveName, sideId) end

---@param saveName string
---@param sideId integer
---@return number
function GetMaterialMinLength(saveName, sideId) end

---@param nodeId integer
---@return integer
function GetNodeGroundBlockIndex(nodeId) end

---@param sideId integer
---@param index integer
---@return integer
function GetNodeId(sideId, index) end

---@param nodeIdA integer
---@param nodeIdB integer
---@return integer
function GetPortalDestinationA(nodeIdA, nodeIdB) end

---@param nodeIdA integer
---@param nodeIdB integer
---@return integer
function GetPortalDestinationB(nodeIdA, nodeIdB) end

---@param undefined any
---@return integer
function GetStructureCount(undefined) end

---@param index integer
---@return integer
function GetStructureId(index) end

---@param structureId integer
---@return boolean
function GetStructureInWater(structureId) end

---@param structureId integer
---@return boolean
function GetStructureOnLand(structureId) end

---@param structureId integer
---@return Vector3D
function GetStructurePos(structureId) end

---@param structureId integer
---@return number
function GetStructureRadius(structureId) end

---@param structureId integer
---@return integer
function GetStructureTeam(structureId) end

---@param teamId integer
---@return integer
function GetTeamLinksOnFire(teamId) end

---@param teamId integer
---@return number
function GetTeamMinLinkHealth(teamId) end

---@param nodeId integer
---@param ghost boolean
---@return nil
function GhostStructure(nodeId, ghost) end

---@param nodeIdA integer
---@param nodeIdB integer
---@param highlight boolean
---@return nil
function HighlightLink(nodeIdA, nodeIdB, highlight) end

---@param pos Vector3D
---@param radius number
---@param radiusHeated number
---@param teamId integer
---@return nil
function IgniteFire(pos, radius, radiusHeated, teamId) end

---@param saveName string
---@param teamId integer
---@return boolean
function IsDoor(saveName, teamId) end

---@param nodeId integer
---@return boolean
function IsFoundation(nodeId) end

---@param nodeIdA integer
---@param nodeIdB integer
---@return boolean
function IsLinkConductive(nodeIdA, nodeIdB) end

---@param nodeIdA integer
---@param nodeIdB integer
---@return boolean
function IsLinkRepairing(nodeIdA, nodeIdB) end

---@param nodeId integer
---@return boolean
function IsNodeDeleting(nodeId) end

---@param nodeA integer
---@param nodeB integer
---@return boolean
function IsNodeLinkedTo(nodeA, nodeB) end

---@param nodeId integer
---@return boolean
function IsNonFoundation(nodeId) end

---@param nodeIdA integer
---@param nodeIdB integer
---@return boolean
function IsPortal(nodeIdA, nodeIdB) end

---@param filename string
---@param clearSim boolean
---@param structurePaintedCallback integer
---@return nil
function LoadStructureFile(filename, clearSim, structurePaintedCallback) end

---@param saveName string
---@return boolean
function MaterialIsSegmented(saveName) end

---@param sideId integer
---@return integer
function NodeCount(sideId) end

---@param nodeId integer
---@return boolean
function NodeExists(nodeId) end

---@param nodeId integer
---@return integer
function NodeLinkCount(nodeId) end

---@param nodeId integer
---@param linkIndex integer
---@return integer
function NodeLinkedNodeId(nodeId, linkIndex) end

---@param nodeId integer
---@return integer
function NodeNonSegmentedLinkCount(nodeId) end

---@param nodeId integer
---@return Vector3D
function NodePosition(nodeId) end

---@param nodeId integer
---@return boolean
function NodeSelectable(nodeId) end

---@param nodeId integer
---@return integer
function NodeStructureId(nodeId) end

---@param nodeId integer
---@return integer
function NodeStructureIndex(nodeId) end

---@param nodeId integer
---@return integer
function NodeTeam(nodeId) end

---@param nodeId integer
---@return Vector3D
function NodeVelocity(nodeId) end

---@param nodeIdA integer
---@param nodeIdB integer
---@param open boolean
---@return nil
function OpenDoor(nodeIdA, nodeIdB, open) end

---@param id integer
---@return integer
function OpenWeaponDoors(id) end

---@param enable boolean
---@return nil
function RepairCancelsOnDamage(enable) end

---@param nodeIdA integer
---@param nodeIdB integer
---@return nil
function RepairLink(nodeIdA, nodeIdB) end

---@param nodeIdA integer
---@param nodeIdB integer
---@param newState integer
---@param instant boolean
---@return nil
function SetDoorState(nodeIdA, nodeIdB, newState, instant) end

---@param saveName string
---@return nil
function SetMaterialToCreate(saveName) end

---@param nodeId integer
---@param connectable boolean
---@return nil
function SetStructureConnectable(nodeId, connectable) end

---@param nodeId integer
---@param repulsive boolean
---@return nil
function SetStructureRepulsive(nodeId, repulsive) end

---@param pos Vector3D
---@param teamId integer
---@param maxDist number
---@return integer
function SnapToNode(pos, teamId, maxDist) end

---@param structureId integer
---@param index integer
---@return integer
function StructureNodeAtIndex(structureId, index) end

---@param teamId integer
---@param nodeIdA integer
---@param nodeIdB integer
---@return integer
function SwitchPortal(teamId, nodeIdA, nodeIdB) end

---@param index integer
---@return integer
function GetClientTeamId(index) end

---@param undefined any
---@return integer
function GetLocalClientIndex(undefined) end

---@param undefined any
---@return integer
function GetLocalTeamId(undefined) end

---@param undefined any
---@return integer
function GetTeamCount(undefined) end

---@param index integer
---@return integer
function GetTeamId(index) end

---@param teamId integer
---@return any
function GetTeamResources(teamId) end

---@param sideId integer
---@return boolean
function IsHumanOnSide(sideId) end

---@param teamId integer
---@param flag integer
---@param enable boolean
---@return nil
function SetTeamFlag(teamId, flag, enable) end

---@param blockIndex integer
---@param pos Vector3D
---@param edgeOverride integer
---@return integer
function AddBlockVertex(blockIndex, pos, edgeOverride) end

---@param undefined any
---@return nil
function ClearBlockSelection(undefined) end

---@param undefined any
---@return integer
function CreateBlock(undefined) end

---@param name string
---@param enable boolean
---@return nil
function EnableTerrainBlock(name, enable) end

---@param blockIndex integer
---@return nil
function FlipBlockNormals(blockIndex) end

---@param undefined any
---@return integer
function GetBlockCount(undefined) end

---@param blockIndex integer
---@return integer
function GetBlockOwner(blockIndex) end

---@param index integer
---@return integer
function GetBlockSelection(index) end

---@param undefined any
---@return integer
function GetBlockSelectionCount(undefined) end

---@param blockIndex integer
---@return integer
function GetBlockVertexCount(blockIndex) end

---@param blockIndex integer
---@param vertexIndex integer
---@return Vector3D
function GetBlockVertexPos(blockIndex, vertexIndex) end

---@param pos Vector3D
---@return integer
function GetPosGroundBlockIndex(pos) end

---@param surfaceName string
---@return integer
function GetSurfaceIndex(surfaceName) end

---@param surfaceType integer
---@return string
function GetSurfaceSaveName(surfaceType) end

---@param name string
---@return integer
function GetTerrainBlockIndex(name) end

---@param pos Vector3D
---@param blockIndex integer
---@return boolean
function IsPointInBlock(pos, blockIndex) end

---@param pos Vector3D
---@param teamId integer
---@return boolean
function IsPointOnGround(pos, teamId) end

---@param teamId integer
---@param blockIndex integer
---@return boolean
function IsTeamConnectedToGroundBlock(teamId, blockIndex) end

---@param blockIndex integer
---@param pivot Vector3D
---@return nil
function MirrorHorizontal(blockIndex, pivot) end

---@param blockIndex integer
---@param pivot Vector3D
---@return nil
function MirrorVertical(blockIndex, pivot) end

---@param blockIndex integer
---@return nil
function SelectBlock(blockIndex) end

---@param blockIndex integer
---@param flagsToSet integer
---@param value boolean
---@return nil
function SetBlockFlags(blockIndex, flagsToSet, value) end

---@param blockIndex integer
---@param teamId any
---@return nil
function SetBlockOwner(blockIndex, teamId) end

---@param blockIndex integer
---@param surfaceIndex integer
---@return nil
function SetBlockSurface(blockIndex, surfaceIndex) end

---@param blockIndex integer
---@param filename string
---@return nil
function SetBlockTexture(blockIndex, filename) end

---@param blockIndex integer
---@param vertexIndex integer
---@param pos Vector3D
---@return nil
function SetBlockVertexPos(blockIndex, vertexIndex, pos) end

---@param undefined any
---@return nil
function UpdateGroundTriangles(undefined) end

---@param enable boolean
---@return nil
function EnableLobbyAlerts(enable) end

---@param name string
---@param enable boolean
---@return nil
function EnableTip(name, enable) end

---@param enable boolean
---@return nil
function EnableTipDismissal(enable) end

---@param undefined any
---@return nil
function HideTip(undefined) end

---@param undefined any
---@return boolean
function IsTipVisible(undefined) end

---@param filename string
---@param stringId string
---@return boolean
function ShowTip(filename, stringId) end

---@param filename string
---@param stringId string
---@param checkboxId string
---@param forceCloseExisting boolean
---@return boolean
function ShowTipChecked(filename, stringId, checkboxId, forceCloseExisting) end

---@param undefined any
---@return boolean
function TipsEnabled(undefined) end

---@param parent string
---@param name string
---@param sprite string
---@param anchor integer
---@param size Vector3D
---@param pos Vector3D
---@param style string
---@return nil
function AddButtonControl(parent, name, sprite, anchor, size, pos, style) end

---@param sprite string
---@param name string
---@param row integer
---@param enabled boolean
---@param pressed boolean
---@return nil
function AddContextButton(sprite, name, row, enabled, pressed) end

---@param saveName string
---@param teamId integer
---@param pos Vector3D
---@param direction integer
---@return nil
function AddGhostDevice(saveName, teamId, pos, direction) end

---@param parent string
---@param name string
---@param text string
---@param minContentsHeight number
---@param maxContentsHeight number
---@return nil
function AddListItem(parent, name, text, minContentsHeight, maxContentsHeight) end

---@param parent string
---@param name string
---@param sprite string
---@param anchor integer
---@param size Vector3D
---@param pos Vector3D
---@param worldRelative boolean
---@return nil
function AddSpriteControl(parent, name, sprite, anchor, size, pos, worldRelative) end

---@param parent string
---@param name string
---@param text string
---@param anchor integer
---@param pos Vector3D
---@param worldRelative boolean
---@param style string
---@return nil
function AddTextButtonControl(parent, name, text, anchor, pos, worldRelative, style) end

---@param parent string
---@param name string
---@param text string
---@param anchor integer
---@param pos Vector3D
---@param worldRelative boolean
---@param style string
---@return nil
function AddTextControl(parent, name, text, anchor, pos, worldRelative, style) end

---@param parent string
---@param name string
---@param centerHoriz boolean
---@param centerVert boolean
---@return nil
function CenterControl(parent, name, centerHoriz, centerVert) end

---@param undefined any
---@return nil
function ClearGhostDevices(undefined) end

---@param parent string
---@param name string
---@param minContentsHeight number
---@return nil
function ClearListItems(parent, name, minContentsHeight) end

---@param parent string
---@param name string
---@return nil
function DeleteControl(parent, name) end

---@param enable boolean
---@return nil
function EnableExpandedHUD(enable) end

---@param enable boolean
---@return nil
function EnableGrid(enable) end

---@param enable boolean
---@return nil
function EnablePauseMenu(enable) end

---@param name string
---@param enable boolean
---@return nil
function EnablePauseMenuItem(name, enable) end

---@param parent string
---@param name string
---@return nil
function EndMovie(parent, name) end

---@param parent string
---@param name string
---@param recursive boolean
---@return nil
function EvaluateLayoutScript(parent, name, recursive) end

---@param parent string
---@return integer
function GetChildCount(parent) end

---@param parent string
---@param index integer
---@return string
function GetChildName(parent, index) end

---@param parent string
---@param name string
---@return Vector3D
function GetControlAbsolutePos(parent, name) end

---@param undefined any
---@return integer
function GetControlFrame(undefined) end

---@param parent string
---@param name string
---@return Vector3D
function GetControlRelativePos(parent, name) end

---@param parent string
---@param name string
---@return Vector3D
function GetControlSize(parent, name) end

---@param parent string
---@param name string
---@return string
function GetControlStyle(parent, name) end

---@param parent string
---@param name string
---@return number
function GetMovieProgress(parent, name) end

---@param parent string
---@param name string
---@return number
function GetMovieTime(parent, name) end

---@param undefined any
---@return boolean
function LetterboxVisible(undefined) end

---@param filename string
---@param parent string
---@return nil
function LoadControl(filename, parent) end

---@param parent string
---@param name string
---@param pause boolean
---@return nil
function PauseMovie(parent, name, pause) end

---@param parent string
---@param name string
---@param filename string
---@return nil
function PlayMovie(parent, name, filename) end

---@param parent string
---@param name string
---@param timesClockwise integer
---@return nil
function RotateSpriteControl(parent, name, timesClockwise) end

---@param parent string
---@param name string
---@param id integer
---@return nil
function SetButtonCallback(parent, name, id) end

---@param parent string
---@param name string
---@param pos Vector3D
---@return nil
function SetControlAbsolutePos(parent, name, pos) end

---@param parent string
---@param name string
---@param col Colour
---@return nil
function SetControlColour(parent, name, col) end

---@param frame integer
---@return nil
function SetControlFrame(frame) end

---@param parent string
---@param name string
---@param script string
---@return nil
function SetControlLayoutH(parent, name, script) end

---@param parent string
---@param name string
---@param script string
---@return nil
function SetControlLayoutW(parent, name, script) end

---@param parent string
---@param name string
---@param script string
---@return nil
function SetControlLayoutX(parent, name, script) end

---@param parent string
---@param name string
---@param script string
---@return nil
function SetControlLayoutY(parent, name, script) end

---@param parent string
---@param name string
---@param pos Vector3D
---@return nil
function SetControlRelativePos(parent, name, pos) end

---@param parent string
---@param name string
---@param size Vector3D
---@return nil
function SetControlSize(parent, name, size) end

---@param name string
---@param sprite string
---@return nil
function SetControlSprite(name, sprite) end

---@param parent string
---@param name string
---@param sprite string
---@return nil
function SetControlSpriteByParent(parent, name, sprite) end

---@param parent string
---@param name string
---@param style string
---@return nil
function SetControlStyle(parent, name, style) end

---@param parent string
---@param name string
---@param text string
---@return nil
function SetControlText(parent, name, text) end

---@param parent string
---@param name string
---@param text any
---@return nil
function SetControlTextW(parent, name, text) end

---@param r number
---@param g number
---@param b number
---@param a number
---@return nil
function SetCursorColour(r, g, b, a) end

---@param mode integer
---@param force boolean
---@return nil
function SetMouseCursor(mode, force) end

---@param parent string
---@param name string
---@param enable boolean
---@return nil
function SetSpriteAdditive(parent, name, enable) end

---@param parent string
---@param name string
---@param state string
---@return nil
function SetSpriteState(parent, name, state) end

---@param parent string
---@param name string
---@param wrap boolean
---@return nil
function SetWordWrap(parent, name, wrap) end

---@param parent string
---@param name string
---@param show boolean
---@return nil
function ShowControl(parent, name, show) end

---@param show boolean
---@return nil
function ShowLetterbox(show) end

---@param show boolean
---@return nil
function ShowWorld(show) end

---@param undefined any
---@return nil
function CancelCameraMove(undefined) end

---@param undefined any
---@return nil
function ClearViewExtents(undefined) end

---@param name string
---@return nil
function DeleteNamedScreen(name) end

---@param undefined any
---@return any
function GetCamera(undefined) end

---@param undefined any
---@return Vector3D
function GetCameraFocus(undefined) end

---@param undefined any
---@return number
function GetCameraZoom(undefined) end

---@param undefined any
---@return number
function GetMinZoom(undefined) end

---@param undefined any
---@return any
function GetWorldExtents(undefined) end

---@param worldPos Vector3D
---@param screenName string
---@return boolean
function IsPointVisible(worldPos, screenName) end

---@param name string
---@param duration number
---@param easePeriod number
---@param allowInterruption boolean
---@return nil
function RestoreScreen(name, duration, easePeriod, allowInterruption) end

---@param index integer
---@param duration number
---@return nil
function RestoreSystemScreen(index, duration) end

---@param pos Vector3D
---@return Vector3D
function ScreenToWorld(pos) end

---@param name string
---@param pos Vector3D
---@param height number
---@return nil
function SetNamedScreenByHeight(name, pos, height) end

---@param name string
---@param pos Vector3D
---@param zoom number
---@return nil
function SetNamedScreenByZoom(name, pos, zoom) end

---@param index integer
---@param name string
---@return nil
function SetSystemScreenFromName(index, name) end

---@param x number
---@return nil
function SetViewExtentLeft(x) end

---@param x number
---@return nil
function SetViewExtentRight(x) end

---@param name string
---@return nil
function SetViewExtentsByName(name) end

---@param name string
---@return nil
function SetViewExtentsByNameRaw(name) end

---@param pos Vector3D
---@return Vector3D
function WorldToScreen(pos) end

---@param pos Vector3D
---@return number
function GetWaterDepthAt(pos) end

---@param x number
---@return number
function GetWaterLevel(x) end

---@param seriesId integer
---@param fromReplay boolean
---@return nil
function OnStreamComplete(seriesId, fromReplay) end

---@param teamId integer
---@param deviceId integer
---@param saveName string
---@return nil
function OnDeviceCompleted(teamId, deviceId, saveName) end

---@param teamId integer
---@param deviceId integer
---@param saveName string
---@param nodeA integer
---@param nodeB integer
---@param t number
---@return nil
function OnDeviceConsumed(teamId, deviceId, saveName, nodeA, nodeB, t) end

---@param teamId integer
---@param deviceId integer
---@param saveName string
---@param nodeA integer
---@param nodeB integer
---@param t number
---@param upgradedId integer
---@return nil
function OnDeviceCreated(teamId, deviceId, saveName, nodeA, nodeB, t, upgradedId) end

---@param teamId integer
---@param deviceId integer
---@param saveName string
---@param nodeA integer
---@param nodeB integer
---@param t number
---@return nil
function OnDeviceDeleted(teamId, deviceId, saveName, nodeA, nodeB, t) end

---@param teamId integer
---@param deviceId integer
---@param saveName string
---@param nodeA integer
---@param nodeB integer
---@param t number
---@return nil
function OnDeviceDestroyed(teamId, deviceId, saveName, nodeA, nodeB, t) end

---@param teamId integer
---@param deviceId integer
---@param saveName string
---@param newHealth number
---@param projectileNodeId integer
---@param projectileTeamId integer
---@param pos Vector3D
---@param reflectedByEnemy boolean
---@return nil
function OnDeviceHit(teamId, deviceId, saveName, newHealth, projectileNodeId, projectileTeamId, pos, reflectedByEnemy) end

---@param teamId integer
---@param deviceId integer
---@param saveName string
---@param newHealth number
---@param weaponId integer
---@param projectileSaveName string
---@param pos Vector3D
---@return nil
function OnDeviceHitBeam(teamId, deviceId, saveName, newHealth, weaponId, projectileSaveName, pos) end

---@param teamId integer
---@param deviceId integer
---@param temporaryDeviceId integer
---@param saveName string
---@return nil
function OnDeviceMoved(teamId, deviceId, temporaryDeviceId, saveName) end

---@param saveName string
---@return nil
function OnDeviceSelected(saveName) end

---@param oldTeamId integer
---@param newTeamId integer
---@param deviceId integer
---@param saveName string
---@return nil
function OnDeviceTeamUpdated(oldTeamId, newTeamId, deviceId, saveName) end

---@param teamId integer
---@param deviceId integer
---@param saveName string
---@param pos Vector3D
---@param upgradedId integer
---@return nil
function OnGroundDeviceCreated(teamId, deviceId, saveName, pos, upgradedId) end

---@param saveName string
---@param weaponId integer
---@param reasonCode integer
---@return nil
function OnWeaponFireAttemptFail(saveName, weaponId, reasonCode) end

---@param teamId integer
---@param saveName string
---@param weaponId integer
---@param projectileNodeId integer
---@param projectileNodeIdFrom integer
---@return nil
function OnWeaponFired(teamId, saveName, weaponId, projectileNodeId, projectileNodeIdFrom) end

---@param teamId integer
---@param saveName string
---@param weaponId integer
---@return nil
function OnWeaponFiredEnd(teamId, saveName, weaponId) end

---@param teamId integer
---@param saveName string
---@param weaponId integer
---@return nil
function OnWeaponOverheated(teamId, saveName, weaponId) end

---@param teamId integer
---@param type integer
---@return nil
function OnBuildError(teamId, type) end

---@param script any
---@param name string
---@param deviceTeamId integer
---@param deviceId integer
---@param saveName string
---@return nil
function OnContextButtonDevice(script, name, deviceTeamId, deviceId, saveName) end

---@param script any
---@param name string
---@param teamId integer
---@param nodeA integer
---@param nodeB integer
---@param saveName string
---@return nil
function OnContextButtonStrut(script, name, teamId, nodeA, nodeB, saveName) end

---@param deviceTeamId integer
---@param deviceId integer
---@param saveName string
---@return nil
function OnContextMenuDevice(deviceTeamId, deviceId, saveName) end

---@param strutTeamId integer
---@param nodeA integer
---@param nodeB integer
---@param saveName string
---@return nil
function OnContextMenuStrut(strutTeamId, nodeA, nodeB, saveName) end

---@param teamId integer
---@param saveName string
---@param pos Vector3D
---@return nil
function OnDeviceCreateDisrupted(teamId, saveName, pos) end

---@param index integer
---@param masterDeviceId integer
---@param slaveDeviceId integer
---@return nil
function OnGroupAddition(index, masterDeviceId, slaveDeviceId) end

---@param index integer
---@param masterDeviceId integer
---@param cycle boolean
---@param fired integer
---@param count integer
---@return nil
function OnGroupFired(index, masterDeviceId, cycle, fired, count) end

---@param deviceId integer
---@return nil
function OnGroupMemberDeselected(deviceId) end

---@param deviceId integer
---@return nil
function OnGroupMemberSelected(deviceId) end

---@param teamId integer
---@param pos Vector3D
---@return nil
function OnStructureCreateDisrupted(teamId, pos) end

---@param name string
---@return nil
function OnTabOpened(name) end

---@param key string
---@param down boolean
---@return boolean
function OnKey(key, down) end

---@param nodeId integer
---@param saveName string
---@param pos Vector3D
---@param normal Vector3D
---@param hitType any
---@param hitTeamId integer
---@param hitSaveName string
---@return nil
function OnExecuteProjectileAction(nodeId, saveName, pos, normal, hitType, hitTeamId, hitSaveName) end

---@param nodeIdA integer
---@param nodeIdB integer
---@param objectId integer
---@param objectTeamId integer
---@param objectSaveName string
---@param damage number
---@param pos Vector3D
---@param reflectedByEnemy boolean
---@return nil
function OnLinkHit(nodeIdA, nodeIdB, objectId, objectTeamId, objectSaveName, damage, pos, reflectedByEnemy) end

---@param nodeIdA integer
---@param nodeIdB integer
---@param weaponId integer
---@param weaponTeamId integer
---@param projectileSaveName string
---@param damage number
---@param pos Vector3D
---@return nil
function OnLinkHitBeam(nodeIdA, nodeIdB, weaponId, weaponTeamId, projectileSaveName, damage, pos) end

---@param nodeA integer
---@param nodeB integer
---@param nodeADest integer
---@param nodeBDest integer
---@param objectTeamId integer
---@param objectId integer
---@param isBeam boolean
---@return nil
function OnPortalUsed(nodeA, nodeB, nodeADest, nodeBDest, objectTeamId, objectId, isBeam) end

---@param teamIdA integer
---@param nodeIdA integer
---@param saveNameA string
---@param teamIdB integer
---@param nodeIdB integer
---@param saveNameB string
---@return nil
function OnProjectileCollision(teamIdA, nodeIdA, saveNameA, teamIdB, nodeIdB, saveNameB) end

---@param nodeId integer
---@param teamId integer
---@param saveName string
---@param structureIdHit integer
---@param destroyType integer
---@return nil
function OnProjectileDestroyed(nodeId, teamId, saveName, structureIdHit, destroyType) end

---@param nodeId integer
---@param teamId integer
---@param decoyTeamId integer
---@param saveName string
---@param decoyNodeId integer
---@return nil
function OnProjectileRedirected(nodeId, teamId, decoyTeamId, saveName, decoyNodeId) end

---@param nodeA integer
---@param nodeB integer
---@param objectTeamId integer
---@param objectId integer
---@param isBeam boolean
---@return nil
function OnShieldReflection(nodeA, nodeB, objectTeamId, objectId, isBeam) end

---@param teamId integer
---@param deviceId integer
---@return nil
function OnTargetDisrupted(teamId, deviceId) end

---@param terrainId integer
---@param damage number
---@param projectileNodeId integer
---@param projectileSaveName string
---@param surfaceType integer
---@param pos Vector3D
---@param normal Vector3D
---@param reflectedByEnemy boolean
---@return nil
function OnTerrainHit(terrainId, damage, projectileNodeId, projectileSaveName, surfaceType, pos, normal, reflectedByEnemy) end

---@param terrainId integer
---@param damage number
---@param weaponId integer
---@param projectileSaveName string
---@param surfaceType integer
---@param pos Vector3D
---@param normal Vector3D
---@return nil
function OnTerrainHitBeam(terrainId, damage, weaponId, projectileSaveName, surfaceType, pos, normal) end

---@param index integer
---@return nil
function OnAchievement(index) end

---@param winningTeamId integer
---@param customCondition boolean
---@return nil
function OnGameResult(winningTeamId, customCondition) end

---@param undefined any
---@return nil
function OnShowResult(undefined) end

---@param defeatedTeamId integer
---@return nil
function OnTeamDefeated(defeatedTeamId) end

---@param teamId integer
---@param nodeA integer
---@param nodeB integer
---@param opening boolean
---@return nil
function OnDoorControl(teamId, nodeA, nodeB, opening) end

---@param teamId integer
---@param nodeA integer
---@param nodeB integer
---@param doorState integer
---@return nil
function OnDoorState(teamId, nodeA, nodeB, doorState) end

---@param teamId integer
---@param saveName string
---@param nodeA integer
---@param nodeB integer
---@param pos1 Vector3D
---@param pos2 Vector3D
---@param extrusion boolean
---@return nil
function OnLinkCreated(teamId, saveName, nodeA, nodeB, pos1, pos2, extrusion) end

---@param teamId integer
---@param saveName string
---@param nodeA integer
---@param nodeB integer
---@param breakType integer
---@return nil
function OnLinkDestroyed(teamId, saveName, nodeA, nodeB, breakType) end

---@param saveName string
---@return nil
function OnMaterialSelected(saveName) end

---@param nodeId integer
---@param nodeIdNew integer
---@return nil
function OnNodeBroken(nodeId, nodeIdNew) end

---@param nodeId integer
---@param teamId integer
---@param pos Vector3D
---@param foundation boolean
---@param selectable boolean
---@param extrusion boolean
---@return nil
function OnNodeCreated(nodeId, teamId, pos, foundation, selectable, extrusion) end

---@param nodeId integer
---@param selectable boolean
---@return nil
function OnNodeDestroyed(nodeId, selectable) end

---@param teamId integer
---@param pos Vector3D
---@param links integer
---@param fireSegments integer
---@param devices integer
---@return nil
function OnRepairArea(teamId, pos, links, fireSegments, devices) end

---@param teamId integer
---@param structureId integer
---@param firstNodeId integer
---@return nil
function OnStructurePainted(teamId, structureId, firstNodeId) end

---@param undefined any
---@return nil
function Cleanup(undefined) end

---@param gameStart boolean
---@return nil
function Load(gameStart) end

---@param undefined any
---@return nil
function OnExit(undefined) end

---@param undefined any
---@return nil
function OnInstantReplay(undefined) end

---@param undefined any
---@return nil
function OnNext(undefined) end

---@param undefined any
---@return nil
function OnPreRestart(undefined) end

---@param undefined any
---@return nil
function OnPreSeek(undefined) end

---@param undefined any
---@return nil
function OnRestart(undefined) end

---@param undefined any
---@return nil
function OnSeek(undefined) end

---@param undefined any
---@return nil
function OnSeekStart(undefined) end

---@param timeDelta number
---@return nil
function OnUpdate(timeDelta) end

---@param frame integer
---@return nil
function Update(frame) end

---@param name string
---@param enable boolean
---@return nil
function OnEnableTip(name, enable) end

---@param stringId string
---@param dismissed boolean
---@return nil
function OnTipHidden(stringId, dismissed) end

---@param missionScript any
---@return boolean
function DismissResult(missionScript) end

---@param name string
---@param code integer
---@param doubleClick boolean
---@return nil
function OnControlActivated(name, code, doubleClick) end

