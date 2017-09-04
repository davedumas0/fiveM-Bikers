local options = {
    x = 0.11,
    y = 0.2,
    width = 0.22,
    height = 0.04,
    scale = 0.4,
    font = 0,
    menu_title = "~r~TBA ~b~menu",
    menu_subtitle = "Categories",
    color_r = 30,
    color_g = 144,
    color_b = 255,
}
---------------------------------
local options2 = {
    x2 = 0.5,
    y2 = 0.2,
    width2 = 0.22,
    height2 = 0.04,
    scale2 = 0.4,
    font2 = 0,
    menu_title2 = "~r~TBA ~b~menu",
    menu_subtitle2 = "Categories",
    color_r2 = 30,
    color_g2 = 144,
    color_b2 = 255,
}


Citizen.CreateThread(function()	
  while true do
     Citizen.Wait(0) 
	 playerPed = GetPlayerPed(PlayerId())
     playerCoords = GetEntityCoords(GetPlayerPed(PlayerId()), true)
	 playerCoordsX = playerCoords.x
	 playerCoordsY = playerCoords.y
	 playerCoordsZ = playerCoords.z
	 playerHeading = GetEntityHeading(GetPlayerPed(PlayerId()))
  end
end)


function Notify(text)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
    DrawNotification(false, false)
end

function drawTxt(x, y, width, height, scale, text, r, g, b, a, outline)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    if(outline)then
        SetTextOutline()
    end
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end
function drawTxt2(x2,y2 ,width2,height2,scale2, text2, r2,g2,b2,a2, outline2)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(scale2, scale2)
    SetTextColour(r2, g2, b2, a2)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    if(outline2)then
        SetTextOutline()
    end
    SetTextEntry("STRING")
    AddTextComponentString(text2)
    DrawText(x2 - width2/2, y2 - height2/2 + 0.005)
end

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 1, 1, -1)
end

function refreshInterior(interiorID)
 	EnableInteriorProp(interiorID,"lower_walls_default")
	EnableInteriorProp(interiorID,"Mural_02")
	EnableInteriorProp(interiorID,"Walls_01")
	EnableInteriorProp(interiorID,"Furnishings_01")
	EnableInteriorProp(interiorID,"Decorative_01")
    RefreshInterior(interiorID) 
end
function disableInteriorMurals(interiorID)
   for h = 0, 9 do 
 	DisableInteriorProp(interiorID, "Mural_0"..h)
    RefreshInterior(interiorID)
	 Citizen.Wait(20)
   end
end
function disableInteriorWalls(interiorID)
   for u = 0, 2 do 
 	DisableInteriorProp(interiorID, "Walls_0"..u)
    RefreshInterior(interiorID)
	 Citizen.Wait(20)
   end
end
function disableInteriorFurnishings(interiorID)
   for u = 0, 2 do 
 	DisableInteriorProp(interiorID, "Furnishings_0"..u)
    RefreshInterior(interiorID)
	 Citizen.Wait(20)
   end
end
function disableInteriorDecorative(interiorID)
   for u = 0, 2 do 
 	DisableInteriorProp(interiorID, "Decorative_0"..u)
    RefreshInterior(interiorID)
	 Citizen.Wait(20)
   end
end
function refreshInteriorCoke()
 	EnableInteriorProp(247809,"counterfeit_standard_equip_no_prod")
    EnableInteriorProp(247809,"counterfeit_upgrade_equip")
    EnableInteriorProp(247809,"counterfeit_security")
    EnableInteriorProp(247809,"dryera_off")
	EnableInteriorProp(247809,"dryerb_off")
	EnableInteriorProp(247809,"dryerc_on")
	EnableInteriorProp(247809,"dryerd_on")
    RefreshInterior(247809) 
end
function disableInteriorCoke()
 	DisableInteriorProp(247809,"counterfeit_standard_equip_no_prod")
    DisableInteriorProp(247809,"counterfeit_upgrade_equip")
    DisableInteriorProp(247809,"counterfeit_security")
    DisableInteriorProp(247809,"dryera_off")
	DisableInteriorProp(247809,"dryerb_off")
	DisableInteriorProp(247809,"dryerc_on")
	DisableInteriorProp(247809,"dryerd_on")
    RefreshInterior(247809) 
end

--[[*************************************************************]]
------------------------------------------------------------------
--------------------------main menu 2-----------------------------
------------------------------------------------------------------
--[[*************************************************************]]
--[[
function Main2()
    DisplayHelpText("Use ~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ to ~y~move~w~ and ~y~Enter~w~ to ~r~select")
    options2.menu_title2 = "~r~TESTING menu"
    options2.menu_subtitle2 = "~r~NATIVE TESTING ~b~menu 4" 
    ClearMenu2()
	Menu2.addButton2("~r~load counterfit", "refreshInterior", )
	Menu2.addButton2("~r~unload counterfit", "disableInterior", nil)	
	Menu2.addButton2("~r~load COKE", "refreshInteriorCoke", nil)
	Menu2.addButton2("~r~unload COKE", "disableInteriorCoke", nil)	
end
--]]
--[[*************************************************************]]
------------------------------------------------------------------
--------------------------main menu-------------------------------
------------------------------------------------------------------
--[[*************************************************************]]
function Main()
    markerLoop = false
    DisplayHelpText("Use ~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ to ~y~move~w~ and ~y~Enter~w~ to ~r~select")
	Notify("Press ~r~F5 ~w~to ~g~open~w~/~r~close~w~!")
    options.menu_title = "~r~TESTING menu"
    options.menu_subtitle = "~r~NATIVE TESTING ~b~menu 5"
    ClearMenu()
	Menu.addButton("~r~clubhouse decorations", "bikerClubhousInteriorDecorationsMenu", nil)

end
function bikerClubhousInteriorDecorationsMenu()
    DisplayHelpText("Use ~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ to ~y~move~w~ and ~y~Enter~w~ to ~r~select")
	Notify("Press ~r~F5 ~w~to ~g~open~w~/~r~close~w~!")
    options.menu_title = "~r~TESTING menu"
    options.menu_subtitle = "~r~NATIVE TESTING ~b~menu 5"
    ClearMenu()
	Menu.addButton("~g~murals", "bikerClubhousMuralsMenu", nil)
	Menu.addButton("~r~disable all mural props", "disableInteriorMurals", interiorID)
	Menu.addButton("~g~walls", "bikerClubhousWallsMenu", nil)
	Menu.addButton("~r~disable all wall props", "disableInteriorWalls", interiorID)
	Menu.addButton("~g~furnishings", "bikerClubhousfurnishingsMenu", nil)
	Menu.addButton("~r~disable all Furnishings props", "disableInteriorFurnishings", interiorID)	
	Menu.addButton("~g~Decoration", "bikerClubhouseDecorativeMenu", nil)
	Menu.addButton("~r~disable all Decoration props", "disableInteriorDecorative", interiorID)	
	Menu.addButton("~r~BACK TO MAIN MENU", "Main", nil)

end
function bikerClubhousMuralsMenu()
    DisplayHelpText("Use ~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ to ~y~move~w~ and ~y~Enter~w~ to ~r~select")
	Notify("Press ~r~F5 ~w~to ~g~open~w~/~r~close~w~!")
    options.menu_title = "~r~TESTING menu"
    options.menu_subtitle = "~r~NATIVE TESTING ~b~menu 5"
    ClearMenu()
	--Menu.addButton("~g~enable interior prop", "", nil)
	Menu.addButton("choose your mural", "clubhouseMural", nil)
	Menu.addButton("~r~disable all mural props", "disableInteriorMurals", interiorID)
	Menu.addButton("~r~BACK TO MAIN MENU", "Main", nil)	
end
function bikerClubhousWallsMenu()
    DisplayHelpText("Use ~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ to ~y~move~w~ and ~y~Enter~w~ to ~r~select")
	Notify("Press ~r~F5 ~w~to ~g~open~w~/~r~close~w~!")
    options.menu_title = "~r~TESTING menu"
    options.menu_subtitle = "~r~NATIVE TESTING ~b~menu 5"
    ClearMenu()
	--Menu.addButton("~g~enable interior prop", "", nil)
	Menu.addButton("choose your walls", "clubhouseWalls", nil)
	Menu.addButton("~r~disable all wall props", "disableInteriorWalls", interiorID)
	Menu.addButton("~r~BACK TO MAIN MENU", "Main", nil)    	
end
function bikerClubhousfurnishingsMenu()
    DisplayHelpText("Use ~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ to ~y~move~w~ and ~y~Enter~w~ to ~r~select")
	Notify("Press ~r~F5 ~w~to ~g~open~w~/~r~close~w~!")
    options.menu_title = "~r~TESTING menu"
    options.menu_subtitle = "~r~NATIVE TESTING ~b~menu 5"
    ClearMenu()
	--Menu.addButton("~g~enable interior prop", "", nil)
	Menu.addButton("choose your Furnishings", "clubhouseFurnishings", nil)
	Menu.addButton("~r~disable all Furnishings props", "disableInteriorFurnishings", interiorID)
	Menu.addButton("~r~BACK TO MAIN MENU", "Main", nil)    	
end
function bikerClubhouseDecorativeMenu()
    DisplayHelpText("Use ~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ to ~y~move~w~ and ~y~Enter~w~ to ~r~select")
	Notify("Press ~r~F5 ~w~to ~g~open~w~/~r~close~w~!")
    options.menu_title = "~r~TESTING menu"
    options.menu_subtitle = "~r~NATIVE TESTING ~b~menu 5"
    ClearMenu()
	--Menu.addButton("~g~enable interior prop", "", nil)
	Menu.addButton("choose your Decoration", "clubhouseDecorative", nil)
	Menu.addButton("~r~disable all Decoration props", "disableInteriorDecorative", interiorID)
	Menu.addButton("~r~BACK TO MAIN MENU", "Main", nil)    	
end
function clubhouseMural()
    options.menu_title = "~r~TESTING menu"
    options.menu_subtitle = "~r~NATIVE TESTING ~b~menu 5"
    ClearMenu()
	Menu.addButton("mural_01", "mural", 1)
	Menu.addButton("mural_02", "mural", 2)
	Menu.addButton("mural_03", "mural", 3)
	Menu.addButton("mural_04", "mural", 4)
	Menu.addButton("mural_05", "mural", 5)
	Menu.addButton("mural_06", "mural", 6)
	Menu.addButton("mural_07", "mural", 7)
	Menu.addButton("mural_08", "mural", 8)
	Menu.addButton("mural_09", "mural", 9)
	Menu.addButton("~r~BACK TO MAIN MENU", "Main", nil)	
end
function clubhouseWalls()
    options.menu_title = "~r~TESTING menu"
    options.menu_subtitle = "~r~NATIVE TESTING ~b~menu 5"
    ClearMenu()
	Menu.addButton("wall_01", "walls", 1)
	Menu.addButton("wall_02", "walls", 2)
	Menu.addButton("~r~BACK TO MAIN MENU", "Main", nil)	
end
function clubhouseFurnishings()
    options.menu_title = "~r~TESTING menu"
    options.menu_subtitle = "~r~NATIVE TESTING ~b~menu 5"
    ClearMenu()
	Menu.addButton("furnishings_01", "furnishings", 1)
	Menu.addButton("furnishings_02", "furnishings", 2)
	Menu.addButton("~r~BACK TO MAIN MENU", "Main", nil)	
end
function clubhouseDecorative()
    options.menu_title = "~r~TESTING menu"
    options.menu_subtitle = "~r~NATIVE TESTING ~b~menu 5"
    ClearMenu()
	Menu.addButton("Decorative_01", "decorative", 1)
	Menu.addButton("Decorative_02", "decorative", 2)
	Menu.addButton("~r~BACK TO MAIN MENU", "Main", nil)	
end
function mural(n)
 bikerClubhousInteriorDecorationsMenu()
 mural1 = "mural_0"..n
 EnableInteriorProp(interiorID, mural1)
 RefreshInterior(interiorID)
end
function walls(n)
 bikerClubhousInteriorDecorationsMenu()
 walls1 = "Walls_0"..n
 EnableInteriorProp(interiorID, walls1)
 RefreshInterior(interiorID)
end
function furnishings(o)
 bikerClubhousInteriorDecorationsMenu()
 furnishings1 = "Furnishings_0"..o
 EnableInteriorProp(interiorID, furnishings1)
 RefreshInterior(interiorID)
end
function decorative(nn)
 bikerClubhousInteriorDecorationsMenu()
 decorative1 = "Decorative_0"..nn
 EnableInteriorProp(interiorID, decorative1)
 RefreshInterior(interiorID)
end
function temp()
Notify(tostring(GetEntityCoords(GetPlayerPed(PlayerId()))))
end
function temp1()
Notify(GetInteriorFromEntity(GetPlayerPed(PlayerId())))
end
function temp2()
Notify(GetRoomKeyFromEntity(GetPlayerPed(PlayerId())))
end


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Press F5 to open/close menu
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)	
	interiorID = GetInteriorAtCoords(GetEntityCoords(GetPlayerPed(PlayerId()), true))	
            if IsControlJustReleased(1, 56) then -- INPUT_CELLPHONE_DOWN                      
   			 Main() -- Menu to draw
             Menu.hidden = not Menu.hidden -- Hide/Show the menu
            end
     Menu.renderGUI(options) -- Draw menu on each tick if Menu.hidden = fals
	end       
end)
------------------------------------------------------------------------------------------------------------
--------------------------while inside a warehouse----------------------------------------------------------
------------------------------------------------------------------------------------------------------------
--[[
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)	
            if GetInteriorFromEntity(GetPlayerPed(PlayerId())) == 247809 then -- INPUT_CELLPHONE_DOWN                      
   			 Main2() -- Menu to draw
             Menu2.hidden2 = false -- Hide/Show the menu
            else 
			 Menu2.hidden2 = true
			end
     Menu2.renderGUI2(options2) -- Draw menu on each tick if Menu.hidden = fals
	end       
end)
--]]
--------------------------------------------------------------------------------------
-------------------------------blips and markers--------------------------------------
--------------------------------------------------------------------------------------
Citizen.CreateThread(function()
 local temp2 = AddBlipForCoord(-1471.9132568359, -920.27752685547, 9.1242156982422)
    SetBlipSprite(temp2, 375)
    SetBlipAsShortRange(temp2, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Biker Clubhouse")
    EndTextCommandSetBlipName(temp2)
    while true do
      Citizen.Wait(0)
     DrawMarker(1, -1471.9132568359, -920.27752685547, 9.1242156982422, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 1.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	
    end
 end)
Citizen.CreateThread(function()
 local temp1 = AddBlipForCoord(-1147.5658203125, -1577.5626464844, 3.5033765792847)
    SetBlipSprite(temp1, 375)
    SetBlipAsShortRange(temp1, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Biker Clubhouse")
    EndTextCommandSetBlipName(temp1)
    while true do
      Citizen.Wait(0)
     DrawMarker(1, -1147.5658203125, -1577.5626464844, 3.5033765792847, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 1.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false )
    end
 end)
Citizen.CreateThread(function()
 local temp1 = AddBlipForCoord(1731.4437744141, 3707.8814453125, 33.00584487915)
    SetBlipSprite(temp1, 375)
    SetBlipAsShortRange(temp1, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Biker Clubhouse")
    EndTextCommandSetBlipName(temp1)
    while true do
      Citizen.Wait(0)
     DrawMarker(1, 1731.4437744141, 3707.8814453125, 33.00584487915, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 1.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false )
    end
 end)
Citizen.CreateThread(function()
 local temp1 = AddBlipForCoord(56.000817871094, -1045.69609375, 28.465732192993)
    SetBlipSprite(temp1, 375)
    SetBlipAsShortRange(temp1, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Biker Clubhouse")
    EndTextCommandSetBlipName(temp1)
    while true do
      Citizen.Wait(0)
     DrawMarker(1, 56.000817871094, -1045.69609375, 28.465732192993, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 1.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false )
    end
 end)
Citizen.CreateThread(function()
 local temp1 = AddBlipForCoord(-41.689205932617, 6417.0833007813, 30.590455627441)
    SetBlipSprite(temp1, 375)
    SetBlipAsShortRange(temp1, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Biker Clubhouse")
    EndTextCommandSetBlipName(temp1)
    while true do
      Citizen.Wait(0)
     DrawMarker(1, -41.689205932617, 6417.0833007813, 30.590455627441, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 1.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false )
    end
 end)
Citizen.CreateThread(function()
 local temp2 = AddBlipForCoord(2467.8368164063, 4100.8711914062, 36.864682006836)
    SetBlipSprite(temp2, 375)
    SetBlipAsShortRange(temp2, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Biker Clubhouse")
    EndTextCommandSetBlipName(temp2)
    while true do
      Citizen.Wait(0)
     DrawMarker(1, 2467.8368164063, 4100.8711914062, 36.864682006836, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 1.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false )
    end
 end)
Citizen.CreateThread(function()
 local temp2 = AddBlipForCoord(943.37563476563, -1458.60078125, 30.22310218811)
    SetBlipSprite(temp2, 375)
    SetBlipAsShortRange(temp2, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Biker Clubhouse")
    EndTextCommandSetBlipName(temp2)
    while true do
      Citizen.Wait(0)
     DrawMarker(1, 943.37563476563, -1458.60078125, 30.22310218811, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 1.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false )
    end
 end)
Citizen.CreateThread(function()
 local temp2 = AddBlipForCoord(178.11896972656, 308.55670166016, 104.47113952637)
    SetBlipSprite(temp2, 375)
    SetBlipAsShortRange(temp2, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Biker Clubhouse")
    EndTextCommandSetBlipName(temp2) 
    while true do
      Citizen.Wait(0)
     DrawMarker(1, 178.11896972656, 308.55670166016, 104.47113952637, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 1.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false )
    end
 end)
Citizen.CreateThread(function()
 local temp2 = AddBlipForCoord(-17.055588912964, -193.83917236328, 51.458997344971)
    SetBlipSprite(temp2, 375)
    SetBlipAsShortRange(temp2, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Biker Clubhouse")
    EndTextCommandSetBlipName(temp2) 
    while true do
      Citizen.Wait(0)
     DrawMarker(1, -17.055588912964, -193.83917236328, 51.458997344971, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 1.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false )
    end
 end)	 
Citizen.CreateThread(function()
 local temp2 = AddBlipForCoord(-253.168, -2586.399, 6.0)
    SetBlipSprite(temp2, 492)
    SetBlipAsShortRange(temp2, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("READY:Biker Clubhouse")
    EndTextCommandSetBlipName(temp2) 
    while true do
      Citizen.Wait(0)
     DrawMarker(1, -253.168, -2586.399, 6.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
     if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1), true), -253.168, -2586.399, 6.0) < 1.8 and IsControlPressed(0, 38) then 
      SetEntityCoords(GetPlayerPed(-1), 1118.870, -3196.687, -40.39)
	  RefreshInterior(252673)
     end	 
     if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1), true), 1118.870, -3193.370, -40.39) < 1.8 and IsControlPressed(0, 38) then 
      SetEntityCoords(GetPlayerPed(-1), -253.168, -2588.399, 6.0)
     end    
	end
 end)	 
Citizen.CreateThread(function()
 local temp2 = AddBlipForCoord(1008.0133, -1854.208, 31.039)
    SetBlipSprite(temp2, 492)
    SetBlipAsShortRange(temp2, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("READY:Biker Clubhouse")
    EndTextCommandSetBlipName(temp2) 
    while true do
      Citizen.Wait(0)
     DrawMarker(1, 1008.0133, -1854.208, 31.039, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
     if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1), true), 1008.0133, -1855.208, 31.039) < 1.5 and IsControlPressed(0, 38) 
	 then 
      SetEntityCoords(GetPlayerPed(-1), 975.368, -2998.64, -39.64)
     end
	 DrawMarker(1, 970.859, -2987.53, -40.84, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
     if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1), true), 970.859, -2987.53, -40.84) < 1.5 and IsControlPressed(0, 38) then  
       SetEntityCoords(GetPlayerPed(-1), 1010.0133, -1860.208, 31.039)
     end
	end
 end)
