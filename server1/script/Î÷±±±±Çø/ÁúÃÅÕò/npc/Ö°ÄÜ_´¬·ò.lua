--西北北区 龙门镇 黄河㈦头船夫对话
--suyu
--20031029

CurWharf = 10;
Include("\\script\\global\\station.lua")

function main(sel)
	if (GetLevel() >= 5) then		--等级达到五级
		Say("Ch髇g ta l祄 c玭g � tr猲 thuy襫 n祔 th藅 l� c鵦 kh�! N緉g ch竬! Gi� qu藅! B﹜ gi� l筰 g苝 s鉵g to gi� l韓 e r籲g s� kh玭g ai s鑞g s鉻!", 2, "Ng錳 thuy襫/WharfFun", "Kh玭g ng錳/OnCancel")
	else		
		Talk(1,"","Khi n祇 c� ti襫 h穣 quay l筰!")
	end
end;

function  OnCancel()
   Talk(1,"","Kh玭g c� ti襫 th� kh玭g th� ng錳 thuy襫! ")
end;
