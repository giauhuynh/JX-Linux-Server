--西北南区 凤翔府 ㈦莘船夫对话
--suyu
--200306015
-- VH by anhdung9992001 clbgamesvn--
CurWharf = 1;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
---------------------------------------------------------------
function main(sel)
	if (GetLevel() >= 50) then
		Say("Thuy襫 phu: (H竧) xem k譨 ng s琻 m苩 tr阨 l猲 l璶g T﹜ s琻 ~~ , ch﹏ p ho祅g t t﹎ th秐 nhi猲 ~~, ngi c� hi觰 頲 thi猲 h� Ho祅g H� ~~, ch輓 mi ch輓 sao c玭g y猽 甧m thuy襫 m� ban !! Ngi mu鑞 甶 thuy襫 kh玭g!!", 2, "Ng錳 thuy襫/WharfFun", "Kh玭g ng錳/OnCancel");
	else
		Say("Ho祅g H� ch輓 o loan, ta u n祔, ngi u kia ....", 2, "Ng錳 thuy襫/WharfFun", "Kh玭g ng錳/OnCancel");
	end

end;

---------------------------------------------------------------
function  OnCancel()

   Say("L骳 n祇 c莕 ta c� quay l筰!",0)

end;

---------------------------------------------------------------
function go_thd()
	nRet = aexp_gotothd(241);
	-- if (nRet == 1) then
	--	Msg2Player("船夫：最近去桃花岛的人可真兜。悍吧，你坐悍刀！")
	if (nRet == -1) then
		Talk(1,"","Mu鑞 ng錳 thuy襫 甶 Уo Hoa Фo c莕 "..AEXP_TICKET.." lng, ngi c�  ch璦.")
	end
end
---------------------------------------------------------------
