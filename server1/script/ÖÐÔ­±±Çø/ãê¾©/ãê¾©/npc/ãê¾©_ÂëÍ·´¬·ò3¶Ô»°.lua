--中原北区 汴京府 ㈦头船夫3对话
--suyu
--200306015

CurWharf = 3;
Include("\\script\\global\\station.lua")
---------------------------------------------------------------
function main(sel)

	Say("Thuy襫 Phu : Ch髇g ta thuy襫 phu t� t� b鑙 b鑙 c騨g d鵤 v祇 c竔 n祔 Ho祅g H� m� s鑞g, sanh � Ho祅g H� b猲 , c騨g ch誸 � Ho祅g H� b猲 , y ch輓h l� ch髇g ta thuy襫 phu ch m謓h ! ngi mu鑞 甶 u m� ?", 2, "Ng錳 thuy襫/WharfFun", "Kh玭g ng錳/OnCancel");

end;

---------------------------------------------------------------
function  OnCancel()

   Say("Thuy襫 phu : kh玭g c� b筩 nh璶g n琲 n祇 c騨g 甶 kh玭g 頲 !",0)

end;

---------------------------------------------------------------
