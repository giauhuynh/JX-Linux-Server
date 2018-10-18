
function main(NpcIndex)
dofile("script/global/quanlygame/sukien/event2thang9/thomay.lua");
local tab_Content = {
	"Ta muèn may l¸ cê quèc kh¸nh/mayco2thang9",
	"Nh©n tiÖn ghÐ qua th«i/no"
	}
Say("<color=pink>Thî may:<color>\n2 th¸ng 9 theo th«ng lÖ lµ ngµy quèc kh¸nh viÖt nam ®¹i hiÖp cÇn ph¶i treo cê theo ®óng lÖnh cña quan sai kh«ng biÕt ®¹i hiÖp cã cÇn may cê kh«ng?", getn(tab_Content), tab_Content);       
end;

function myplayersex()
	if GetSex() == 1 then 
		return "N÷ hiÖp";
	else
		return "§¹i hiÖp";
	end
end



function mayco2thang9()
local tab_Content = {
		"Ok ta muèn may vµi l¸ cê. /gheplaco",
		"Ta chØ tiÖn ghÐ qua ®©y th«i..!/no"
	}
Say("<color=pink>Thî May:<color> §Ó lµm 1 <color=green>l¸ cê quèc kh¸nh hoµn h¶o <color>cÇn: <color=while>\n1 TÊm V¶i §á, 1 Sao Vµng , 1 Cuén Kim ChØ  \n.<color>\n§¹i hiÖp cã muèn lµm kh«ng?", getn(tab_Content), tab_Content);       
end;

-----------------------------------------------------------HOA---------------------------------------------------
function gheplaco()
local kimchi= CalcItemCount(3,6, 1, 4353, -1) ; --kimchi
local vaido= CalcItemCount(3,6, 1, 4354, -1) ; --vaido
local saovang= CalcItemCount(3,6, 1, 4355, -1) ; --saovang


if kimchi < 1 and vaido < 1 and saovang < 1  then
 Talk(2, "", ""..myplayersex().." kh«ng mang theo ®ñ Nguyªn liÖu råi! ","§Ó lµm 1 <color=green>l¸ cê quèc kh¸nh hoµn h¶o <color>cÇn: <color=while>\n1 TÊm V¶i §á, 1 Sao Vµng , 1 Cuén Kim ChØ  <color>\n\n"..myplayersex().." kh«ng mang theo ®ñ nguyªn liªu.\nXin h·y kiÓm tra l¹i..!"); 
 else
AskClientForNumber("ghepoklaco",0,50,"Sè l­îng cÇn kÕt")
end
end
function ghepoklaco(num)
local kimchi= CalcItemCount(3,6, 1, 4353, -1) ; --kimchi
local vaido= CalcItemCount(3,6, 1, 4354, -1) ; --vaido
local saovang= CalcItemCount(3,6, 1, 4355, -1) ; --saovang


			num1= num*1;
			num2= num*1;
			num3= num*1;

	if ( num1 >  kimchi  and num2 >  vaido and num3 >  saovang) then
		Talk(1, "", ""..myplayersex().." cßn thiÕu "..num1-kimchi.." Kim ChØ, "..num2-vaido.." V¶i §á, "..num3-saovang.." Sao Vµng <color=yellow>\n\n"..myplayersex().." kh«ng mang theo ®ñ nguyªn liªu.<color=yellow>\nL­u ý: <color=red> Sè d­¬ng lµ sè nguyªn liÖu thiÕu, sè ©m lµ sè nguyªn liÖu sÏ d­ ra sau khi gãi hoa xong..!");
	return   end
	if (kimchi>= num1 and vaido>= num2 and saovang >= num3) then
			for i=1,num1 do
			ConsumeEquiproomItem(1,6,1,4353,-1)
			end
				for i=1,num2 do
				ConsumeEquiproomItem(1,6,1,4354,-1)
				end
					for i=1,num3 do
					ConsumeEquiproomItem(1,6,1,4355,-1)
					end
	
			for i=1, num do			
				AddItem(6,1,4357,1,0,0,0) -- 1664 ,1663,1662-- banh chung thuong, hao hang, thuong han
			end	
			Msg2Player(""..myplayersex().." May thµnh c«ng <color=green>"..num.." l¸ cê quèc kh¸nh ..!")
		return end	
		Talk(1, "", ""..myplayersex().." cßn thiÕu "..num1-kimchi.." Kim ChØ, "..num2-vaido.." V¶i §á, "..num3-saovang.." Sao Vµng <color=yellow>\n\n"..myplayersex().." kh«ng mang theo ®ñ nguyªn liªu.<color=yellow>\nL­u ý: <color=red> Sè d­¬ng lµ sè nguyªn liÖu thiÕu, sè ©m lµ sè nguyªn liÖu sÏ d­ ra sau khi gãi hoa xong..!");
	if num <  1 then
		Talk(2, "", "Chóc ®¹i hiÖp "..myplayersex().." <color=green>"..GetName().." <color>vui vÎ nh©n ngµy 2 th¸ng 9 nhe..!"); 	
	end
end
