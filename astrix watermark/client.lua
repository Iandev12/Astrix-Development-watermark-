--- hello Code veiwer this is a simple watermark script for FiveM
--- you can customize the text, position, scale, and RGB speed below
--- Enjoy! - Astrix Development | Also you can add any text you want! 

local WatermarkText = "Astrix Development| discord.gg/Astrixdev" -- Your watermark text here
local X = 0.5        -- Center
local Y = 0.01       -- Top of screen
local Scale = 0.45
local RGBSpeed = 2.0 -- Lower = slower, Higher = faster

CreateThread(function()
    while true do
        Wait(0)

        local r, g, b = RGBRainbow(RGBSpeed)
        DrawTxt(
            WatermarkText,
            X,
            Y,
            Scale,
            r, g, b, 255
        )
    end
end)

-- RGB color cycle
function RGBRainbow(speed)
    local time = GetGameTimer() / 1000
    local r = math.floor(math.sin(time * speed + 0) * 127 + 128)
    local g = math.floor(math.sin(time * speed + 2) * 127 + 128)
    local b = math.floor(math.sin(time * speed + 4) * 127 + 128)
    return r, g, b
end

-- 🖊 Text draw function
function DrawTxt(text, x, y, scale, r, g, b, a)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)

    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()

    SetTextCentre(true)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(x, y)
end
-- ================================