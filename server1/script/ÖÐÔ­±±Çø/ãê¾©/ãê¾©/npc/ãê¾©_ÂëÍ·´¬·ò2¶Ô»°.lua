--中原北区 汴京府 ㈦头船夫2对话
--suyu
--200306015

CurWharf = 3;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
---------------------------------------------------------------
function main(sel)
	if (GetLevel() >= 50) then
		Say("Thuy襫 phu : h玬 nay c� ngh辌h th駓 h祅h thuy襫, l筰 g苝 g� nh u phong, xem ra i quang di猽 l� ph秈 kh玭g th祅h, s� r籲g 頲 v韎 ng筺 k衞 ti猰 m韎 頲. Ngi mu鑞 甶 u m� ?", 2, "Ng錳 thuy襫/WharfFun", "Kh玭g ng錳/OnCancel");
	else
		Say("H玬 nay c� ngh辌h th駓 h祅h thuy襫, l筰 g苝 g� nh u phong, xem ra i quang di猽 l� ph秈 kh玭g th祅h, s� r籲g 頲 v韎 ng筺 k衞 ti猰 m韎 頲 . ngi mu鑞 甶 u m� ? ", 2, "Ng錳 thuy襫/WharfFun", "Kh玭g ng錳/OnCancel");		
	end

end;

---------------------------------------------------------------
function  OnCancel()

   Say("Thuy襫 phu : kh玭g c� b筩 nh璶g n琲 n祇 c騨g 甶 kh玭g 頲 !",0)

end;

---------------------------------------------------------------
function go_thd()
	nRet = aexp_gotothd(238);
	 --if (nRet == 1) then
		--Msg2Player("Thuy襫 phu : g莕 nh蕋 甶 Уo Hoa Фo ngi c馻 c騨g th藅 nhi襲. Л頲 r錳 , ngi ng錳 xong l﹗ !")
	if (nRet == -1) then
		Talk(1,"","Ng錳 thuy襫 甶 Уo Hoa Фo"..AEXP_TICKET.." lng , ngi  ch璦? ")
	end
end
---------------------------------------------------------------
