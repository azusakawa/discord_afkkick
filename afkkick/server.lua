local discordID = {
	"discord:(id)",
}

RegisterServerEvent("ReadToKick")
AddEventHandler("ReadToKick", function()
	local discord = nil
    local discordid = nil
	identifiers = GetNumPlayerIdentifiers(source)
	
	for i = 0, identifiers + 1 do
        if GetPlayerIdentifier(source, i) ~= nil then
            if string.match(GetPlayerIdentifier(source, i), "discord") then
				discord = GetPlayerIdentifier(source, i)
			else
				DropPlayer(source, "請開啟 Discord 遊玩遊戲")
            end
        end
    end

	if discord then
		for _, dc in ipairs(discordID) do
			if dc == discord then
			else
				DropPlayer(source, "掛機時間過長，已被剔除")
			end
		end
	end
end)
