Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\_event\\vulan\\_inc.lua")

function main()
	if bilEventIsActive() == nil then 
		Talk(1, "", "<color=yellow>Hi�n t�i �� h�t th�i gian s� ki�n!")
		return 0
	end
	local bil_1 = random(1,5)
	if bil_1 == 3 then
		AddItem(6,1,4263,1,1,1) -- t�i ���ng
		-- Msg2Player("Nh�n ���c: <color=green>T�i ���ng!")
	elseif bil_1 > 3 then
		AddItem(6,1,4264,1,1,1) -- t�i b�t
		-- Msg2Player("Nh�n ���c: <color=green>T�i b�t!")
	else
		AddItem(6,1,4262,1,1,1) -- hoa h�ng
		-- Msg2Player("Nh�n ���c: <color=green>Hoa h�ng!")
	end
	return 0
end
