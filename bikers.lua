local bikerClubhouseCoords = {
  {n = 1, x=970.9596, y=-2987.45, z=-40.0}
}


Citizen.CreateThread(function()
    local temp32 = AddBlipForCoord(416.7524, 6520.753, 26.7121)
	SetBlipSprite(temp32, 66)
	SetBlipColour(temp32, 1)
	SetBlipAsShortRange(temp32, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("~r~UNKNOWN")
    EndTextCommandSetBlipName(temp32)

    local temp33 = AddBlipForCoord(52.903, 6338.585, 30.35)
	SetBlipSprite(temp33, 66)
	SetBlipColour(temp33, 1)	
	SetBlipAsShortRange(temp33, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("~r~UNKNOWN")
    EndTextCommandSetBlipName(temp33)

    local temp34 = AddBlipForCoord(2847.011, 4449.605, 47.5172)
	SetBlipSprite(temp34, 66)
	SetBlipColour(temp34, 1)	
	SetBlipAsShortRange(temp34, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("~r~UNKNOWN")
    EndTextCommandSetBlipName(temp34)
	
    local temp35 = AddBlipForCoord(1009.5, -3196.6, -38.5)
	SetBlipSprite(temp35, 66)
	SetBlipColour(temp35, 2)	
	SetBlipAsShortRange(temp35, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("~r~UNKNOWN")
    EndTextCommandSetBlipName(temp35)
    local temp36 = AddBlipForCoord(-413.6606, 6171.938, 30.4782)
	SetBlipSprite(temp36, 66)
	SetBlipColour(temp36, 1)	
	SetBlipAsShortRange(temp36, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("~r~UNKNOWN")
    EndTextCommandSetBlipName(temp36)
    local temp37 = AddBlipForCoord(-163.6828, 6334.845, 30.5808)
	SetBlipSprite(temp37, 66)
	SetBlipColour(temp37, 1)	
	SetBlipAsShortRange(temp37, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("~r~UNKNOWN")
    EndTextCommandSetBlipName(temp37)
    local temp38 = AddBlipForCoord(1123.681, -3149.095, -36.6809)
	SetBlipSprite(temp38, 348)
	SetBlipColour(temp38, 5)	
	SetBlipAsShortRange(temp38, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("clubhouse interior")
    EndTextCommandSetBlipName(temp38)
    local temp39 = AddBlipForCoord(1002.922, -3167.122, -33.7201)
	SetBlipSprite(temp39, 348)
	SetBlipColour(temp39, 5)	
	SetBlipAsShortRange(temp39, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("clubhouse interior")
    EndTextCommandSetBlipName(temp39)	
    local temp40 = AddBlipForCoord(345.8695, -1003.079, -99.1045)
	SetBlipSprite(temp40, 348)
	SetBlipColour(temp40, 5)	
	SetBlipAsShortRange(temp40, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("clubhouse interior")
    EndTextCommandSetBlipName(temp40)	
	
    while true do			
     Citizen.Wait(0)
	DrawMarker(1, 416.7524, 6520.753, 26.7121, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	
	DrawMarker(1, 52.903, 6338.585, 30.35, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	
	DrawMarker(1, 2832.682, 4445.754, 47.6294, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	
	DrawMarker(1, 1009.5, -3196.6, -38.5, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	
	DrawMarker(1, -413.6606, 6171.938, 30.4782, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	
	DrawMarker(1, -163.6828, 6334.845, 30.5808, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	
	DrawMarker(1, 1123.681, -3149.095, -36.6809, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	
	DrawMarker(1, 1002.922, -3167.122, -33.7201, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	
	DrawMarker(1, 345.8695, -1003.079, -99.1045, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)

	
	DrawMarker(1, 1093.6, -3196.6, -38.5, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	DrawMarker(1, 1118.870, -3193.370, -40.39, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	DrawMarker(1, 1049.6, -3196.6, -38.5, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	DrawMarker(1, 1093.6, -3196.6, -38.5, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	DrawMarker(1, 1165.0, -3196.6, -38.2, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)	 
	DrawMarker(1, 938.3077, -3196.112, -100.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
end
end)
    LoadInterior(252417)
    --DisableInteriorProp(252673,"Basic_style_set")
    RefreshInterior(252673)
	RefreshInterior(252417)
	RefreshInterior(247809)
	
