IncludeLib("SETTING")
IncludeLib("RELAYLADDER")
IncludeLib("ITEM")

_EVENT_LIB = {}

function _EVENT_LIB:ConsumeItem(_Index, Nums)
	local a_G, a_D, a_P, _, _ = GetItemProp(_Index)
	local b = ((Nums and Nums > 1) and Nums or 1)
	
	if CalcEquiproomItemCount(a_G, a_D, a_P, -1) < b then
		Talk(1, "", "KhÊu trõ ®¹o cô thÊt b¹i, kh«ng t×m thÊy "..b.." vËt phÈm "..GetItemName(_Index)..". Xin thö l¹i hoÆc liªn hÖ víi bé phËn hç trî ®Ó ®­îc trî gióp!")
		return 1
	end
	
	if ConsumeEquiproomItem(b,a_G,a_D,a_P,-1) then
		return nil
	end
	
	return 1
end

function _EVENT_LIB:i(_1)
	local a, b, c = {}, 0, 0
	
	for _i = 1, _1 do tinsert(a, _i) end
	
	for _i2 = 1, _1 do
		b = random(1, _1)
		c = a[_i2]
		a[_i2] = a[b]
		a[b] = c
	end
	
	return a
end

function _EVENT_LIB:isMax(_1)
	local a = GetTask(_1.TaskCount)
	
	if a >= _1.MaxItem then
		Talk(1, "", "C¸c h¹ ®· ®¹t ®Õn c¶nh giíi sö dông ".._1.Name)
		return 1
	end
	
	if _1.FreeRoomWH and CountFreeRoomByWH(_1.FreeRoomWH[1], _1.FreeRoomWH[2]) < 1 then
		Talk(1, "", "C¸c h¹ vui lßng s¾p xÕp l¹i hµnh trang vµ ®Ó trèng (".._1.FreeRoomWH[1].."x".._1.FreeRoomWH[2]..") míi cã thÓ sö dông vËt phÈm!")
		return 1
	end
	
	if _1.ConsumeOne then
		local a_G, a_D, a_P, _, _ = GetItemProp(_1.ConsumeOne)
		
		if CalcEquiproomItemCount(a_G, a_D, a_P, -1) < 1 then
			Talk(1, "", "KhÊu trõ ®¹o cô thÊt b¹i, kh«ng t×m thÊy 1 vËt phÈm "..GetItemName(_1.ConsumeOne)..". Xin thö l¹i hoÆc liªn hÖ víi bé phËn hç trî ®Ó ®­îc trî gióp!")
			return 1
		end
		
		if ConsumeEquiproomItem(1,a_G,a_D,a_P,-1) ~= 1 then
			return 1
		end
	end
	
	SetTask(_1.TaskCount, (a + 1))
	
	if _1.ExpPerOne and _1.ExpPerOne > 0 then
		AddOwnExp(_1.ExpPerOne)
	end
	
	if _1.RelayLadder and _1.RelayLadder > 0 then
		Ladder_NewLadder(_1.RelayLadder, GetName(), (a + 1), 1)
	end
	
	if mod((a + 1), 10) == 0 then
		Msg2Player(_1.Name..": <color=yellow>"..(a + 1).."/".._1.MaxItem.."<color> lÇn")
	end
	
	return nil
end

function _EVENT_LIB:RandomItem(_1)
	local a = getn(_1.Item)
	local b = self:i(a)
	local c = random(1, _1.tRandom)
	local d = 0
	local e = nil
	
	for _i = 1, a do
		d = ((_1.tRandom / 100) * _1.Item[b[_i]].r)
		
		if d >= c then
			if _1.Item[b[_i]].v[1] == 6 or _1.Item[b[_i]].v[1] == 4 or _1.Item[b[_i]].v[1] == 0 then
				e = AddItemNoStack(unpack(_1.Item[b[_i]].v))
				
				if _1.Item[b[_i]].e and _1.Item[b[_i]].e > 0 then
					ITEM_SetExpiredTime(e, FormatTime2Date(_1.Item[b[_i]].e * 24 * 60 *60 + GetCurServerTime()))
					SyncItem(e)
				end
				
				if _1.Item[b[_i]].b and _1.Item[b[_i]].b ~= 0 then
					SetItemBindState(e, _1.Item[b[_i]].b)
					SyncItem(e)
				end
			elseif _1.Item[b[_i]].v[1] == 20 then
				SetTask(151, (_1.Item[b[_i]].v[2] + GetTask(151)))
			elseif _1.Item[b[_i]].v[1] == 21 then
				AddRepute(_1.Item[b[_i]].v[2])
			end
			
			if _1.Item[b[_i]].l and _1.Item[b[_i]].l == 1 then
				local f = openfile(format("script/_event/logs/event_id_%d__%s__%s.log", _1.EventID, "AwardItem", GetLocalDate("%d_%m_%y")), "a")
				if _1.Item[b[_i]].v[1] == 6 or _1.Item[b[_i]].v[1] == 4 then
					write(f, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tEventID: ".._1.EventID.."\tItemExpired: ".._1.Item[b[_i]].e.."\tItemBindState: ".._1.Item[b[_i]].b.."\tItemName: ".._1.Item[b[_i]].n.."\tAcc: "..GetAccount().."\tPlayer: "..GetName().."\tRandom["..c.."/"..d.."]\n")
				elseif _1.Item[b[_i]].v[1] == 20 or _1.Item[b[_i]].v[1] == 21 then
					write(f, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tEventID: ".._1.EventID.."\tPointName: ".._1.Item[b[_i]].n.."\tPoint: ".._1.Item[b[_i]].v[2].."\tAcc: "..GetAccount().."\tPlayer: "..GetName().."\tRandom["..c.."/"..d.."]\n")
				end
				closefile(f)
			end
			
			if _1.Item[b[_i]].c and getn(_1.Item[b[_i]].c) > 0 then
				for _i2 = 1, getn(_1.Item[b[_i]].c) do
					CastSkill(unpack(_1.Item[b[_i]].c[_i2]))
				end
			end
			
			if _1.Item[b[_i]].s and getn(_1.Item[b[_i]].s) > 0 then
				for _i3 = 1, getn(_1.Item[b[_i]].s) do
					AddSkillState(unpack(_1.Item[b[_i]].s[_i3]))
				end
			end
			
			return Msg2Player("May m¾n nhËn ®­îc <color=green>".._1.Item[b[_i]].n)
		end
	end
end

/*[[
	_1 = {
		tRandom = 10000,
		EventID = 2,
		Item = {
			{v = {6,1,1266,1,0,0,0}, e = 0, b = 0, r = 0.02, n = "ThÇn Hµnh Phï", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {20,100}, r = 0.02, n = "Phóc duyªn", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
			{v = {21,100}, r = 0.02, n = "Danh väng", l = 1, c = {{968, 20}, {971, 20}}, s = {{509, 1, 0, 500}}},
		}
	}
	
	_2 = {
		MaxItem = 600,
		TaskCount = 5879,
		ExpPerOne = 600000,
		RelayLadder = 10479,
		Name = "VËt phÈm",
		ConsumeOne = Index,
		FreeRoomWH = {1,1},
	}
]]*/

























