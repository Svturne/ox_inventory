if not lib then return end

local Utils = {}

function Utils.PlayAnim(wait, dict, name, blendIn, blendOut, duration, flag, rate, lockX, lockY, lockZ)
	lib.requestAnimDict(dict)
	TaskPlayAnim(cache.ped, dict, name, blendIn, blendOut, duration, flag, rate, lockX, lockY, lockZ)
	RemoveAnimDict(dict)

	if wait > 0 then Wait(wait) end
end

function Utils.PlayAnimAdvanced(wait, dict, name, posX, posY, posZ, rotX, rotY, rotZ, blendIn, blendOut, duration, flag, time)
	lib.requestAnimDict(dict)
	TaskPlayAnimAdvanced(cache.ped, dict, name, posX, posY, posZ, rotX, rotY, rotZ, blendIn, blendOut, duration, flag, time, 0, 0)
	RemoveAnimDict(dict)

	if wait > 0 then Wait(wait) end
end

---@param flag number
---@param destination? vector3
---@param size? number
---@return number | false
---@return number?
function Utils.Raycast(flag, destination, size)
	local playerCoords = GetEntityCoords(cache.ped)
	destination = destination or GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 2.2, -0.25)
	local rayHandle = StartShapeTestCapsule(playerCoords.x, playerCoords.y, playerCoords.z + 0.5, destination.x, destination.y, destination.z, size or 2.2, flag or 30, cache.ped, 4)
	while true do
		Wait(0)
		local result, _, coords, _, entityHit = GetShapeTestResult(rayHandle)
		if result ~= 1 then
            -- DrawLine(playerCoords.x, playerCoords.y, playerCoords.z + 0.5, destination.x, destination.y, destination.z, 0, 0, 255, 255)
            -- DrawLine(playerCoords.x, playerCoords.y, playerCoords.z + 0.5, coords.x, coords.y, coords.z, 255, 0, 0, 255)
			local entityType
			if entityHit then entityType = GetEntityType(entityHit) end
			if entityHit and entityType ~= 0 then
				return entityHit, entityType
			end
			return false
		end
	end
end

function Utils.GetClosestPlayer()
	local players = GetActivePlayers()
	local playerCoords = GetEntityCoords(cache.ped)
	local targetDistance, targetId, targetPed

	for i = 1, #players do
		local player = players[i]

		if player ~= cache.playerId then
			local ped = GetPlayerPed(player)
			local distance = #(playerCoords - GetEntityCoords(ped))

			if distance < (targetDistance or 2) then
				targetDistance = distance
				targetId = player
				targetPed = ped
			end
		end
	end

	return targetId, targetPed
end

-- Replace ox_inventory notify with ox_lib (backwards compatibility)
function Utils.Notify(data)
	data.description = data.text
	data.text = nil
	lib.notify(data)
end

RegisterNetEvent('ox_inventory:notify', Utils.Notify)
exports('notify', Utils.Notify)

function Utils.ItemNotify(data)
	if not client.itemnotify then
		return
	end

	SendNUIMessage({action = 'itemNotify', data = data})
end

RegisterNetEvent('ox_inventory:itemNotify', Utils.ItemNotify)

---@deprecated
function Utils.DeleteObject(obj)
	SetEntityAsMissionEntity(obj, false, true)
	DeleteObject(obj)
end

function Utils.DeleteEntity(entity)
	if DoesEntityExist(entity) then
		SetEntityAsMissionEntity(entity, false, true)
		DeleteEntity(entity)
	end
end

local rewardTypes = 1 << 0 | 1 << 1 | 1 << 2 | 1 << 3 | 1 << 7 | 1 << 10

-- Enables the weapon wheel, but disables the use of inventory items
-- Mostly used for weaponised vehicles, though could be called for "minigames"
function Utils.WeaponWheel(state)
	if state == nil then state = EnableWeaponWheel end

	EnableWeaponWheel = state
	SetWeaponsNoAutoswap(not state)
	SetWeaponsNoAutoreload(not state)

	if client.suppresspickups then
		-- CLEAR_PICKUP_REWARD_TYPE_SUPPRESSION | SUPPRESS_PICKUP_REWARD_TYPE
		return state and N_0x762db2d380b48d04(rewardTypes) or N_0xf92099527db8e2a7(rewardTypes, true)
	end
end

exports('weaponWheel', Utils.WeaponWheel)

function Utils.CreateBlip(settings, coords)
	local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
	SetBlipSprite(blip, settings.id)
	SetBlipDisplay(blip, 4)
	SetBlipScale(blip, settings.scale)
	SetBlipColour(blip, settings.colour)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName(settings.name)
	EndTextCommandSetBlipName(blip)

	return blip
end

local function detectClosestPedToMouse()
    local plyPed = PlayerPedId()
    closestPed = nil
    while isSelectingActive do
        Citizen.Wait(200)
        local plyPos = GetEntityCoords(plyPed) 
        local xClosestDistance = 5.0
        local yClosestDistance = 5.0
        for k, currentPed in pairs(GetGamePool('CPed')) do
            if IsPedAPlayer(currentPed) and currentPed ~= plyPed then
                local currentPedCoords = GetPedBoneCoords(currentPed, 24818, 0.0, 0.0, 0.0)
                local distance = GetDistanceBetweenCoords(currentPedCoords, plyPos, true)
                if distance < 6 then
                    local _, screenX, screenY = GetScreenCoordFromWorldCoord(currentPedCoords.x, currentPedCoords.y, currentPedCoords.z)
                    if screenX > 0 and screenY > 0 then
                        local mouseX, mouseY = GetNuiCursorPosition()
                        local screenWidth, screenHeight = GetActiveScreenResolution()
                        if (mouseX <= screenWidth and mouseY <= screenHeight) then
                            mouseX = mouseX/screenWidth
                            mouseY = mouseY/screenHeight
                            local xScreenDistance = math.abs(mouseX-screenX)
                            local yScreenDistance = math.abs(mouseY-screenY)
                            if xScreenDistance < 0.03 and yScreenDistance < 0.1 then
                                if xClosestDistance > xScreenDistance and yClosestDistance > yScreenDistance then
                                    xClosestDistance = xScreenDistance
                                    yClosestDistance = yScreenDistance
                                    closestPed = currentPed
                                end
                            else
                                if currentPed == closestPed then
                                    closestPed = nil
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

function Utils.getMousePlayer(cb)
    if (isSelectingActive) then return end
    isSelectingActive = true
    Citizen.CreateThread(detectClosestPedToMouse)
    Citizen.CreateThread(function() 
        SetNuiFocus(false, true)
        SetCursorLocation(0.5, 0.5)
        AddTextEntry('billing_ui_select_player', 'Utilisez la souris pour choisir un joueur\n~INPUT_REPLAY_TOGGLE_TIMELINE~ pour annuler')
        while isSelectingActive do
            DisplayHelpTextThisFrame('billing_ui_select_player', false)
            if (closestPed) then
                local pedCoords = GetPedBoneCoords(closestPed, 24817, 0.0, 0.0, 0.0)
                DrawMarker(21, pedCoords.x, pedCoords.y, (pedCoords.z + 1.0), 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 0.3, 0.3, 0.3, 101, 12, 12, 100, true, true, 2, false, nil, nil, false)
                if IsControlJustReleased(0, 24) then
                    local targetPlayer = NetworkGetPlayerIndexFromPed(closestPed)
                    isSelectingActive = false
					SetNuiFocus(false, false)
					cb(targetPlayer, (#(GetEntityCoords(PlayerPedId()) - GetEntityCoords(closestPed))))
                end
            end
            if IsDisabledControlJustReleased(0, 200) then
				isSelectingActive = false
				SetNuiFocus(false, false)
				cb(false, false)
            end
            DisableControlAction(0, 25, true)
            DisableControlAction(0, 263, true)
            DisableControlAction(0, 140, true)
            DisableControlAction(0, 141, true)
            DisableControlAction(0, 142, true)
            DisableControlAction(0, 143, true)
            DisableControlAction(0, 200, true)
            Citizen.Wait(0)
        end
        closestPed = nil
    end)
end

exports('getMousePlayer', Utils.getMousePlayer)

return Utils
