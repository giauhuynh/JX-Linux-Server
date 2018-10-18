Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\_event\\vulan\\_inc.lua")
IncludeLib("RELAYLADDER");

function main()
	if bilEventIsActive() == nil then 
		Talk(1, "", "<color=yellow>HiÖn t¹i ®· hÕt thêi gian sù kiÖn!")
		return 0
	end
	if GetTask(5959) >= 10000 then
		Talk(1, "","§¹i hiÖp ®· sö dông Hoa Hång ®¹t ®Õn giíi h¹n cho phÐp 10000 c¸i, ¨n nhiÒu sÏ lµm ph¶n c«ng lùc!")
		return 1
	end
	SetTask(5959, GetTask(5959) + 1)
	local bil_1 = random(1,5)
	if bil_1 == 2 then
		AddOwnExp(random(10000,20000))
	else
		AddOwnExp(random(5000,10000))
	end
	Msg2Player("Hoa hång ®· dïng: <color=yellow>"..GetTask(5959))
	Ladder_NewLadder(10123, GetName(), GetTask(5959), 1);
	return 0
end
