RegisterServerEvent('bulka_clothes:add')
AddEventHandler('bulka_clothes:add', function(data, Wear)
    if Config.Clothes[Wear] then 
        exports.ox_inventory:AddItem(source, Wear, 1, data)
    else
        print("Invalid clothing: " .. Wear)
    end
end)

RegisterServerEvent('bulka_clothes:remove')
AddEventHandler('bulka_clothes:remove', function(item, data, slot)
    if Config.Clothes[item] then
        exports.ox_inventory:RemoveItem(source, item, 1, nil, slot)
    else
        print("Invalid clothing: " .. item)
    end
end)