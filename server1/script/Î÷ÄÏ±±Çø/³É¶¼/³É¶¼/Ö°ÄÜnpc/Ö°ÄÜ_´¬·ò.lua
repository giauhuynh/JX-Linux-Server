--西南北区 成都 船夫对话

CurWharf = 9;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
---------------------------------------------------------------
function main(sel)
	if (GetLevel() >= 50) then
		Say("N琲 y m芻 d� kh玭g c� thuy襫, nh璶g ta v蒼 c� th� d蒼 ngi 甶", 2, " Уo hoa o (6) /go_thd", "Th玦, ta kh玭g 甶/OnCancel")
	else
		Talk(1, "", "Kh玭g bi誸 khi n祇 thuy襫 m韎 n y!")
	end
end;

function  OnCancel()
   Talk(1,"","Kh玭g c� ti襫, kh玭g th� ng錳 thuy襫! ")
end;

---------------------------------------------------------------
function go_thd()
	nRet = aexp_gotothd(240);
	-- if (nRet == 1) then
	--	Msg2Player("Thuy襫 phu: Ta bi誸 con 阯g ng緉 nh蕋 n Уo hoa o. Ng錳 cho v鱪g, ch髇g ta 甶 n Уo hoa o nh�")
	if (nRet == -1) then
		Talk(1,"","Ti襫  l猲 o"..AEXP_TICKET.."ngi  mang theo  ch璦? ")
	end
end
---------------------------------------------------------------
