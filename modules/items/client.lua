if not lib then return end

local Items = require 'modules.items.shared' --[[@as table<string, OxClientItem>]]

local function sendDisplayMetadata(data)
    SendNUIMessage({
		action = 'displayMetadata',
		data = data
	})
end

--- use array of single key value pairs to dictate order
---@param metadata string | table<string, string> | table<string, string>[]
---@param value? string
local function displayMetadata(metadata, value)
	local data = {}

	if type(metadata) == 'string' then
        if not value then return end

        data = { { metadata = metadata, value = value } }
	elseif table.type(metadata) == 'array' then
		for i = 1, #metadata do
			for k, v in pairs(metadata[i]) do
				data[i] = {
					metadata = k,
					value = v,
				}
			end
		end
	else
		for k, v in pairs(metadata) do
			data[#data + 1] = {
				metadata = k,
				value = v,
			}
		end
	end

    if client.uiLoaded then
        return sendDisplayMetadata(data)
    end

    CreateThread(function()
        repeat Wait(100) until client.uiLoaded

        sendDisplayMetadata(data)
    end)
end

exports('displayMetadata', displayMetadata)

---@param _ table?
---@param name string?
---@return table?
local function getItem(_, name)
    if not name then return Items end

	if type(name) ~= 'string' then return end

    name = name:lower()

    if name:sub(0, 7) == 'weapon_' then
        name = name:upper()
    end

    return Items[name]
end

setmetatable(Items --[[@as table]], {
	__call = getItem
})

---@cast Items +fun(itemName: string): OxClientItem
---@cast Items +fun(): table<string, OxClientItem>

local function Item(name, cb)
	local item = Items[name]
	if item then
		if not item.client?.export and not item.client?.event then
			item.effect = cb
		end
	end
end

local ox_inventory = exports[shared.resource]
-----------------------------------------------------------------------------------------------
-- Clientside item use functions
-----------------------------------------------------------------------------------------------

Item('bandage', function(data, slot)
    local maxHealth = GetEntityMaxHealth(cache.ped)
    local health = GetEntityHealth(cache.ped)
    ox_inventory:useItem(data, function(data)
        if data then
            SetEntityHealth(cache.ped, math.min(maxHealth, math.floor(health + maxHealth / 16)))
            lib.notify({description = 'You feel better already'})
        end
    end)
end)

Item('pepper_spray', function(data, slot)
    ox_inventory:useItem(data, function(data)
        if data then
        TriggerEvent("pepperspray:Togglepepperspray", PlayerData.id)
        end
    end)
end)

Item('armour', function(data, slot)
    if GetPedArmour(cache.ped) < 100 then
        ox_inventory:useItem(data, function(data)
            if data then
                SetPlayerMaxArmour(PlayerData.id, 100)
                SetPedArmour(cache.ped, 100)
            end
        end)
    end
end)



client.parachute = false
Item('parachute', function(data, slot)
    if not client.parachute then
        ox_inventory:useItem(data, function(data)
            if data then
                local chute = GADGET_PARACHUTE
                SetPlayerParachuteTintIndex(PlayerData.id, -1)
                GiveWeaponToPed(cache.ped, GetHashKey("GADGET_PARACHUTE"), 150, true, true)
                SetPedGadget(cache.ped, chute, true)
                lib.requestModel(1269906701)
                client.parachute = CreateParachuteBagObject(cache.ped, true,
                                                            true)
                if slot.metadata.type then
                    SetPlayerParachuteTintIndex(PlayerData.id,
                                                slot.metadata.type)
                end
            end
        end)
    end
end)

Item('phone', function(data, slot)
    local success, result = pcall(function()
        return exports.npwd:isPhoneVisible()
    end)

    if success then exports.npwd:setPhoneVisible(not result) end
end)
-- svutrne edite
Item('masque', function(data, slot)
    ox_inventory:useItem(data, function(data)
        if data then
            SetPedComponentVariation(PlayerPedId(), 1, 175, 0, 2)
            lib.notify({description = 'Prêt à affronter les RedZones'})
        end
    end)
end)

Item('carkey', function(data, slot)
    ox_inventory:useItem(data, function(data)
        if data then TriggerEvent('ff_carkey:send', data) end
    end)
end)

Item('work_light', function(data, slot)
    ox_inventory:useItem(data, function(data)
        if data then TriggerEvent("svturne:spawn_light", data.metadata.durability) end
    end)
end)

Item('photo', function(data, slot)
    ox_inventory:useItem(data, function(data)
        if data then
            TriggerEvent('LF_camera:client:use-photo', slot.metadata.photourl)
        end
    end)
end)

Item('feuille', function(data, slot)
    ox_inventory:useItem(data, function(data)
        if data then
            TriggerEvent('LF_camera:client:use-photo', slot.metadata.photourl)
        end
    end)
end)

Item('roller', function(data, slot)
    ox_inventory:useItem(data, function(data)
        if data then TriggerEvent('LF_roller:client:useroller') end
    end)
end)

Item('bmx', function(data, slot)
    ox_inventory:useItem(data, function(data)
        if data then
            local x, y, z = table.unpack(
                                GetOffsetFromEntityInWorldCoords(PlayerPedId(),
                                                                 0.0, 1.0, 0.5))
            local veh = 'bmx'
            if veh == nil then veh = "cruiser" end
            vehiclehash = GetHashKey(veh)
            RequestModel(vehiclehash)
            Citizen.CreateThread(function()
                local waiting = 0
                while not HasModelLoaded(vehiclehash) do
                    waiting = waiting + 100
                    Citizen.Wait(100)
                    if waiting > 5000 then
                        ShowNotification("~r~bug item bmx.")
                        break
                    end
                end
                CreateVehicle(vehiclehash, x, y, z,
                              GetEntityHeading(PlayerPedId()) + 90, 1, 0)
            end)
        end
    end)
end)

Item('doliprane', function(data, slot)
    ox_inventory:useItem(data, function(data)
        if data then
            TriggerEvent("esx_doencas:getHealedComp", PlayerPedId())
            TriggerEvent('esx_status:add', 'maladie', 250000)
        end
    end)
end)

Item('jumelles', function(data, slot)
    if data then TriggerEvent('jumelles:Active', PlayerPedId()) end
end)

Item('torch', function(data, slot)
    ox_inventory:useItem(data, function(data)
        if data then ExecuteCommand('e ftorch') end
    end)
end)

Item('oxygenmask', function(data, slot)
    local usingOxygenMask = false
    ox_inventory:useItem(data, function(data)
        if data then
            local maskoff = exports['fivem-appearance']:getPedComponents(PlayerPedId())
            SetPedComponentVariation(PlayerPedId(), 1, 175, 0, 2)
            SetPedComponentVariation(PlayerPedId(), 8, 123, 0, 0)
            usingOxygenMask = true
            if lib.progressCircle({
                duration = 60000,
                label = 'Capacité de la bouteille de gaz',
                position = 'bottom',
                useWhileDead = false,
                canCancel = false,
            }) then 
                usingOxygenMask = false
                exports['fivem-appearance']:setPedComponents(PlayerPedId(),maskoff)
             end
        end
    end)
end)

-----------------------------------------------------------------------------------------------

exports('Items', function(item) return getItem(nil, item) end)
exports('ItemList', function(item) return getItem(nil, item) end)

return Items
