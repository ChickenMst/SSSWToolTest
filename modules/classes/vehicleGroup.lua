modules.classes.vehicleGroup = {} -- table of vehicle functions

---@param group_id number|string
---@param owner Player|nil
---@param spawnTime number|nil
---@param loaded boolean|nil
---@return VehicleGroup
function modules.classes.vehicleGroup:create(group_id, owner, spawnTime, loaded)
    ---@class VehicleGroup
    local vehicleGroup = {
        group_id = tostring(group_id),
        vehicles = {}, ---@type Vehicle[]
        owner = owner,
        spawnTime = spawnTime or server.getTimeMillisec(),
        onDespawn = modules.libraries.event:create(),
        onLoaded = modules.libraries.event:create(),
        isLoaded = loaded or false,
    }

    function vehicleGroup:despawned(is_instant)
        self.onDespawn:fire(self)
    end

    function vehicleGroup:loaded()
        self.isLoaded = true
        self.onLoaded:fire(self)
    end

    function vehicleGroup:setOwner(newowner)
        self.owner = newowner
    end

    function vehicleGroup:addVehicle(vehicle)
        if not self.vehicles[vehicle.id] then
            self.vehicles[vehicle.id] = vehicle
        end
    end

    return vehicleGroup
end