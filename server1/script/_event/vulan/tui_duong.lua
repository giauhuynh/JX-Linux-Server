Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\_event\\vulan\\_inc.lua")
IncludeLib("RELAYLADDER");

function main()
	if bilEventIsActive() == nil then 
		Talk(1, "", "<color=yellow>Hi�n t�i �� h�t th�i gian s� ki�n!")
		return 0
	end
	if GetTask(5958) >= 10000 then
		Talk(1, "","��i hi�p �� s� d�ng T�i ���ng ��t ��n gi�i h�n cho ph�p 10000 c�i, �n nhi�u s� l�m ph�n c�ng l�c!")
		return 1
	end
	SetTask(5958, GetTask(5958) + 1)
	local bil_1 = random(1,8)
	if bil_1 == 6 then
		AddOwnExp(random(25000,50000))
	else
		AddOwnExp(random(5000,25000))
	end
	Msg2Player("T�i ���ng �� d�ng: <color=yellow>"..GetTask(5958))
	Ladder_NewLadder(10124, GetName(), GetTask(5958), 1);
	return 0
end
