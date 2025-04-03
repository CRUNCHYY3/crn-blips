local QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent('crn-blips:log', function(message)
    print(message)
end)


QBCore.Functions.CreateCallback('customblips:getBlips', function(source, cb)
    cb(Config.Blips)
end)