AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 420 then
        for _, playerId in ipairs(GetPlayers()) do
            TriggerClientEvent('CubixLife_restartblackout:start', playerId)
        end
    end
end)

RegisterCommand('setweathern', function()
    for _, playerId in ipairs(GetPlayers()) do
        TriggerClientEvent('CubixLife_restartblackout:wetha', playerId)
    end
end)