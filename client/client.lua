TriggerEvent('CubixLife:getCubixSharedLifeObject', function(obj) CubixLife = obj end)

RegisterNetEvent('CubixLife_restartblackout:start')
AddEventHandler('CubixLife_restartblackout:start', function()
    SetWeatherTypeOvertimePersist("RAIN", 10000)
	CubixLife.ShowNotification('~r~Unwetterwarnung:~n~~w~Ein Sturm zieht über Los Santos auf.')
	Citizen.Wait(190000)
	SetWeatherTypeOvertimePersist("THUNDER", 10000)	
	CubixLife.ShowNotification('~r~Unwetterwarnung:~n~~w~Die Sturmlage verschlechtert sich! Passen Sie auf sich auf.')
	Citizen.Wait(190000)
	SetArtificialLightsState(true)
    SetArtificialLightsStateAffectsVehicles(false)
	Citizen.Wait(1000)
	waitTimer = 1000
	for i=1, 200, 1 do
		SetArtificialLightsState(false)
        SetArtificialLightsStateAffectsVehicles(false)
		Citizen.Wait(waitTimer)
		SetArtificialLightsState(true)
        SetArtificialLightsStateAffectsVehicles(false)
		Citizen.Wait(waitTimer)
		waitTimer = waitTimer-50
	end
	Citizen.Wait(waitTimer)
	SetArtificialLightsState(true)
    SetArtificialLightsStateAffectsVehicles(false)
end)

RegisterNetEvent('CubixLife_restartblackout:wetha')
AddEventHandler('CubixLife_restartblackout:wetha', function()
	SetWeatherTypeOvertimePersist("EXTRASUNNY", 10000)
end)