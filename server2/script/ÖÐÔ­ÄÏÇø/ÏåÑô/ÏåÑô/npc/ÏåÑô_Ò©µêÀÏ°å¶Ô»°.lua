--description: ��ԭ���� ������ ҩ���ϰ�Ի� �䵱�ɳ�ʦ����
--author: yuanlan	
--date: 2003/5/17
-- Update: Dan_Deng(2003-08-17)

-- ���ƻ�Ԫ�颶
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

function main(sel)
	UTask_wd = GetTask(5)
	UTask_wd60sub = GetByte(GetTask(17),1)
	if (UTask_wd == 60*256+20) then
		if (UTask_wd60sub == 2) then 
			Talk(2, "", "B�y gi� chi�n tr��ng d�ch t�nh lan tr�n, xin h�i c� bi�n ph�p g�? ", "Mu�n tr� d�ch b�nh c�n 5 lo�i thu�c <color=Red> h�p hoan ? huy�n tham ? ���ng quy ? ph�ng k� ? chu sa <color>. �i <color=Red>Ph�c Ng�u S�n ��ng<color> t�m!")
			SetTask(17, SetByte(GetTask(17),1,5))
			AddNote("Ch� ti�m thu�c (201,202) k�u �i Ph�c Ng�u S�n ��ng t�m 5 lo�i thu�c.")
		elseif (UTask_wd60sub == 5) then
			if ( HaveItem(107) == 1 and HaveItem(134) == 1 and HaveItem(135) == 1 and HaveItem(136) == 1 and HaveItem(137) == 1) then
				Talk(2, "", "�� t�m ���c 5 lo�i thu�c, m�i ng��i luy�n ch� thu�c cho binh l�nh � chi�n tr��ng d�ng !!", "Qu�c gia g�p n�n, th�t phu h�u tr�ch. Y�n t�m, ta nh�t ��nh luy�n ch�, k�p th�i ��a ��n!")
				DelItem(107)
				DelItem(134)
				DelItem(135)
				DelItem(136)
				DelItem(137)
				SetTask(17, SetByte(GetTask(17),1,8))
				AddNote("T�m �� 5 lo�i thu�c, giao cho Ch� ti�m thu�c.")
				Msg2Player("T�m �� 5 lo�i thu�c, giao cho Ch� ti�m thu�c.")
			else
				Say("Mu�n tr� d�ch b�nh c�n 5 lo�i thu�c <color=Red>h�p hoan ? huy�n tham ? ���ng quy ? ph�ng k� ? chu sa <color>. Thi�u m�t th� c�ng kh�ng ���c, n�m lo�i d��c li�u n�y sinh tr��ng �<color=Red> Ph�c Ng�u S�n ��ng<color>",
					2,
					"Giao d�ch/yes",
					"Kh�ng giao d�ch/no")
			end
		else
			Say("C�c lo�i thu�c tr� th��ng b�n ti�m ��u c�, ng��i mu�n mua thu�c g� ?",
				2,
				"Giao d�ch/yes",
				-- "Ta mu�n �i�u ch� h�n nguy�n linh /refine",
				"Kh�ng giao d�ch/no")
		end
	else
		Say("C�c lo�i thu�c tr� th��ng b�n ti�m ��u c�, ng��i mu�n mua thu�c g� ?",
			2,
			"Giao d�ch/yes",
			-- "Ta mu�n �i�u ch� h�n nguy�n linh /refine",
			"Kh�ng giao d�ch/no")
	end
end

function yes()
	Sale(12)  			--�������׿�
end

function no()
end
