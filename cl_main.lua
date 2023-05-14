local Weapons = { 
    "WEAPON_SNIPERRIFLE", 
    "WEAPON_HEAVYSNIPER", 
    "WEAPON_MARKSMANRIFLE", 
    "WEAPON_MARKSMANRIFLE_MK2", 
    "WEAPON_RPG", 
    "WEAPON_GRENADELAUNCHER", 
    "WEAPON_GRENADELAUNCHER_SMOKE", 
    "WEAPON_MINIGUN", 
    "WEAPON_RAILGUN", 
    "WEAPON_HOMINGLAUNCHER", 
    "WEAPON_COMPACTLAUNCHER", 
    "WEAPON_RAYMINIGUN", 
    "WEAPON_GRENADE", 
    "WEAPON_BZGAS", 
    "WEAPON_MOLOTOV", 
    "WEAPON_STICKYBOMB", 
    "WEAPON_PROXMINE", 
    "WEAPON_PIPEBOMB", 
    "WEAPON_SMOKEGRENADE", 
    "WEAPON_ROCKET", 
    "WEAPON_EXPLOSION",
    "WEAPON_FLARE",
    "WEAPON_STINGER",
    "WEAPON_MUSKET",
    "WEAPON_MILITARYRIFLE",
    "WEAPON_MG",
    "WEAPON_COMBATMG",
    "WEAPON_COMBATMG_MK2",
    "WEAPON_SMG_MK2",
    "WEAPON_PISTOL_MK2",
    "WEAPON_SNIPERRIFLE_MK2", 
    "WEAPON_HEAVYSNIPER_MK2",
    "WEAPON_PISTOL50",
    "WEAPON_SMG",
    "WEAPON_SPECIALCARBINE",
    "WEAPON_SPECIALCARBINE_MK2",
    "WEAPON_ASSAULTRIFLE",
    "WEAPON_ASSAULTRIFLE_MK2",
    "WEAPON_GUSENBERG",
    "WEAPON_HEAVYPISTOL",
    "WEAPON_MARKSMANRIFLE",
    "WEAPON_MARKSMANRIFLE_MK2",
    "WEAPON_MACHINEPISTOL",
    "WEAPON_PISTOL",
    "WEAPON_COMBATPISTOL",
    "WEAPON_KNUCKLE",
    "WEAPON_FLASHLIGHT",
    "WEAPON_COMPACTRIFLE",
    "WEAPON_ASSAULTSMG",
    "WEAPON_DBSHOTGUN",
    "WEAPON_VINTAGEPISTOL",
}

CreateThread(function()
    while true do
        local WeaponCount = 0
        local Ped = PlayerPedId()
        if Ped == nil then return end
        for i = 1, #Weapons do
            local Hash = GetHashKey(Weapons[i])
            if HasPedGotWeapon(Ped, Hash, false) then
                WeaponCount = WeaponCount + 1
            end
        end
        if WeaponCount > 0 then
            TriggerServerEvent("h_loadout:server:loadoutcheck",WeaponCount)
        end
        Wait(30000)
    end
end)