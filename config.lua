Config = {}

Config.Keys = { -- Eng: Available keys  | Hun: Elérhető gombok
	["ESC"] = 322,
    ["F1"] = 288,
    ["F2"] = 289, 
    ["F3"] = 170, 
    ["F5"] = 166, 
    ["F6"] = 167, 
    ["F7"] = 168, 
    ["F8"] = 169, 
    ["F9"] = 56, 
    ["F10"] = 57,
	["~"] = 243, 
    ["1"] = 157, 
    ["2"] = 158, 
    ["3"] = 160, 
    ["4"] = 164, 
    ["5"] = 165, 
    ["6"] = 159, 
    ["7"] = 161, 
    ["8"] = 162, 
    ["9"] = 163, 
    ["-"] = 84, 
    ["="] = 83, 
    ["BACKSPACE"] = 177,
	["TAB"] = 37, 
    ["Q"] = 44, 
    ["W"] = 32, 
    ["E"] = 38, 
    ["R"] = 45, 
    ["T"] = 245, 
    ["Y"] = 246, 
    ["U"] = 303, 
    ["P"] = 199, 
    ["["] = 39, 
    ["]"] = 40, 
    ["ENTER"] = 18,
	["CAPS"] = 137, 
    ["A"] = 34, 
    ["S"] = 8, 
    ["D"] = 9, 
    ["F"] = 23, 
    ["G"] = 47, 
    ["H"] = 74, 
    ["K"] = 311, 
    ["L"] = 182,
	["LEFTSHIFT"] = 21, 
    ["Z"] = 20, 
    ["X"] = 73, 
    ["C"] = 26, 
    ["V"] = 0, 
    ["B"] = 29, 
    ["N"] = 249, 
    ["M"] = 244,
    [","] = 82, 
    ["."] = 81,
	["LEFTCTRL"] = 36, 
    ["LEFTALT"] = 19, 
    ["SPACE"] = 22, 
    ["RIGHTCTRL"] = 70,
	["HOME"] = 213, 
    ["PAGEUP"] = 10, 
    ["PAGEDOWN"] = 11, 
    ["DELETE"] = 178,
	["LEFT"] = 174, 
    ["RIGHT"] = 175, 
    ["TOP"] = 27, 
    ["DOWN"] = 173,
	["NENTER"] = 201, 
    ["N4"] = 108, 
    ["N5"] = 60, 
    ["N6"] = 107, 
    ["N+"] = 96, 
    ["N-"] = 97, 
    ["N7"] = 117, 
    ["N8"] = 61, 
    ["N9"] = 118
}

--[[Eng: You need to set it to your wish   [RGB-Size-Buttons-Type-Height] or leave it as it is :) 
    Hun: Be kell állítanod ahogy szeretnéd [RGB-Size-Buttons-Type-Height] vagy hagyd így ahogy van :)  ]]--

Config.Range = {
    [1] = {r=248,g=252,b=3, a=30, size=15.0}, -- Eng:range normal [RGB + alpha + size of circle (dia)] | Hun:távolság normál  [RGB + alpha + kör mérete]
    [2] = {r=3,g=252,b=28,  a=60, size=5.0},  -- Eng:range whisper[RGB + alpha + size of circle (dia)] | Hun:távolság suttogás[RGB + alpha + kör mérete]
    [3] = {r=252,g=40,b=3,  a=100,size=40.0}  -- Eng:range shout  [RGB + alpha + size of circle (dia)] | Hun:távolság kiáltás [RGB + alpha + kör mérete]
}

--Eng: Choose the same key as in TokoVoip/or Mumble [Range size button]!   | Hun: Állísd be ugyan arra amire a tokovoip/Mumble [range beállítása van]!
Config.FirstButton = Config.Keys["H"]               -- Eng: You can choose the first key to press  | Hun: Kiválaszthatod az első gombot 
Config.SecondButton = Config.Keys["LEFTSHIFT"]      -- Eng: You can choose the second key to press | Hun: Kiválaszthatod a második gombot

Config.Type = 1       -- Eng: Marker type 1or25 ideal                          | Hun: márker tipus 1 vagy 25 ideális
Config.Height = 0.8   -- Eng: Marker height distance between floor and midPed  | Hun: Márker magasság értéke a föld és a Ped távolsága
Config.ShowTime = 10  -- Eng: how long to show the marker (in sec)             | Hun: mennyi másodpercig mutassa a márkert