
-- \script\__\npc_kim_son_chuong_mon_nhan.lua

Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
function about_tong() 
Talk(6,"","Nh� ng��i h�i th�nh l�p bang h�i c� �i�u ki�n g� , t�i ��y ta t� t� n�i cho ng��i nghe !","��u ti�n ng��i nh�t ��nh ph�i xu�t s�, ti�p theo ng��i ko l� th�nh vi�n c�a bang h�i n�o kh�c!","��t t�i nh�ng y�u c�u n�y ng��i ch� c�n ��n chi�n tr��ng t�ng kim ��t ���c m�t thanh nh�c v��ng ki�m l�y c�i n�y l�m t�n v�t bang ch� l� ���c r�i . n�u nh� ng��i th�nh l�p bang ph�i c� nhi�u ng��i �ng h� th� c� th� v�n h�nh bang h�i ch�nh th�c","��u ti�n ng��i ph�i c� n�ng l�c , 3 ng�y sau khi l�p bang �t nh�t ph�i t�m ���c 16 ng��i c�ng ng��i ch� th� t��ng ��u gia nh�p bang h�i, n�u nh� kh�ng �� �i�u ki�n l�p t�c gi�i t�n bang h�i kh�ng c� bi�n ph�p kh�c , c�i n�y c� th� g�i l� 3 ng�y kh�o nghi�m k�'."," � bang h�i c� 16 ng��i sau kh�o nghi�m giang h� s� c�ng nh�n bang  , n�u nh� 3 h�m sau kh�ng �� 16 ng��i giang h� c�ng kh�ng th�a nh�n bang h�i ng��i","Cu�i c�ng , th�nh l�p bang h�i ph�i c� l��ng l�n ti�n b�c . c� g�ng ��t t�i m�c ti�u �i !") 
end 

function main() 
	Tong_name,oper = GetTong() 
	
	if GetTask(5883) == 2308 then
		if Tong_name == "" or Tong_name == nil then
			return Talk(1, "Direct_CreateTong", "V�n ch�a quy�t ��nh ���c bang h�i c�a m�nh sao?")
		else
			SetTask(5883, 0)
		end
	end
	
	if Tong_name == "" or Tong_name == nil then
		if (GetCamp() == 4) and (GetLevel() >= 90) and (HaveItem(195) == 1)  then
			Say("<color=Orange>Kim s�n ch��ng m�n nh�n<color>: L�i c� ng��i ��n t�m ta ph�i ch�ng l� v� bang h�i , b�t ��u chuy�n kh�i nghi�p giang h� !",2,"B�t ��u x�y d�ng bang /create_pay","Ch� m�t ch�t /wait_a_moment")
		else
			Say("�� th�nh l�p bang h�i, v� thi�u hi�p c�n ph�i c� <enter><color=yellow>1 Nh�c V��ng Ki�m, ��ng c�p tr�n 90, mang theo 200   v�n l��ng v� �� xu�t s�<color>, �� �i�u ki�n h�y ��n ��y g�pta!")
		end
	else
		Say("<color=Orange>Kim s�n ch��ng m�n nh�n<color>: V� thi�u hi�p ��n ��y t�m ta c� vi�c g� kh�ng?", 2, "T�m hi�u ph��ng ph�p th�nh l�p bang h�i/about_tong", "Ch�o ng�i ta �i ��y./wait_a_moment")
	end
end 

function create_pay() 
Say("<color=Orange>Kim s�n ch��ng m�n nh�n<color>: nh� v�y , ng��i ch� c�n c� ��y �� ti�n b�c �� cho bang ph�i c� th� ph�t tri�n l�n l� ���c r�i , n�i th� d� nh� c� c� 200 v�n l��ng b�c �i . ",2,"Kh�ng th�nh v�n �� , ta �� c� 200 v�n l��ng b�c /create_pay_yes","Qu� ph� ti�n , �t m�t ch�t c� ���c hay kh�ng /create_pay_no") 
end 

function create_pay_yes()
	if (GetCash() >= 2000000) then 
		Pay(2000000) 
		DelItem(195) 
		SetTask(99,1) 
		SetTask(5883,2308) 
		Direct_CreateTong() 
	else 
		Talk(1,"","<color=Orange>Kim s�n ch��ng m�n nh�n<color>: mu�n th�nh l�p bang h�i ph�i c� n�n kinh t� �n ��nh, khi n�o c� �� ti�m l�c kinh t� th� h�y quay l�i t�m ta.") 
	end 
end 

function create_pay_no() 
	Talk(1,"","<color=Orange>Kim s�n ch��ng m�n nh�n<color>: mu�n th�nh l�p bang h�i ph�i c� n�n kinh t� �n ��nh, khi n�o c� �� ti�m l�c kinh t� th� h�y quay l�i t�m ta, xem ra nh� ng��i v�n ch�a mu�n l�p bang r�i.") 
end 

function Direct_CreateTong() 
	CreateTong(1) 
end 

function wait_a_moment() 
end 

function gettongownercity() 
local strTongName = GetTongName() 
if (strTongName == nil or strTongName == "") then 
return 0 
end 
local strCityTongName 
for nCityID=1, 7 do 
strCityTongName = GetCityOwner(nCityID) 
if (strCityTongName ~= "" and strCityTongName == strTongName) then 
return nCityID 
end 
end 
return 0 
end 

function check_award_condition(city_index, show_talk) 
if (city_index == 0) then 
if (show_talk == 1) then 
Talk(1, "", "<#> ch� c� chi�m l�nh th�nh ph� ��ch bang ph�i m�i c� th� d�n t��ng , d�n huynh �� c�a m�nh �i chi�m l�nh m�t t�a th�nh �i !") 
end 
return 0 
end 

local tong_master = GetTongMaster() 
local player_name = GetName() 
if (tong_master ~= player_name) then 
if (show_talk == 1) then 
Talk(1, "", "<#> ch� c� bang ch� m�i c� th� nh�n l�y bang ph�i t��ng th��ng , g�i bang ch� t�i ��y ") 
end 
return 0 
end 

local wday = tonumber(date("%w")) 
local hour = tonumber(date("%H")) 
if (wday ~= 1 or hour < 9 or hour >= 20) then 
if (show_talk == 1) then 
Talk(1, "", "<#> ch� c� m�i tu�n m�t 9:00~20:00 m�i l� d�n t��ng th�i gian , ��n l�c �� tr� l�i �i ") 
end 
return 0 
end 

local date = tonumber(date("%Y%m%d")) 
if (date == get_citybonus_date(city_index)) then 
if (show_talk == 1) then 
Talk(1, "", "<#> tu�n n�y ��ch ph�n th��ng �� l�nh , cu�i tu�n tr� l�i �i . ") 
end 
return 0 
end 

return 1 
end 

function talk_citytong_award() 
-- local city_index = gettongownercity() 
-- if (check_award_condition(city_index, 1) == 1) then 
-- Say("<#> nh�n l�y th�nh ch� bang h�i t��ng th��ng ", 
-- 2, 
-- "<#> ta mu�n d�n 60 c� /#take_tong_award(60)", 
-- "<#> ta t�m th�i kh�ng d�n /nothing") 
-- end 
end 

-- script viet hoa By http://tranhba.com  nh�n l�y bao ti�n l� x� 
function take_tong_award(count) 
-- script viet hoa By http://tranhba.com  m�t bao ti�n l� x� chi�m m�t c�ch t� 
-- if (CalcFreeItemCellCount() < count) then 
-- Talk(1, "", "<#> l�ng c�a ng��i t�i ��y , s�a sang l�i sau n�a d�n t��ng .") 
-- return 
-- end 

-- local city_index = gettongownercity() 
-- if (check_award_condition(city_index, 0) == 0) then 
-- return 
-- end 

-- local today = tonumber(date("%Y%m%d")) 
-- set_citybonus_date(city_index, today) 
-- script viet hoa By http://tranhba.com  cho bao ti�n l� x� 
-- for i = 1, count do 
-- AddItem(6,1,1535,1,1,1) 
-- end 
-- local msg = date("[%y-%m-%d %H:%M] ") .. GetAccount() .. "(".. GetName().. ") get " .. count .. " <#> ��i bao ti�n l� x� from kim s�n ch��ng m�n nh�n " 
-- WriteLog(msg); 
-- Talk(1, "", "<#> ��y l� ng��i c�a ��ch ph�n th��ng , c�m �i �i ") 
end 
