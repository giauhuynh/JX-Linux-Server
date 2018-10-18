Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

bilLimitwIP = {
	reSet = {
		["118.68.102.144"] = 18,
	},
	Logs = "script/global/bil4i3n/bil4i3n_log/Limit_Char_On_IP.log",
}

function bilLimitwIP:wLogs(_1, _2, _3)
	local a = openfile(self.Logs, "a")
	write(a, tostring(date("%d-%m-%y %H:%M:%S")).."\tAccount: "..GetAccount().."\t".."Char: "..GetName().." \t@@ Loged: ".._1.."/".._2.."\tIP: ".._3.."\n")
	closefile(a)
end

function bilLimitwIP_CallOut()
	OfflineLive(PlayerIndex)
	KickOutSelf(PlayerIndex)
end

function bilLimitwIP:Main()
	local a, b, c = 0, bilAllowNumWindowOnIPAdress, ""

	if b == 0 then return end

	if bilGetIPAdressWithProtocol == 1 then
		a, c = bilClientIP:GetCount()
	end
	
	b = (not(self.reSet[c]) or self.reSet[c] <= 0) and b or self.reSet[c]
	
	if a > b then
		self:wLogs(a, b, c)
		
		Say(bil.C(4, "HÖ thèng giíi h¹n Nh©n vËt trªn IP: ")..bil.C(3, "HÕt sè l­îng")
		.."<enter>"..bil.C(10, "Giíi h¹n cña b¹n: "..(a-1).."/"..b.." nh©n vËt")
		.."<enter>"..bil.C(10, "IP: "..c)
		.."<enter>NÕu b¹n ®ñ ®iÒu kiÖn ®­îc c«ng bè trªn trang chñ (vÝ dô Phßng m¸y) b¹n cã thÓ liªn hÖ víi bé phËn hç trî hoÆc sö dông sè ®iÖn tho¹i ®Ó yªu cÇu më giíi h¹n!", 1,
		"§· biÕt!/bilLimitwIP_CallOut")

		return 1
	end
	
	return nil
end





















