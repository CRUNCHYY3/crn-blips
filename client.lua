local QBCore = exports['qb-core']:GetCoreObject()


local function LogToServer(message)
    TriggerServerEvent('crn-blips:log', message)
end


local resourceName = GetCurrentResourceName()
if resourceName ~= "crn-blips" then
    LogToServer("Please revert the folder name to 'crn-blips' for the script to function properly.")
    return
end

LogToServer("^4crn-blips: Client script loaded successfully!^7")

local function CreateBlips()
    for _, blip in pairs(Config.Blips) do
        local blipHandle = AddBlipForCoord(blip.coords.x, blip.coords.y, blip.coords.z)
        SetBlipSprite(blipHandle, blip.sprite)
        SetBlipDisplay(blipHandle, 4)
        SetBlipScale(blipHandle, blip.scale)
        SetBlipColour(blipHandle, blip.color)
        SetBlipAsShortRange(blipHandle, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(blip.name)
        EndTextCommandSetBlipName(blipHandle)
    end
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    CreateBlips()
end)

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        CreateBlips()
    end
end)