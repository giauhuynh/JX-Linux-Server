
-- Modified by Bil4i3n

CurStation = 1;
Include("\\script\\global\\station.lua")
IncludeLib("BATTLE")

function main(sel)
	BT_LeaveBattle()
	SetCurCamp(GetCamp())
	SetFightState(0)
	local mapid = SubWorldIdx2ID(SubWorld);
	local tbOpp = {"Nh÷ng n¬i ®· ®i qua/WayPointFun", 
					"Nh÷ng thµnh thŞ ®· ®i qua/StationFun", 
					"Trë l¹i ®Şa ®iÓm cò/TownPortalFun"};
--	if (mapid == 325) then
		tinsert(tbOpp, format("§Õn ®iÓm b¸o danh phe Kim/#battle_transprot(2,%d)", mapid));
--	end;
	tinsert(tbOpp, "KÕt thóc ®èi tho¹i/OnCancel");
	Say("Lµ nh÷ng phu xe cho c¸c chiÕn tr­êng chóng t«i h¬n ai hÕt hiÓu ®­îc sù cùc khæ, cã lóc cËn kÒ c¸i chÕt, mong c¸c vŞ ®¹i hiÖp h·y bá ra vµi l¹ng b¹c ®Ó gióp ®ì chóng t«i.", getn(tbOpp), tbOpp);
end;

function OnCancel()
end;
function battle_transprot(nSel, mapid)
	local tbsongjin_pos = {1541, 3178};	--ËÎ·½×ø±êµã
	local szstr = "Kim ph­¬ng(T)";
	if (nSel == 2) then
		tbsongjin_pos = {1570, 3085};
		szstr = "Tèng ph­¬ng(K)";
	end;
	if (mapid >= 323 and mapid <= 325) then
		NewWorld( mapid, tbsongjin_pos[1], tbsongjin_pos[2]);
		Msg2Player( "§· ®Õn ®iÓm b¸o danh phe Kim" );
	end
end;
