--两湖区 巴陵县 长江㈦头船夫对话
--suyu
--200306015
-- Update: Dan_Deng(2003-08-21) 降低出村等级要求为5级

CurWharf = 5;
Include("\\Script\\Global\\station.lua");
---------------------------------------------------------------
function main(sel)

if (GetLevel() >= 5) then		--等级达到5级
	Say("Ta c� bi謙 hi謚 l� 'L穘g L� B筩h 襲' ba i u s� d鵤 v祇 s玭g nc! Kh緋 Ba L╪g Huy謓 n祔 kh玭g c� ai l� i th�! Kh竎h quan mu鑞 甶 u? ", 2, "Ng錳 thuy襫/WharfFun", "Kh玭g ng錳/OnCancel");
else		
	Say("Ng錳 y猲 ch髇g ta 甶 n祇", 0)
end

end;

---------------------------------------------------------------
function  OnCancel()
   Say("Kh玭g c� ti襫 m� c騨g i ng錳 thuy襫 h�?",0)
end;

------------------------------------------------
