-- script viet hoa By http://tranhba.com  §¹i Lý # chøc n¨ng # nha m«n vÖ binh 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-09-16) 
-- script viet hoa By http://tranhba.com function main() 
-- script viet hoa By http://tranhba.com  Talk(1,"","Nha m«n vÖ binh # h« …… h« ……") 
-- script viet hoa By http://tranhba.com end; 

-- script viet hoa By http://tranhba.com  truy n· hÖ thèng chuyªn dông d¹ng lÖ ch©n vèn (BlackBay.2003.12.30) 

FESTIVAL06_NPCNAME = "<color=yellow> nha m«n vÖ binh :<color>"; 

Include([[\script\global\Â·ÈË_ÑÃÃÅÎÀ±ø.lua]]); 

function main(sel) 
gsoldier_entance(); 
end; 

function main_former() 
-- script viet hoa By http://tranhba.com  phÝa d­íi c¸i nµy chØ thÞ h­íng hÖ thèng hái th¨m tr­íc mÆt Player ®Ých truy n· t­¬ng quan tr¹ng th¸i tin tøc 
-- script viet hoa By http://tranhba.com  tuÇn tra ®Ých kÕt qu¶ trë vÒ sau nµy , hÖ thèng trë vÒ ®iÒu tham sæ ngãn gi÷a ®Þnh hµm sè tªn 
-- script viet hoa By http://tranhba.com AskRelayForKillerStatus("KillerCallBack") 
Talk(1,"","H« ... h« ...") 
end; 

-- script viet hoa By http://tranhba.com  phÝa d­íi c¸i nµy hµm sè lµ tuÇn tra kÕt qu¶ trë vÒ ®iÒu hµm sè , tham sæ c¸ ®Õm cïng thø tù kh«ng cho phÐp söa ®æi 
function KillerCallBack(RewardMoney, RewardTaskID, CancelMoney, CancelTaskID, OwnCount, MyTaskCount) 
-- if (RewardMoney > 0) then 
-- GetTaskMoney(0, RewardTaskID) 
-- Earn(RewardMoney) 
-- elseif (CancelMoney > 0) then 
-- GetTaskMoney(1, CancelTaskID) 
-- Earn(CancelMoney) 
	-- elseif (OwnCount + MyTaskCount > 0) then
-- Say("Ng­¬i l¸ gan lín nh­ vËy , d¸m x«ng nha m«n c«ng ®­êng , c¸i nµy téi ng­¬i ®¶m ®­¬ng næi sao ?", 4,"Thµnh lËp cÇm nhiÖm vô /CreateTask","NhËn ®uæi b¾t nhiÖm vô /QueryTask","Nh×n nhiÖm vô cña m×nh /ModifyTask","C¸i g× còng kh«ng lµm /DoNothing") 
-- else 
-- Say("Ng­¬i l¸ gan lín nh­ vËy , d¸m x«ng nha m«n c«ng ®­êng , c¸i nµy téi ng­¬i ®¶m ®­¬ng næi sao ?", 3,"Thµnh lËp cÇm nhiÖm vô /CreateTask","NhËn ®uæi b¾t nhiÖm vô /QueryTask","C¸i g× còng kh«ng lµm / DoNothing") 
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
Say("H« h« ...", 0) 
end;
