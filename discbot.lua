local discordia = require('discordia')
local client = discordia.Client()
local exreg = io.open("/discbot.dat/discbot_levels_v1")

client:on('ready', function()
	print('Logged in as '.. client.user.username)
end)

client:on('messageCreate', function(message)
	if message.content == '//+ wake up' then
		message.channel:send([[Goog Morgning!
It is I, DiscBot, at your service!]])
	elseif message.content == '//+ hug' then
		message.channel:send("Work in Progress!")
	end
end)

client:run('Bot INSERT_TOKEN_HERE')
