--¸½ºþÇø °Ý¸êÏØ ÔÓ»õµêµÏ°å¶Ô»°¡¡ÌìÝõ40¼¶ÈÎÎñ
-- Update: Dan_Deng(2003-08-16)
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\global\\global_zahuodian.lua");
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
function main(sel)
	local tbDailog = DailogClass:new(GetNpcName(GetLastDiagNpc()))
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog)
	tbDailog.szTitleMsg = "<npc>Tr­íc ®©y ta lµ ng­êi b¸n hµng rong, tÝch cãp ®­îc Ýt vèn, më tiÖm t¹p hãa nµy"
	tbDailog:AddOptEntry("Giao dÞch", yes)
	-- tbDailog:AddOptEntry("Kh«ng giao dÞch", no)
	tbDailog:Show()
end

function yes()
Sale(38);  			
end;

function no()
end;
