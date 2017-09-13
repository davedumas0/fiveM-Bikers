local options = {
    x = 0.11,
    y = 0.2,
    width = 0.22,
    height = 0.04,
    scale = 0.4,
    font = 0,
    menu_title = "~y~interiors ~b~menu",
    menu_subtitle = "interiors",
    color_r = 30,
    color_g = 250,
    color_b = 12,
}
---------------------------------
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

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 1, 1, -1)
end


--[[*************************************************************]]
------------------------------------------------------------------
--------------------------main menu-------------------------------
------------------------------------------------------------------
--[[*************************************************************]]



function Main()
    textureget = Citizen.InvokeNative(0x9BAE5AD2508DF078, 1)
	david = NetworkSessionHost(585, 2, false)
    markerLoop = false
    DisplayHelpText("Use ~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ to ~y~move~w~ and ~y~Enter~w~ to ~r~select")
	Notify("Press ~r~F5 ~w~to ~g~open~w~/~r~close~w~!")
    options.menu_title = "~r~TESTING menu"
    options.menu_subtitle = "~r~NATIVE TESTING ~g~menu 5"
    ClearMenu()
	Menu.addButton("~r~TBA", "Notify", "this does ~r~nothing")
end


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Press F5 to open/close menu
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)	
	interiorID = GetInteriorAtCoords(GetEntityCoords(GetPlayerPed(PlayerId()), true))
    interiorRoomKey = GetRoomKeyFromEntity(GetPlayerPed(PlayerId()))	
            if IsControlJustReleased(1, 56) then -- INPUT_CELLPHONE_DOWN                      
   			 Main() -- Menu to draw
             Menu.hidden = not Menu.hidden -- Hide/Show the menu
            end
     Menu.renderGUI(options) -- Draw menu on each tick if Menu.hidden = fals
	end       
end)

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
