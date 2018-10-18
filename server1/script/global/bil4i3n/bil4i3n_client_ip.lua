
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\script_protocol\\protocol_def_gs.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_limit_window_on_ip.lua")

bilClientIP = {
	RealTime = {},
	RealTime_Count = 0,
	TaskString = 7,
	Logs = "script/global/bil4i3n/bil4i3n_log/Client_IP_%s.log",
}

function bilClientIP:SendRequest2Client()
	if bilGetIPAdressWithProtocol ~= 1 then return end
	local a = OB_Create()
	ObjBuffer:PushByType(a, OBJTYPE_STRING, "ip")
	ObjBuffer:PushByType(a, OBJTYPE_STRING, "ip")
	ScriptProtocol:SendData("emSCRIPT_PROTOCOL_CLIENT_IP", a)
	OB_Release(a)
end

function bilClientIP:CallFuncMain(_1, _)
	if bilGetIPAdressWithProtocol ~= 1 then return end
	
	if bil.False(_1) then
		local b = openfile(format(self.Logs, tostring(date("%d-%m-%y"))), "a")
		write(b, tostring(date("%d-%m-%y %H:%M:%S")).."\tAccount: "..GetAccount().."\t".."Char: "..a.."\tIPAdress: NULL_NULL(".._1..")\tFaction: "..GetLastFactionNumber().."\tLevel: "..GetLevel().."\tExpPercent: "..GetExpPercent().."\n")
		closefile(b)
		return Say("§· cã b¶n cËp nhËt míi. Vui lßng khëi ch¹y autoupdate hoÆc tù cËp nhËt l¹i patch game ®Ó tham gia trß ch¬i!", 1, "§· hiÓu!/bilLimitwIP_CallOut")
	end
	
	local a = GetName()
	_1 = tostring(_1)
	SetStringTask(self.TaskString, _1)
	
	if not(self.RealTime[_1]) then
		self.RealTime[_1] = {}
	end
	self.RealTime[_1][a] = _1
	
	self.RealTime_Count = self.RealTime_Count + 1
	
	-- local b = openfile(format(self.Logs, tostring(date("%d-%m-%y"))), "a")
	-- write(b, tostring(date("%d-%m-%y %H:%M:%S")).."\tAccount: "..GetAccount().."\t".."Char: "..a.."\tIPAdress: ".._1.."\tFaction: "..GetLastFactionNumber().."\tLevel: "..GetLevel().."\tExpPercent: "..GetExpPercent().."\t\tNowCountIP: "..(self.RealTime_Count).."\n")
	-- closefile(b)
	
	if bilAllowNumWindowOnIPAdress ~= 0 then
		bilLimitwIP:Main()
	end
end

function bilClientIP:DelPlayer()
	if bilGetIPAdressWithProtocol ~= 1 then return end
	
	local a, b = GetStringTask(self.TaskString), GetName()
	
	if self.RealTime[a] then
		if self.RealTime[a][b] then
			self.RealTime[a][b] = nil
			self.RealTime_Count = self.RealTime_Count - 1
		end
	end
	
end

function bilClientIP:GetCount()
	if bilGetIPAdressWithProtocol ~= 1 then return end
	
	local a, b = GetStringTask(self.TaskString), 0
	
	if self.RealTime[a] then
		for _v, _k in self.RealTime[a] do
			b = b + 1
		end
	end
	
	return b, a
end














