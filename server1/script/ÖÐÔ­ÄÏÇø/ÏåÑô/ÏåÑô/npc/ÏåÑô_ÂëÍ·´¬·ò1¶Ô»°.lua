--中原南区 襄阳府 ㈦头船夫1对话
--suyu
--200306015

CurWharf = 4;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")

---------------------------------------------------------------
function main(sel)
	if (GetLevel() >= 50) then
		Say("Thuy襫 phu:  Thuy襫 ta l竔 gi� v韎 bm tr╪g, lt gi鱝 m﹜ cao v韎 bi觧 b籲g :3 (ch� th玦 c竎 b竎 ah, 衞 hi觰 n� n鉯 g� c� :)) ) ", 3, "Ng錳 thuy襫/WharfFun", "Kh玭g ng錳/OnCancel", " Уo hoa o/go_thd");
	else
		Say("Thuy襫 phu:  Thuy襫 ta l竔 gi� v韎 bm tr╪g, lt gi鱝 m﹜ cao v韎 bi觧 b籲g :3 (ch� th玦 c竎 b竎 ah, 衞 hi觰 n� n鉯 g� c� :)) ) ", 2, "Ng錳 thuy襫/WharfFun", "Kh玭g ng錳/OnCancel");
	end
end;

---------------------------------------------------------------
function  OnCancel()

   Say("Thuy襫 phu:  Kh玭g c� ti襫 th� t� b琲 qua s玭g 甶 !",0)

end;

---------------------------------------------------------------
function go_thd()
	nRet = aexp_gotothd(237);
	-- if (nRet == 1) then
	--	Msg2Player("船夫：最近去桃花岛的人可真兜。好吧，你坐好刀！")
	if (nRet == -1) then
		Talk(1,"","L� ph� 甶 Уo Hoa Фo l� "..AEXP_TICKET.." lng, ngi  chu萵 b�  ti襫 ch璦 ?")
	end
end
---------------------------------------------------------------
