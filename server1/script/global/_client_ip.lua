Include("\\script\\global\\bil4i3n\\bil4i3n_client_ip.lua")

ClientIP = {}

function ClientIP:CallFunc(_1, _2)
	return bilClientIP:CallFuncMain(_1, _2)
end