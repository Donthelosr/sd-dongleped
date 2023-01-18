local QBCore = exports["qb-core"]:GetCoreObject()

RegisterNetEvent('sd-dongle:server:buyshit', function(ped)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not src or not Player or not ped then return end
    local cash = Player.PlayerData.money[Config.Shop[ped].type]

    if cash >= Config.Shop[ped].price then
        Player.Functions.RemoveMoney(Config.Shop[ped].type, Config.Shop[ped].price, "dongleped")
        Player.Functions.RemoveItem("cryptostick", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["cryptostick"], "remove")

        Player.Functions.AddItem(Config.Shop[ped].item, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Shop[ped].item], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'Not enough '..Config.Shop[ped].type, 'error')
    end
end)
