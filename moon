local Moon = {
	['8'] = "http://www.roblox.com/asset/?id=9709149431", -- 🌕
	['7'] = "http://www.roblox.com/asset/?id=9709149052", -- 🌖
	['6'] = "http://www.roblox.com/asset/?id=9709143733", -- 🌗
	['5'] = "http://www.roblox.com/asset/?id=9709150401", -- 🌘
	['4'] = "http://www.roblox.com/asset/?id=9709135895", -- 🌑
	['3'] = "http://www.roblox.com/asset/?id=9709139597", -- 🌒
	['2'] = "http://www.roblox.com/asset/?id=9709150086", -- 🌓
	['1'] = "http://www.roblox.com/asset/?id=9709149680", -- 🌔
};
pcall(function()
	for x, g in pairs(Moon) do
		if game:GetService("Lighting").Sky.MoonTextureId == g then
			MoonPercent = x / 8 * 100
		end
	end
	for a, x in pairs(game.Players:GetPlayers()) do
		PlayersMin = a
	end
	if game:GetService("Lighting").Sky.MoonTextureId == Moon['1'] then
		MoonIcon = '🌔'
	elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['2'] then
		MoonIcon = '🌓'
	elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['3'] then
		MoonIcon = '🌒'
	elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['4'] then
		MoonIcon = '🌑'
	elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['5'] then
		MoonIcon = '🌘'
	elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['6'] then
		MoonIcon = '🌗'
	elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['7'] then
		MoonIcon = '🌖'
	elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['8'] then
		MoonIcon = '🌕'
	end
	if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
		MirageMessage = '```Mirage is spawning : ✔```'
	else
		MirageMessage = '```Mirage isn\'t spawn : ❌```'
	end
end)
MoonMessage = '```'..tostring(MoonPercent..'%'..' : '..MoonIcon)..'```'
JoinServer = 'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,'..'\''..tostring(game.JobId)..'\''..')'
print('\n'..MoonMessage..'\n'..MirageMessage..'\n'..JoinServer)
local url = "https://discord.com/api/webhooks/1199130935262711840/Him4LZ01Bv7RybNpPteB6LvnxuWLbBW9nma7xJel-4x81t8b1wfYbODyTY18VCom1Jdd" -- ur webhook url
local data = {
	["username"] = 'https://media.discordapp.net/attachments/1151466936560001119/1171406604256673813/png-transparent-minecraft-story-mode-terraria-gfycat-chest-video-game-wood-treasure.png?ex=655c906a&is=654a1b6a&hm=cf77c547e783c8631c8d07a4ee0753f984690448f0fe2859f6d7e86e6df2e26b&=&width=862&height=468', -- Webhook name here
	['content'] = '',
	["avatar_url"] = "https://media.discordapp.net/attachments/1151466936560001119/1171406604256673813/png-transparent-minecraft-story-mode-terraria-gfycat-chest-video-game-wood-treasure.png?ex=655c906a&is=654a1b6a&hm=cf77c547e783c8631c8d07a4ee0753f984690448f0fe2859f6d7e86e6df2e26b&=&width=862&height=468", -- ur discord logo url
	["embeds"] = {
		{
			["description"] = "**__Moon and Mirage Webhook__**",
			["color"] = tonumber(0xff0000), -- color id		
			["type"] = "rich",
			["fields"] =  {
				{
					["name"] = "Players Count",
					["value"] = '```'..tostring(PlayersMin)..'/12```'
				},
				{
					["name"] = "Job ID",
					["value"] = '```'..tostring(game.JobId)..'```'
				},
				{
					["name"] = "Join Server",
					["value"] = '```'..JoinServer..'```',
				},
				{
					["name"] = "Moon Check",
					["value"] = MoonMessage,
					["inline"] = true
				},
				{
					["name"] = "Mirage Check",
					["value"] = MirageMessage,
					["inline"] = true
				}
			},
			["footer"] = {
				["text"] = "Skidded From Anbatukam", -- you can remove this but it will hurt
			},
			["timestamp"] = DateTime.now():ToIsoDate(),
		}
	},
}
local newdata = game:GetService("HttpService"):JSONEncode(data)
local headers = {["content-type"] = "application/json"}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
