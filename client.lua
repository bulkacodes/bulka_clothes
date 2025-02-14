local function playClothingAnimation(lib, anim, duration, loop)
    RequestAnimDict(lib)
    while not HasAnimDictLoaded(lib) do
        Citizen.Wait(10)
    end
    TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, 3.0, duration, loop, 0, 0, 0, 0)
end

exports('wearClothing', function(data, clothingData)
    if not clothingData or not Config.ClothingAnimations[clothingData.name] then
        return
    end

    playClothingAnimation(Config.ClothingAnimations[clothingData.name].lib, Config.ClothingAnimations[clothingData.name].anim, Config.ClothingAnimations[clothingData.name].duration, Config.ClothingAnimations[clothingData.name].loop)

    TriggerEvent('skinchanger:getSkin', function(skin)
        TriggerEvent('skinchanger:loadClothes', skin, clothingData.metadata)
        TriggerServerEvent('bulka_clothes:remove', clothingData.name, clothingData.slot, clothingData.metadata)
    end)
end)

exports('removeClothing', function(clothingType)
    if not Config.Clothes[clothingType] then
        return
    end

    TriggerEvent("skinchanger:getSkin", function(skinData)
        local shouldSkip = false

        for k, v in pairs(Config.Clothes[clothingType].default) do
            if string.find(tostring(k), "_1") and skinData[k] == v then
                shouldSkip = true
                break
            end
        end

        if not shouldSkip then
            Wait(200)
            TriggerEvent('skinchanger:loadClothes', skinData, Config.Clothes[clothingType].default)

            local clothingToRestore = {}
            for k, v in pairs(Config.Clothes[clothingType].clothes) do
                if v then
                    clothingToRestore[k] = skinData[k]
                end
            end

            playClothingAnimation(Config.ClothingAnimations[clothingType].lib, Config.ClothingAnimations[clothingType].anim, Config.ClothingAnimations[clothingType].duration, Config.ClothingAnimations[clothingType].loop)
            TriggerServerEvent('bulka_clothes:add', clothingToRestore, clothingType)
        end
    end)
end)

CreateThread(function()
    for clothingType, _ in pairs(Config.Clothes) do
        RegisterCommand(clothingType, function()
            exports['bulka_clothes']:removeClothing(clothingType)
        end, false)
    end
end)