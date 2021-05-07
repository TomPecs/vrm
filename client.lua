local current = 0
local markerOn,first,markerTimer,markerWhile = false,false,0,0

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5)
        
        if IsControlJustPressed(0, Config.FirstButton) and IsControlPressed(0, Config.SecondButton) then
            first = false
            markerSwitch()
            if current == 0 then
                voiceS = 1
                current = 1
            elseif current == 1 then
                voiceS = 2
                current = 2
            elseif current == 2 then
                voiceS = 3
                current = 0
            end
        end
        if markerOn then
            coords = GetEntityCoords(PlayerPedId())
            Marker(Config.Type, coords.x, coords.y, coords.z, voiceS)
        end
    end
end)

function markerSwitch()
    if not first then 
        first = true
        markerOn = true
        Citizen.CreateThread(function()
            markerTimer= Config.ShowTime
            markerWhile = markerWhile + 1
            while markerTimer > 0 do
                if markerWhile == 2 then
                    break
                end
                Citizen.Wait(1000)
                markerTimer = markerTimer - 1
            end
            if markerWhile == 1 then
                markerOn = false
                markerWhile = 0
            else
                markerWhile = 1
            end
        end)
    end
end

function Marker(type, x, y, z, num)
    DrawMarker(type, x, y, z - Config.Height, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, Config.Range[num].size, Config.Range[num].size, 2.0, Config.Range[num].r, Config.Range[num].g, Config.Range[num].b, Config.Range[num].a, false, true, 2, nil, nil, false)
end