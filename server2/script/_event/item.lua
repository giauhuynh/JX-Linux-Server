Include("\\script\\_event\\init.lua")

function main(_1)
	local a_G, a_D, a_P, _, _ = GetItemProp(_1)
	local a = tonumber(a_G..a_D..a_P)
	
	if not(_EVENT.i[a]) then
		Talk(1, "", "VËt phÈm dïng ®Ó tham gia sù kiÖn!")
		return 1
	end
	
	if not(_EVENT.i[a][2][3]) or not(_EVENT.g[_EVENT.i[a][2][3]]["f"]) or not(_EVENT.i[a][3][1]) or not(_EVENT.i[a][3][2]) then
		Talk(1, "", "VËt phÈm dïng ®Ó tham gia sù kiÖn!")
		return 1
	end
	
	local b_1, b_2, b_3, b_c = nil, nil, nil, 0
	
	b_1 = _EVENT.g[_EVENT.i[a][2][3]]["f"]
	b_2 = _EVENT.i[a][3][1]
	b_3 = _EVENT.i[a][3][2]
	
	if not(b_1) or not(b_2) or not(b_3) then b_c = 1 end
	if (type(b_1) ~= "string") or (type(b_2) ~= "string") or (type(b_3) ~= "string") then b_c = 1 end
	if (strlen(b_1) <= 0) or (strlen(b_2) <= 0) or (strlen(b_3) <= 0) then b_c = 1 end
	
	if b_c ~= 0 then
		Talk(1, "", "Sö dông vËt phÈm thÊt b¹i, xin thö l¹i hoÆc liªn hÖ bé phËn hç trî!")
		return 1
	end
	
	if _EVENT:NowDay() >= _EVENT.i[a][2][1] and _EVENT:NowDay() <= _EVENT.i[a][2][2] then
		DynamicExecuteByPlayer(PlayerIndex, "\\script\\_event\\"..b_1.."\\"..b_2, b_3, _1, nil)
		return 1
	elseif _EVENT.i[a][4] == 1 then
		DynamicExecuteByPlayer(PlayerIndex, "\\script\\_event\\"..b_1.."\\"..b_2, b_3, _1, 1)
		return 1
	else
		Talk(1, "", "VËt phÈm dïng ®Ó tham gia sù kiÖn!")
		return 1
	end
	
	return 1
end






















