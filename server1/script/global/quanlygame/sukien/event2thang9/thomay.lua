
function main(NpcIndex)
dofile("script/global/quanlygame/sukien/event2thang9/thomay.lua");
local tab_Content = {
	"Ta mu�n may l� c� qu�c kh�nh/mayco2thang9",
	"Nh�n ti�n gh� qua th�i/no"
	}
Say("<color=pink>Th� may:<color>\n2 th�ng 9 theo th�ng l� l� ng�y qu�c kh�nh vi�t nam ��i hi�p c�n ph�i treo c� theo ��ng l�nh c�a quan sai kh�ng bi�t ��i hi�p c� c�n may c� kh�ng?", getn(tab_Content), tab_Content);       
end;

function myplayersex()
	if GetSex() == 1 then 
		return "N� hi�p";
	else
		return "��i hi�p";
	end
end



function mayco2thang9()
local tab_Content = {
		"Ok ta mu�n may v�i l� c�. /gheplaco",
		"Ta ch� ti�n gh� qua ��y th�i..!/no"
	}
Say("<color=pink>Th� May:<color> �� l�m 1 <color=green>l� c� qu�c kh�nh ho�n h�o <color>c�n: <color=while>\n1 T�m V�i ��, 1 Sao V�ng , 1 Cu�n Kim Ch�  \n.<color>\n��i hi�p c� mu�n l�m kh�ng?", getn(tab_Content), tab_Content);       
end;

-----------------------------------------------------------HOA---------------------------------------------------
function gheplaco()
local kimchi= CalcItemCount(3,6, 1, 4353, -1) ; --kimchi
local vaido= CalcItemCount(3,6, 1, 4354, -1) ; --vaido
local saovang= CalcItemCount(3,6, 1, 4355, -1) ; --saovang


if kimchi < 1 and vaido < 1 and saovang < 1  then
 Talk(2, "", ""..myplayersex().." kh�ng mang theo �� Nguy�n li�u r�i! ","�� l�m 1 <color=green>l� c� qu�c kh�nh ho�n h�o <color>c�n: <color=while>\n1 T�m V�i ��, 1 Sao V�ng , 1 Cu�n Kim Ch�  <color>\n\n"..myplayersex().." kh�ng mang theo �� nguy�n li�u.\nXin h�y ki�m tra l�i..!"); 
 else
AskClientForNumber("ghepoklaco",0,50,"S� l��ng c�n k�t")
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
		Talk(1, "", ""..myplayersex().." c�n thi�u "..num1-kimchi.." Kim Ch�, "..num2-vaido.." V�i ��, "..num3-saovang.." Sao V�ng <color=yellow>\n\n"..myplayersex().." kh�ng mang theo �� nguy�n li�u.<color=yellow>\nL�u �: <color=red> S� d��ng l� s� nguy�n li�u thi�u, s� �m l� s� nguy�n li�u s� d� ra sau khi g�i hoa xong..!");
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
			Msg2Player(""..myplayersex().." May th�nh c�ng <color=green>"..num.." l� c� qu�c kh�nh ..!")
		return end	
		Talk(1, "", ""..myplayersex().." c�n thi�u "..num1-kimchi.." Kim Ch�, "..num2-vaido.." V�i ��, "..num3-saovang.." Sao V�ng <color=yellow>\n\n"..myplayersex().." kh�ng mang theo �� nguy�n li�u.<color=yellow>\nL�u �: <color=red> S� d��ng l� s� nguy�n li�u thi�u, s� �m l� s� nguy�n li�u s� d� ra sau khi g�i hoa xong..!");
	if num <  1 then
		Talk(2, "", "Ch�c ��i hi�p "..myplayersex().." <color=green>"..GetName().." <color>vui v� nh�n ng�y 2 th�ng 9 nhe..!"); 	
	end
end
