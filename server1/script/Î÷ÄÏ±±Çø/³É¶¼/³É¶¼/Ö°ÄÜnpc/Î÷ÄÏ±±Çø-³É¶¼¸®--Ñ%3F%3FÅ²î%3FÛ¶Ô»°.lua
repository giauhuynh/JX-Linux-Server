-- script viet hoa By http://tranhba.com  t�y nam b�c khu th�nh �� ph� nha m�n sai d�ch ��i tho�i th� gi�i nhi�m v� # th�nh �� gi�t heo r�ng # 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-03-19) 

FESTIVAL06_NPCNAME = "<color=yellow>:<color>"; 

Include("\\script\\global\\repute_head.lua")

Include([[\script\global\·��_��������.lua]]); 

function main(sel)
    -- gsoldier_entance();
Talk(1,"","Ng��i d�m x�ng v�o nha m�n? th�t ��ng l� �n gan h�m m�t g�u r�i")
end;

function main_former() 
Uworld11 = GetTask(11) 
if (Uworld11 == 100) then -- script viet hoa By http://tranhba.com  nhi�m v� ho�n th�nh 
W11_prise() 
elseif (Uworld11 < 255) and (Uworld11 >= 1) then -- script viet hoa By http://tranhba.com  nhi�m v� trung 
Talk(1,"","Mu�n d�n t��ng a ? �i gi�t m��i con heo r�ng tr� l�i l�i n�i !") 
elseif (Uworld11 > 255) then -- script viet hoa By http://tranhba.com  nhi�m v� �� ho�n th�nh 
Talk(1,"","Th�nh �� ph� c�n c� r�t nhi�u s�n , th��ng c� heo r�ng xu�t hi�n , l�n n�y c� ng��i m�i c� th� b�o ��m n�m nay ��ch thu th�nh .") 
else -- script viet hoa By http://tranhba.com  kh�ng ti�p nh�n v� 
Talk(1,"","Ng��i d�m x�ng v�o nha m�n ? th�t l� �n r�i gan h�m m�t g�u li�u !") 
end 
end; 

function W11_prise() 
Talk(1,"","�� gi�t ch�t m��i con heo r�ng ? th�t t�t qu� , ta ��i bi�u th�nh �� d�n ch�ng c�m t� ng��i c�ng c�c v� anh h�ng . ��y l� 500 hai t��ng th��ng !") 
Earn(500) 
SetTask(11,date("%Y%m%d")) 
i = random(0,99) 
if (i < 50) then -- script viet hoa By http://tranhba.com  50% t� l� 
x = 3 
elseif (i < 85) then -- script viet hoa By http://tranhba.com  35% t� l� 
x = 4 
else -- script viet hoa By http://tranhba.com  15% t� l� 
x = 5 
end 
AddRepute(x) 
Msg2Player("Nhi�m v� ho�n th�nh , t��ng th��ng 50 hai , ng��i danh v�ng gia t�ng "..x.." �i�m .") 
end; 
