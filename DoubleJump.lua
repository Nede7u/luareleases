script_name("DoubleJump")
script_author("nede7u")
local vkeys = require("vkeys")

function main()
	if not isSampLoaded() then return end
	while not isSampAvailable() do wait(100) end

	while true do
		wait(0)

		if not sampIsChatInputActive() and not sampIsDialogActive() and not isCharInAnyCar(playerPed) and isKeyJustPressed(vkeys.VK_RSHIFT) then
			sampSendChat(" ")

			for v = 1, 12, 1 do
				setVirtualKeyDown(16, true)
				wait(1)
				setVirtualKeyDown(16, false)
				setVirtualKeyDown(16, true)
				wait(1)
				setVirtualKeyDown(16, false)
				wait(25)
			end
		end
	end

	wait(-1)
end
