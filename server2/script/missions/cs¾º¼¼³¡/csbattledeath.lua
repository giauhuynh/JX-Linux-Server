Include("\\script\\missions\\csbattlelib\\csbattledeath.lua");
Include("\\script\\missions\\cs������\\���䳡head.lua");

function GetBonus() 
-- script viet hoa By http://tranhba.com  ng�u nhi�n ��a m�u b�nh ho�c lam b�nh 
if (random(0,1) == 1) then 
AddItem(1,0,0,2,0,0) 
else 
AddItem(1,1,0,2,0,0) 
end; 
Earn(MS_WIN_MONEY); 
end;
