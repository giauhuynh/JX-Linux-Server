Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\_event\\vulan\\_inc.lua")

function main()
	Talk(1, "","Nguy�n li�u d�ng �� tham gia s� ki�n!")
	return 1
end

function GetDesc( nItemIdx )
	return "<color=green>L� nguy�n li�u c�n thi�t �� ch� bi�n th�nh b�nh chay<color><enter>S� ki�n Vu Lan m�y ch� V� L�m!"
end