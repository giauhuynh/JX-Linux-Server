IncludeLib("TASKSYS")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("LEAGUE")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\lib\\progressbar.lua")
IncludeLib("ITEM")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

function main(iIndex)
	local a = {
		[904] = {"Qu¶ Huy Hoµng ThÊp", {10, 79}, {5874, 2313}, 10000000},
		-- [905] = {"Qu¶ Huy Hoµng Trung", {80, 109}, {5874, 2313}, 30000000},
		[905] = {"Qu¶ Huy Hoµng Trung", {80, 200}, {5874, 2313}, 30000000},
		[906] = {"Qu¶ Huy Hoµng Cao", {110, 200}, {5874, 2313}, 50000000},
		[907] = {"Qu¶ Hoµng Kim", {110, 200}, {2321, 2322}, 200000000},
		[2269] = {"B¸ch Niªn Huy Hoµng Qu¶", {10, 79}, {5874, 2313}, 2000000},
		-- [2270] = {"Thiªn Niªn Huy Hoµng Qu¶", {80, 109}, {5874, 2313}, 6000000},
		[2270] = {"Thiªn Niªn Huy Hoµng Qu¶", {80, 200}, {5874, 2313}, 60000000},
		[2271] = {"V¹n Niªn Huy Hoµng Qu¶", {110, 200}, {5874, 2313}, 100000000},
	}
	
	local b_G, b_D, b_P, _, _ = GetItemProp(iIndex)
	local nDate = tonumber(GetLocalDate("%m%d"))
	
	if not(a[b_P]) or b_G ~= 6 then
		Msg2Player("Kh«ng x¸c ®Þnh ®­îc ®¹o cô, xin thö l¹i hoÆc liªn hÖ víi bé phËn hç trî!")
		return 1
	end	
	
	if GetLevel() < a[b_P][2][1] or GetLevel() > a[b_P][2][2] then
		Msg2Player(a[b_P][1].." chØ sö dông cho nh©n vËt tõ cÊp "..a[b_P][2][1].." ®Õn cÊp "..a[b_P][2][2])
		return 1
	end
	
	if GetTask(a[b_P][3][1]) ~= nDate then
		SetTask(a[b_P][3][1], nDate)
		SetTask(a[b_P][3][2], 0)
	elseif b_P == 907 then
		if GetTask(a[b_P][3][2]) >= 2 then
			Talk(1, "", "H«m nay b¹n ®· ¨n 2 qu¶ Hoµng Kim, vâ c«ng th¨ng tiÕn qu¸ nhanh dÔ g©y t¸c dông ph¶n nghÞch, ngµy mai h·y tiÕp tôc vËy")
			return 1
		end
	elseif GetTask(a[b_P][3][2]) >= 5 then
		Talk(1, "", "H«m nay b¹n ®· ¨n 5 qu¶ Huy hoµng, vâ c«ng th¨ng tiÕn qu¸ nhanh dÔ g©y t¸c dông ph¶n nghÞch, ngµy mai h·y tiÕp tôc vËy")
		return 1
	end
	
	SetTask(a[b_P][3][2], GetTask(a[b_P][3][2]) + 1)
	AddOwnExp(a[b_P][4])
	Msg2Player("Sö dông "..a[b_P][1].." nhËn ®­îc "..a[b_P][4].." ®iÓm kinh nghiÖm!")
	tbAwardTemplet:GiveAwardByList({{szName="VLMT",tbProp={6,1,26,1,0,0,0},nCount=1,nRate=3},}, "test", 1);
	return 0
end


































