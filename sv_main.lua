ESX = nil TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("h_loadout:server:loadoutcheck")
AddEventHandler("h_loadout:server:loadoutcheck",function(WeaponCount)
    local xPlayer = ESX.GetPlayerFromId(source)
    if WeaponCount > #xPlayer.loadout then 
        TriggerEvent('EasyAdmin:banPlayer', source, 'h_loadout dedected modded loadout!')-- EasyAdmin ban event
        DropPlayer(source, 'h_loadout dedected modded loadout!')
        return
    end
end)