ESX.RegisterUsableItem('tyrekit', function(source)
    local source <const> = source
    local xPlayer <const> = ESX.GetPlayerFromId(source)
    ESX.TriggerClientCallback(source , "esx_mechanicjob:client:checkForVehicle", function(closeVehicle)
        if not closeVehicle then return end
        xPlayer.removeInventoryItem('tyrekit', 1)

        TriggerClientEvent('esx_mechanicjob:client:useTireKit', source)
    end)
end)