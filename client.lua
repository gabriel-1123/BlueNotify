function ShowNotify(title, message, time, type)
	SendNUIMessage({
		action = 'open',
		title = title,
		type = type,
		message = message,
		time = time,
	})
end

RegisterNetEvent('BlueNotify:ShowNotify')
AddEventHandler('BlueNotify:ShowNotify', function(title, message, time, type)
	ShowNotify(title, message, time, type)
end)

RegisterNetEvent('Notify')
AddEventHandler('Notify', function(title, message, time, type)
	ShowNotify(title, message, time, type)
end)