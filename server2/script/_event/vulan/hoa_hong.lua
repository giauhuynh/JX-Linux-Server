Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\_event\\vulan\\_inc.lua")
IncludeLib("RELAYLADDER");

function main()
	if bilEventIsActive() == nil then 
		Talk(1, "", "<color=yellow>Hi�n t�i �� h�t th�i gian s� ki�n!")
		return 0
	end
	if GetTask(5959) >= 10000 then
		Talk(1, "","��i hi�p �� s� d�ng Hoa H�ng ��t ��n gi�i h�n cho ph�p 10000 c�i, �n nhi�u s� l�m ph�n c�ng l�c!")
		return 1
	end
	SetTask(5959, GetTask(5959) + 1)
	local bil_1 = random(1,5)
	if bil_1 == 2 then
		AddOwnExp(random(10000,20000))
	else
		AddOwnExp(random(5000,10000))
	end
	Msg2Player("Hoa h�ng �� d�ng: <color=yellow>"..GetTask(5959))
	Ladder_NewLadder(10123, GetName(), GetTask(5959), 1);
	return 0
end
