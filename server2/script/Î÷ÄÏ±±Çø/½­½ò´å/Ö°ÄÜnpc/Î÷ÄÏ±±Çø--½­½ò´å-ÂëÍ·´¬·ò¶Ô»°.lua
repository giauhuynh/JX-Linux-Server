--西南北区 江津村 码头船夫对话
--suyu
--200306015
-- Update: Dan_Deng(2003-08-21) 降低出村等级要求为5级

CurWharf = 2;
Include("\\script\\global\\station.lua")
---------------------------------------------------------------
function main(sel)

if (GetLevel() >= 5) then		--等级达到十级
	Say("Kh竎h quan mu鑞 ng錳 thuy襫 甶 u v藋?", 2, "L猲 thuy襫/WharfFun", "Ta kh玭g mu鑞 l猲/OnCancel");
else		
	Talk(1,"","M� l鏸 'GTT001' vui l遪g ch魀 h譶h v� g鰅 cho admin  fix l鏸!")
end

end;

---------------------------------------------------------------
function  OnCancel()
   Say("Kh竎h quan a ta h�?",0)
end;

---------------------------------------------------------------
