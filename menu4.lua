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

function drawTxt(x,y ,width,height,scale, text, r,g,b,a, outline)
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
    interiorID = GetInteriorAtCoords(GetEntityCoords(GetPlayerPed(PlayerId()), true))
	roomKey = GetRoomKeyFromEntity(GetPlayerPed(PlayerId()))
    markerLoop = false
    DisplayHelpText("Use ~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ to ~y~move~w~ and ~y~Enter~w~ to ~r~select")
	Notify("Press ~r~F5 ~w~to ~g~open~w~/~r~close~w~!")
    options.menu_title = "~r~TESTING menu"
    options.menu_subtitle = "~r~NATIVE TESTING ~b~menu 4"
    ClearMenu()
    Menu.addButton("~r~TEST 1 ~b~menu", "temp", nil)
    Menu.addButton("~r~TEST 2 ~b~menu", "temp1", nil)
    Menu.addButton("~r~TEST 3 ~b~menu", "temp2", nil)	
end

function temp()
d = NetworkSessionChangeSlots(6, false)
Notify(tostring(d))
end
function temp1()
t = ParticipantId()--Citizen.InvokeNative(0x99B72C7ABDE5C910)
Notify("~r~whats this")
Notify(tostring(t))
end
function temp2()
 for i = 0, 25 do
  if DoesEntityExist(GetPlayerPed(i)) and not PlayerId() == i then
    player2ID = i
   if DoesEntityExist(GetPlayerPed(i)) and not PlayerId() == player2ID then
    player3ID = i
   end
 end
 end
q = Citizen.InvokeNative(0x1153FA02A659051C)
Notify("~y~whats this")
Notify(tostring(q))
Notify(tostring(PlayerId()))
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Press F5 to open/close menu
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)	
                    if IsControlJustReleased(1, 56) then -- INPUT_CELLPHONE_DOWN
                       

   					    Main() -- Menu to draw
                        Menu.hidden = not Menu.hidden -- Hide/Show the menu
                    end
                    Menu.renderGUI(options) -- Draw menu on each tick if Menu.hidden = false
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
