script_name("Hagwalah")
script_authors("nede7u")

require 'moonloader'
local status = false

function main()
	if not isSampLoaded() then return end
	while not isSampAvailable() do wait(100) end
	
	sampRegisterChatCommand("hagwalah", function()
		status = not status
		sampAddChatMessage(status and "[Hagwalah] Статус включено" or "[Hagwalah] Статус выключено", -1)
	end)

	while true do 
	wait(0)
		if status == true and isCharInAnyCar(playerPed) then 
			local car = storeCarCharIsInNoSave(playerPed)
			local speed = getCarSpeed(car)
			if mode == 1 and speed > 7.5 then
				if isKeyDown(VK_Q) then
					addToCarRotationVelocity(car, 0, 0.15, 0)
				end
				if isKeyDown(VK_E) then 			
					addToCarRotationVelocity(car, 0, -0.15, 0)	
				end
			end
		end
	end
end