--[[
_________________________________________________________________________________________________________________________
   ______   ____     ____     _   __   _____    __    ___   __  __   _____     __ __    ____    ____    ____    ____ 
  / ____/  / __ \   / __ \   / | / /  |__  /   / /   <  /  / / / /  / ___/  __/ // /_  / __ \  / __ \  / __ \  / __ \
 / /      / / / /  / /_/ /  /  |/ /    /_ <   / /    / /  / / / /   \__ \  /_  _  __/ / /_/ / / /_/ / / /_/ / / /_/ /
/ /___   / /_/ /  / _, _/  / /|  /   ___/ /  / /___ / /  / /_/ /   ___/ / /_  _  __/  \__, /  \__, /  \__, /  \__, / 
\____/   \____/  /_/ |_|  /_/ |_/   /____/  /_____//_/   \____/   /____/   /_//_/    /____/  /____/  /____/  /____/  
_______________________________________________________________________________________________________________________                                                                                                                                                                                              
]]--

emote = false

Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(1, 74) then
            if emote == false then
                 loadAnimDict("amb@world_human_hang_out_street@male_c@base")
                 TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_hang_out_street@male_c@base", "base", -1, -1, -1, 50, 0, false, false, false)
                emote = true
            else 
                ClearPedTasks(GetPlayerPed(-1))
                emote = false
            end
        end
    end
end)

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(5)
    end
end




