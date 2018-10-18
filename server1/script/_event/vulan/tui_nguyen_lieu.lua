Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\_event\\vulan\\_inc.lua")

function main()
	if bilEventIsActive() == nil then 
		Talk(1, "", "<color=yellow>HiÖn t¹i ®· hÕt thêi gian sù kiÖn!")
		return 0
	end
	local bil_1 = random(1,5)
	if bil_1 == 3 then
		AddItem(6,1,4263,1,1,1) -- tói ®­êng
		-- Msg2Player("NhËn ®­îc: <color=green>Tói ®­êng!")
	elseif bil_1 > 3 then
		AddItem(6,1,4264,1,1,1) -- tói bét
		-- Msg2Player("NhËn ®­îc: <color=green>Tói bét!")
	else
		AddItem(6,1,4262,1,1,1) -- hoa hång
		-- Msg2Player("NhËn ®­îc: <color=green>Hoa hång!")
	end
	return 0
end
