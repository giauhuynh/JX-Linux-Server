-- script viet hoa By http://tranhba.com  ��i L� # ch�c n�ng # nha m�n v� binh 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-09-16) 
-- script viet hoa By http://tranhba.com function main() 
-- script viet hoa By http://tranhba.com  Talk(1,"","Nha m�n v� binh # h� �� h� ��") 
-- script viet hoa By http://tranhba.com end; 

-- script viet hoa By http://tranhba.com  truy n� h� th�ng chuy�n d�ng d�ng l� ch�n v�n (BlackBay.2003.12.30) 

FESTIVAL06_NPCNAME = "<color=yellow> nha m�n v� binh :<color>"; 

Include([[\script\global\·��_��������.lua]]); 

function main(sel) 
gsoldier_entance(); 
end; 

function main_former() 
-- script viet hoa By http://tranhba.com  ph�a d��i c�i n�y ch� th� h��ng h� th�ng h�i th�m tr��c m�t Player ��ch truy n� t��ng quan tr�ng th�i tin t�c 
-- script viet hoa By http://tranhba.com  tu�n tra ��ch k�t qu� tr� v� sau n�y , h� th�ng tr� v� �i�u tham s� ng�n gi�a ��nh h�m s� t�n 
-- script viet hoa By http://tranhba.com AskRelayForKillerStatus("KillerCallBack") 
Talk(1,"","H� ... h� ...") 
end; 

-- script viet hoa By http://tranhba.com  ph�a d��i c�i n�y h�m s� l� tu�n tra k�t qu� tr� v� �i�u h�m s� , tham s� c� ��m c�ng th� t� kh�ng cho ph�p s�a ��i 
function KillerCallBack(RewardMoney, RewardTaskID, CancelMoney, CancelTaskID, OwnCount, MyTaskCount) 
-- if (RewardMoney > 0) then 
-- GetTaskMoney(0, RewardTaskID) 
-- Earn(RewardMoney) 
-- elseif (CancelMoney > 0) then 
-- GetTaskMoney(1, CancelTaskID) 
-- Earn(CancelMoney) 
	-- elseif (OwnCount + MyTaskCount > 0) then
-- Say("Ng��i l� gan l�n nh� v�y , d�m x�ng nha m�n c�ng ���ng , c�i n�y t�i ng��i ��m ���ng n�i sao ?", 4,"Th�nh l�p c�m nhi�m v� /CreateTask","Nh�n �u�i b�t nhi�m v� /QueryTask","Nh�n nhi�m v� c�a m�nh /ModifyTask","C�i g� c�ng kh�ng l�m /DoNothing") 
-- else 
-- Say("Ng��i l� gan l�n nh� v�y , d�m x�ng nha m�n c�ng ���ng , c�i n�y t�i ng��i ��m ���ng n�i sao ?", 3,"Th�nh l�p c�m nhi�m v� /CreateTask","Nh�n �u�i b�t nhi�m v� /QueryTask","C�i g� c�ng kh�ng l�m / DoNothing") 
-- end 
end; 

function CreateTask() 
-- OpenCreateTask() 
end; 

function QueryTask() 
-- OpenAllTask() 
end; 

function ModifyTask() 
-- OpenOwnTask() 
end; 

function DoNothing() 
Say("H� h� ...", 0) 
end;
