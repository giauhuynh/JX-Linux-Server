
-- ====================== �ļ���Ϣ ======================

-- ������Եonline ת������ ��������������ƪ ����
-- FileName: jiayi_shengong.lua
-- Edited: �ӷ���
-- 2007-03-30	20:14:00

-- ======================================================

Include("\\script\\task\\metempsychosis\\task_func.lua")

function main()
	if GetLevel() >= 180 then
		if (GetTask(TSK_ZHUANSHENG_FLAG) == 0) then
			SetTask(TSK_ZHUANSHENG_FLAG,1);
			Msg2Player("<color=green>�� h�c ���c <B�c ��u Tr��ng Sinh Thu�t - C� S� Thi�n>!")
			Say("<color=orange>B�c ��u Tr��ng Sinh Thu�t<color>: <color=green>�� h�c ���c B�c ��u Tr��ng Sinh Thu�t - C� S� Thi�n<color> nh�ng v� c�ng v�n ch�a ���c n�ng c�p, xem ra trong ��y v�n c� �i�u  b� �n v�n ch�a ���c kh�m ph�.<enter>C�n ��n Minh Nguy�t Tr�n g�p Minh nguy�t l�o nh�n �� h�c ti�p cu�n B�c ��u Tr��ng Sinh Thu�t - T�m Ph�p Thi�n m�i c� th� hi�u ���c h�t � ngh�a c�a n�!", 0)
			return 0
		else
			Say("<color=orange>B�c ��u Tr��ng Sinh Thu�t<color>: Ng��i �� ��c hi�u quy�n m�t t�ch n�y, kh�ng c�n ��c th�m n�a!", 0)
			return 1
		end
	else
		Say("<color=orange>B�c ��u Tr��ng Sinh Thu�t<color>: Ng��i d��i ��ng c�p 180 nh�n v�o s� kh�ng hi�u ��y l� cu�n m�t t�ch ghi ch�p v� m�n v� c�ng n�o!", 0)
		return 1
	end
end
