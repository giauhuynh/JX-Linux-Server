-- script viet hoa By http://tranhba.com  t�y b�c nam khu ph��ng t��ng ph� nha m�n sai d�ch ��i tho�i 
-- script viet hoa By http://tranhba.com function main(sel) 
-- script viet hoa By http://tranhba.com Say("Nha m�n sai d�ch # nha m�n tr�ng ��a , kh�ng c� chuy�n g� kh�ng mu�n � ch� n�y h�t chuy�n du #", 0) 
-- script viet hoa By http://tranhba.com end; 

-- script viet hoa By http://tranhba.com  truy n� h� th�ng chuy�n d�ng d�ng l� ch�n v�n (BlackBay.2003.12.30) 
FESTIVAL06_NPCNAME = "<color=yellow>:<color>"; 

Include([[\script\global\·��_��������.lua]]); 

function main(sel) 
-- gsoldier_entance(); 
Talk(1, "", "Quan ph� l� n�i c�m ��a, V� huynh ��i ��ng lui t�i ��y")
end; 

function main_former() 
-- script viet hoa By http://tranhba.com  ph�a d��i c�i n�y ch� th� h��ng h� th�ng h�i th�m tr��c m�t Player ��ch truy n� t��ng quan tr�ng th�i tin t�c 
-- script viet hoa By http://tranhba.com  tu�n tra ��ch k�t qu� tr� v� sau n�y , h� th�ng tr� v� �i�u tham s� ng�n gi�a ��nh h�m s� t�n 
-- script viet hoa By http://tranhba.com AskRelayForKillerStatus("KillerCallBack") 
Say("�i m�t ch�t �i # kh�ng mu�n � n�i n�y �i t�i �i lui ��ch , n�i n�y ch�nh l� tr�ng ��a ", 0) 
end; 

-- script viet hoa By http://tranhba.com  ph�a d��i c�i n�y h�m s� l� tu�n tra k�t qu� tr� v� �i�u h�m s� , tham s� c� ��m c�ng th� t� kh�ng cho ph�p s�a ��i 
function KillerCallBack(RewardMoney, RewardTaskID, CancelMoney, CancelTaskID, OwnCount, MyTaskCount) 
-- if (RewardMoney > 0) then 
-- script viet hoa By http://tranhba.com  ph�a d��i c�i n�y h�m s� th�ng b�o h� th�ng nh� ch�i �� nh�n l�y ti�n th��ng , ch� � th� nh�t tham s� 0 b�y t� l�nh th��ng kim , th� hai tham s� b�y t� v� c�i n�o nhi�m v� l�nh th��ng kim 
GetTaskMoney(0, RewardTaskID) 
-- Earn(RewardMoney) 
-- elseif (CancelMoney > 0) then 
-- script viet hoa By http://tranhba.com  ph�a d��i c�i n�y h�m s� th�ng b�o h� th�ng nh� ch�i �� nh�n l�y lui v� ��ch ng�n ��ch kim , ch� � th� nh�t tham s� 1 b�y t� d�n lui kim , th� hai tham s� b�y t� v� c�i n�o nhi�m v� d�n lui kim 
-- GetTaskMoney(1, CancelTaskID) 
-- Earn(CancelMoney) 
	-- elseif (OwnCount + MyTaskCount > 0) then
-- Say("Ng��i �n r�i gan h�m m�t g�u li�u sao ? nhi�u lo�n nha m�n t�i ng��i ��m ���ng n�i sao ", 4,"Th�nh l�p l�ng b�t nhi�m v� /CreateTask","Ti�p nh�n l�ng b�t nhi�m v� /QueryTask","Nh�n nhi�m v� c�a m�nh /ModifyTask","C�i g� c�ng kh�ng l�m /DoNothing") 
-- else 
-- Say("Ng��i �n r�i gan h�m m�t g�u li�u sao ? nhi�u lo�n nha m�n t�i ng��i ��m ���ng n�i sao ?", 3,"Th�nh l�p l�ng b�t nhi�m v� /CreateTask","Ti�p nh�n l�ng b�t nhi�m v� /QueryTask","C�i g� c�ng kh�ng l�m /DoNothing") 
-- end 
end; 

function CreateTask() 
-- script viet hoa By http://tranhba.com  ph�a d��i c�i n�y h�m s� th�ng b�o kh�ch h�ng b�ng m� ra khai s�ng nhi�m v� gi�i m�t 
OpenCreateTask() 
end; 

function QueryTask() 
-- script viet hoa By http://tranhba.com  ph�a d��i c�i n�y h�m s� �em t�t c� c� th� nh�n l�y ��ch nhi�m v� truy�n t�ng cho nh� ch�i kh�ch h�ng b�ng 
OpenAllTask() 
end; 

function ModifyTask() 
-- script viet hoa By http://tranhba.com  ph�a d��i c�i n�y h�m s� �em s� �� nh�n l�y ��ch nhi�m v� c�ng v�i �� khai s�ng nhi�m v� truy�n t�ng cho nh� ch�i kh�ch h�ng b�ng 
OpenOwnTask() 
end; 

function DoNothing() 
Say("�i m�t ch�t �i # kh�ng mu�n � n�i n�y �i t�i �i lui ��ch , n�i n�y ch�nh l� tr�ng ��a ", 0) 
end;
