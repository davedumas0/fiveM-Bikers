local bikerClubhouseCoords = {
  {n = 1, x=970.9596, y=-2987.45, z=-40.0}
}
Citizen.CreateThread(function()
    while true do		
	medVehWarehouse = AddBlipForCoord(1008.0133, -1854.208, 31.039)
    SetBlipSprite(medVehWarehouse, 350)
    SetBlipAsShortRange(medVehWarehouse, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Bunker")
    EndTextCommandSetBlipName(medVehWarehouse)	
     Citizen.Wait(0)
	DrawMarker(1, 970.9596, -2987.45, -40.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
     if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1), true), 970.9596, -2987.45, -40.0) < 1.8 and IsControlPressed(0, 38) then      
      SetEntityCoords(GetPlayerPed(-1), 1007.119, -1858.549, 30.889)
     end
	 
	DrawMarker(1, 1008.0133, -1854.208, 31.039, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
     if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1), true), 1008.0133, -1854.208, 31.039) < 1.8 and IsControlPressed(0, 38) then 
      SetEntityCoords(GetPlayerPed(-1), 971.368, -2992.64, -39.64)
     end
	DrawMarker(1, 1049.6, -3196.6, -38.5, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	DrawMarker(1, 1009.5, -3196.6, -38.5, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	DrawMarker(1, 1093.6, -3196.6, -38.5, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	DrawMarker(1, 1118.870, -3193.370, -40.39, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	DrawMarker(1, 1009.5, -3196.6, -38.5, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	DrawMarker(1, 1049.6, -3196.6, -38.5, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	DrawMarker(1, 1093.6, -3196.6, -38.5, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	DrawMarker(1, 1124.6, -3196.6, -38.5, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	DrawMarker(1, 1165.0, -3196.6, -38.2, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
     if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1), true), 1118.870, -3193.370, -40.39) < 1.8 and IsControlPressed(0, 38) then 
      SetEntityCoords(GetPlayerPed(-1), -253.168, -2588.399, 6.0)
     end
	 DrawMarker(1, -253.168, -2586.399, 6.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
     if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1), true), -253.168, -2586.399, 6.0) < 1.8 and IsControlPressed(0, 38) then 
      SetEntityCoords(GetPlayerPed(-1), 1118.870, -3196.687, -40.39)
	  EnableInteriorProp(252673,"Branded_style_set")
	  RefreshInterior(252673)
     end	 
	DrawMarker(1, 1165, -3196.6, -38.2, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
	DrawMarker(1, 938.3077, -3196.112, -100.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.5, 2.5, 2.5, 2.5, 200, 233, 0, 150, 0, 0, 2, 0, 0, 0, false)
end
end)
    LoadInterior(252417)
    --DisableInteriorProp(252673,"Basic_style_set")
	EnableInteriorProp(252673,"Branded_style_set")
	EnableInteriorProp(247809,"meth_lab_basic")

    RefreshInterior(252673)
	RefreshInterior(252417)
	RefreshInterior(247809)
	
