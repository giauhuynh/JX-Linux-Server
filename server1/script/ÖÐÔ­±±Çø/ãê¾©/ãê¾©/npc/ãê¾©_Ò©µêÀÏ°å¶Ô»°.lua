--��ԭ���� �꾩�� ҩ���ϰ�Ի�
Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )

-- ���ƻ�Ԫ�颶
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

OPTIONS = {}

function main(sel)
	Say("Hi�u Thu�c: � ch� ta ��y thu�c g� c�ng ��u c�, d��ng th�n th�, ch�a b�nh, k�o d�i tu�i th�, b� m�u ph�ng kh� ��c, ng�i mu�n mua thu�c g� ? ", 
		getn(OPTIONS),
		OPTIONS)
end

function yes()
	Sale(9) 			--�������׿�
end

if TEACHERSWITCH then
	tinsert(OPTIONS, "Mua r��u thu�c/brew")
end
tinsert(OPTIONS, "Giao d�ch/yes")
-- tinsert(OPTIONS, "Luy�n H�n Nguy�n Linh L�/refine")
tinsert(OPTIONS, "K�t th�c/Cancel")
