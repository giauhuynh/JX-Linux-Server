
-- Create By Bil4i3n
-- 25/07/2015

_BIL_TIME_EVENT_ON_PLAYER = (60*60)

Include("\\script\\global\\bil4i3n\\bill4i3n.lua");
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

function Bil_CheckTimeHaveBeenUsed()
	if Bil_CheckResetTask1212Fl(GetTask(1210)) == 1212 then
		return "<color=yellow>"..(_BIL_TIME_EVENT_ON_PLAYER/60).."<color>"
	else
	return "<color=yellow>"..floor((_BIL_TIME_EVENT_ON_PLAYER/60) - (GetTask(1212)/60)).."<color>"
	end
end

function Bil_NewEspeciallyMessenger()
	local szTitle = Bil_EnemySay[5][1].."Vi�c qu�n c� c�a Tri�u ��nh g�n ��y lu�n b� gi�c Kim bi�t tr��c, ta nghi ng� c� n�i gi�n. Nh�ng tr��c khi m�y t�n b�i lo�i n�y b� ph�t hi�n, ta mu�n r�ng tin n�y kh�p n�i ��u bi�t, ng��i c� mu�n g�p m�t ph�n s�c cho Qu�c gia kh�ng?<enter>Th�i gian Phong K� c�n l�i c�a ��i nh�n l�: "..Bil_CheckTimeHaveBeenUsed().." Ph�t";
	local tbOpt = 
	{
		{"Ta b�ng l�ng!",Bil_SureFengzh_Chek},
		{"Ta ��n �� giao nhi�m v� T�n s�",Bil_FinishFengzh},
		{"Ta mu�n x�a b� nhi�m v� T�n s�",Bil_DelFengzh},
		{"Ta mu�n t�m hi�u v� nhi�m v� T�n s�",Bil_FengzhWhat},
		{"K�t th�c ��i tho�i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function Bil_SureFengzh_Chek()

	-- do 
		-- return Talk(1, "", "V� hi�n t�i Phong k� �ang ph�t sinh l�i ngo�i � mu�n, n�n t�m th�i ��ng b�n �� n�y, th�i gian ��ng b�n �� c� th� ��n b�o tr� l�n sau, xin l�i qu� nh�n s� v� s� b�t ti�n n�y!")
	-- end

	if bilCheckTimeFengzhiqui() then return end
	local Bil_Task1212TimeUsed
	local Bil_CheckResetTask1212 = Bil_CheckResetTask1212Fl(GetTask(1210))
	if Bil_CheckResetTask1212 ~= 1212 then
		Bil_Task1212TimeUsed = GetTask(1212)
	else
		SetTask(Bil_CheckResetTask1212, 0)
		Bil_Task1212TimeUsed = GetTask(1212)
	end
	local Uworld1204 = GetTask(1204)  
	local Uworld1028 = GetTask(1028)
	if GetLevel() < 80 then
		return Talk(1,"", Bil_EnemySay[5][1].."Th�t xin l�i, tr��c m�t c�p b�c c�a ng��i kh�ng �� 80 c�p. Ti�p t�c luy�n t�p sau �� t�i t�m ta.")
	elseif Uworld1204 ~= 0 then
		return Talk(1,"", Bil_EnemySay[5][1].."Xin l�i! Nhi�m v� T�n s� c�a b�n ch�a ho�n th�nh, kh�ng th� ti�p nh�n nhi�m v� ti�p theo, xin ho�n th�nh nhi�m v� n�y tr��c, c�m �n!")
	elseif Bil_Task1212TimeUsed >= _BIL_TIME_EVENT_ON_PLAYER then
		return Talk(1, "", Bil_EnemySay[5][1].."Th�t xin l�i , h�m nay th�i gian � nhi�m v� t�n s� �� h�t, xin m�i ng�y mai tr� l�i")
	elseif GetTask(1201) ~= 0 then
		return Say(Bil_EnemySay[5][1]..GetName().." ��i nh�n ch�ng ph�i �ang l�m nhi�m v� sao, n�u �� ho�n th�nh nhi�m v� th� h�y �i tr� nhi�m v� �i, <color=red>n�u nh�n l�i nhi�m v� th� chi�n c�ng l�c tr��c s� b� t��c b�<color>, ��i nh�n c� mu�n l�m l�i nhi�m v� n�y?", 2, "Ta quy�t nh�n l�i nhi�m v�/Bil_SureFengzh","Ah, ta qu�n m�t, c�m �n ��i nh�n �� nh�c nh�/OnCancel")
	end
	Bil_SureFengzh();
end

function Bil_SureFengzh()
	SetTask(1210, tonumber(date("%y%m%d")))
	SetTask(1211,GetGameTime())  
	SetTask(1201, 10)
	NewWorld(389, 1580, 3135)
	Msg2Player("Cung ti�n <color=yellow>"..GetName().."<color> ��i nh�n l�n ���ng b�nh an!")
	if GetTask(5905) == 65 then
		bilNvTanThu:NextTask()
	end
end

function Bil_FinishFengzh()
	Bil_Uworld1201 = GetTask(1201)
	Bil_Uworld1218 = GetTask(1218)
	-- if Bil_Uworld1201 == 30 then
		-- if GetTask(1202) == 0 and GetTask(1203) == 0 then
			-- Talk(1, "", Bil_EnemySay[5][1].."C�i t�n ch�t b�m n�y ch�a c� chi�n t�ch g� c�ng ��i  nh�n th��ng �? Ng��i ��u, b�m c�i t�n n�y l�m nh�n b�nh bao cho ta!")
		-- else
			-- SetTask(1218,Bil_Uworld1218+1)
			-- Bil_flyprize()
		-- end
	-- elseif Bil_Uworld1201 == 20 then
		-- Talk(1, "", Bil_EnemySay[5][1].."C�i t�n n�y d�m <color=yellow>b� nhi�m v� gi�a ch�ng<color> c�n l�i tr� nhi�m v�! Ng��i ��u? B�m c�i t�n n�y l�m nh�n b�nh bao cho ta!")
	-- else
		-- Talk(1, "", Bil_EnemySay[5][1].."Ch�a ti�p nh�n nhi�m v� n�o ng��i c�n l�i tr� nhi�m v�! Ng��i ��u? B�m c�i t�n n�y l�m nh�n b�nh bao cho ta!")
	-- end
	
	if GetTask(1202) > 0 then
		SetTask(1218,Bil_Uworld1218+1)
		Bil_flyprize()
	else
		return Talk(1, "", Bil_EnemySay[5][1].."Hi�n t�i ng��i kh�ng c�n ph�n th��ng n�o  �� nh�n c�!")
	end
end

function Bil_flyprize()
	local Bil_ValueTask1202 = GetTask(1202)
	local Bil_ValueTask1203 = GetTask(1203)
	Ladder_NewLadder(10187, GetName(),GetTask(1205),1);
	local Uworld1207 = GetTask(1207)
	local i = random(5,20)
	AddRepute(i)
	if Bil_ValueTask1202 > 0 then
		-- Bil_messenger_giveplayerexp (Bil_ValueTask1202*10000, Bil_ValueTask1203*5000)
		Bil_messenger_giveplayerexp (Bil_ValueTask1202*8000, Bil_ValueTask1203*4000)
	end
	Msg2Player("Ch�c m�ng ng��i nh�n ���c <color=yellow>"..i.."<color> �i�m danh v�ng. ")
	SetTask(1201,0)	
	SetTask(1202, 0)
	SetTask(1203, 0)
	-- SetTask(1204,0)	
	SetTask(1207,0)	
	SetTask(1211,0)
end

function Bil_messenger_giveplayerexp(playerexpPoint, ExpNPC)
	AddOwnExp(playerexpPoint + ExpNPC)
	-- Msg2Player("B�i v� ng�i l�m nhi�m v� t�n s� bi�u hi�n ho�n h�o, ��t ���c <color=yellow>"..(playerexpPoint/10000).."<color> t�a �� v� <color=yellow>"..(ExpNPC/5000).."<color> NPC, d�ch tr�m th��ng cho ng�i <color=yellow>"..playerexpPoint.." + "..ExpNPC.."<color> �i�m kinh nghi�m !")
	Msg2Player("B�i v� ng�i l�m nhi�m v� t�n s� bi�u hi�n ho�n h�o, ��t ���c <color=yellow>"..(playerexpPoint/8000).."<color> t�a �� v� <color=yellow>"..(ExpNPC/4000).."<color> NPC, d�ch tr�m th��ng cho ng�i <color=yellow>"..playerexpPoint.." + "..ExpNPC.."<color> �i�m kinh nghi�m !")
	SetTask(1224,1) 
	SetTask(1223,0)
end

function Bil_DelFengzh()
	if GetTask(1201) == 0 then
		Talk(1, "", Bil_EnemySay[5][1]..GetName().." ��i nh�n v�n ch�a ti�p nh�n nhi�m v� T�n s�, kh�ng th� x�a b�!")
	else
		Say(Bil_EnemySay[5][1].."B�n x�c ��nh mu�n x�a b�?", 2, "��ng v�y!/Bil_DelFengzh_Sure","�� ta suy ngh� l�i!/OnCancel")
	end
end

function Bil_DelFengzh_Sure()
	SetTask(1201,0) -- Phong k�
	SetTask(1202,0) -- S�n  th�n
	SetTask(1203,0) -- thi�n b�o
	SetTask(1204,0)
	SetTask(1207,0)
	-- SetTask(1212,0) -- GameTime
	SetTask(1213,0)
	SetTask(1214,0)
	SetTask(1215,0)
	Msg2Player("Ng��i �� h�y b� th�nh c�ng nhi�m v� T�n S�.")
end

function Bil_FengzhWhat()
	local szTitle = Bil_EnemySay[5][1].."Nhi�m v� T�n S� l� nhi�m v� gi�p Tri�u ��nh ��a th� cho c�c D�ch Quan � c�c Th�nh Th�, v� g�n ��y n�i c�c trong Tri�u ��nh xu�t hi�n ph�n t�c, cho n�n trong l�c ��a th� ng��i s� g�p kh�ng �t nguy hi�m. Kh�ng c� nh�ng ng��i d�ng c�m tr� tu� si�u ph�m nh�t ��ng v� tinh th�n h�p t�c �o�n k�t th� s� r�t kh� ho�n th�nh nhi�m v�. Ch� c� ��t ��n <color=red> c�p 80 tr� l�n<color> m�i c� th� tham gia. Tr��c m�t ng��i s� g�p nh�ng tr� ng�i c�a �i sau ��y: <color=red> Phong k� t�a ��<color>. Trong nh�ng c�a �i n�y c� v� s� k� th� kh�ng gi�ng nhau v� nh�ng c� quan k� qu�i,  ng��i ph�i d�a v�o tr� tu� c�a m�nh �� c� l�a ch�n c�c k� ch�n x�c. Ta ch� c� ��I l�i nh� v�y choc ng��i th�nh c�ng, c� l�n chi�n h�u!";
	local tbOpt = 
	{
		{"Gi�i thi�u ��ng c�p ��a ��",Bil_messenger_flyhorse_Level},
		{"Gi�i thi�u nhi�m v� phong k�",Bil_messenger_flyhorse},
		{"Ta mu�n bi�t th�i gian nhi�m v�",Bil_messenger_flyhorse_LimitTime},
		{"K�t th�c ��i tho�i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function Bil_messenger_flyhorse_Level()
	local szTitle = Bil_EnemySay[5][1].."Tr��c m�t <color=red>c�p 80<color> tr� l�n c� th� tham gia nhi�m v�."
	local tbOpt = 
	{
		{"Quay l�i",Bil_FengzhWhat},
		{"K�t th�c ��i tho�i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function Bil_messenger_flyhorse()
	local szTitle = Bil_EnemySay[5][1].."Trong �i Phong K�, b�n c� th� ch�n ��n c�ng ra, nh� th� coi nh� ho�n th�nh nhi�m v� nh�ng ch� nh�n ���c �i�m danh v�ng. Trong �i, ch�ng t�i c� l�p nh�ng m�c ti�u nhi�m v� ��n gi�n: D�c ���ng b�n s� th�y nhi�u k� hi�u c�a qu�n ta �� l�i, c�ng l�c c� nhi�u gian t� Kim Qu�c. B�n ch� c�n ti�p x�c 5 t�a �� trong b�n �� c� th� ��n c�ng ra t�m B�ch D�c T��ng qu�n qua �i. Nh�ng bi�u hi�n c�a b�n ��u n�m trong t�m m�t c�a trinh s�t ta ph�i ��n. ��i v�i vi�c t�ng ��ng c�p Y�u b�i c�a b�n s� r�t c� l�i."
	local tbOpt = 
	{
		{"Quay l�i",Bil_FengzhWhat},
		{"K�t th�c ��i tho�i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function Bil_messenger_flyhorse_LimitTime()
	local szTitle = Bil_EnemySay[5][1].."Sau khi ti�p nh�n nhi�m v� T�n s�, b�n c� th�i gian <color=red>2 gi�<color> �� ho�n th�nh. Th�i gian l�m nhi�m v� m�i ng�y l� <color=red>2 gi�<color>. Ch� �! Khi � trong �i, b�n b� ch�t ho�c r�t m�ng xem nh� <color=red>nhi�m v� th�t b�i<color>!"
	local tbOpt = 
	{
		{"Quay l�i",Bil_FengzhWhat},
		{"K�t th�c ��i tho�i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function OnCancel()
end