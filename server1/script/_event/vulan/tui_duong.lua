Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\_event\\vulan\\_inc.lua")
IncludeLib("RELAYLADDER");

function main()
	if bilEventIsActive() == nil then 
		Talk(1, "", "<color=yellow>HiÖn t¹i ®· hÕt thêi gian sù kiÖn!")
		return 0
	end
	if GetTask(5958) >= 10000 then
		Talk(1, "","§¹i hiÖp ®· sö dông Tói §­êng ®¹t ®Õn giíi h¹n cho phÐp 10000 c¸i, ¨n nhiÒu sÏ lµm ph¶n c«ng lùc!")
		return 1
	end
	SetTask(5958, GetTask(5958) + 1)
	local bil_1 = random(1,8)
	if bil_1 == 6 then
		AddOwnExp(random(25000,50000))
	else
		AddOwnExp(random(5000,25000))
	end
	Msg2Player("Tói §­êng ®· dïng: <color=yellow>"..GetTask(5958))
	Ladder_NewLadder(10124, GetName(), GetTask(5958), 1);
	return 0
end
