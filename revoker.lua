local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

local entity = Creator.createEntity({
    CustomName = "Revoker",

    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/Revoker-Hotel-/main/REVOKER.rbxm",

    Speed = 50,
    DelayTime = 3,
    HeightOffset = 0,

    CanKill = true,
    KillRange = 40,

    BreakLights = true,
    BackwardsMovement = true,

    FlickerLights = {
        true,
        1,
    },

    -- FIXED
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },

    CamShake = {
        true,
        {4, 30, 0.2, 1},
        100,
    },

    Jumpscare = {
        true,

        {
            Image1 = "rbxassetid://134465741285519",
            Image2 = "rbxassetid://134465741285519",

            Shake = true,

            Sound1 = {
                10483790459,
                {
                    Volume = 0.5
                },
            },

            Sound2 = {
                10483837590,
                {
                    Volume = 0.5
                },
            },

            Flashing = {
                true,
                Color3.fromRGB(255, 255, 255),
            },

            Tease = {
                false,
                Min = 4,
                Max = 4,
            },
        },
    },

    CustomDialog = {
        "You died to Revoker...",
    },
})

entity.Debug.OnEntitySpawned = function(entityTable)
    print("Revoker has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Revoker has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Revoker has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Revoker has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Revoker has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at Revoker:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died to Revoker.")
end

Creator.runEntity(entity)
