--�������� ���踮 ҩ��ϰ�Ի�
-- VH by anhdung9992001 clbgamesvn--
Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )

-- ���ƻ�Ԫ�颶
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

OPTIONS = {}

function main(sel)
	Say("Ti�m thu�c l�o b�n: Ta ��y n�i n�y b�n th�o d��c c� b�nh ch�a b�nh, v� b�nh d��ng sinh. Kh�ng lo�i d��c li�u n�o m� ta kh�ng b�n!.",
		getn(OPTIONS),
		OPTIONS)
end

function yes()
	Sale(12) 		--�������׿�
end;

if TEACHERSWITCH then
	tinsert(OPTIONS, "Gi�p c�t r��u thu�c/brew")
end
tinsert(OPTIONS, "Giao d�ch/yes")
-- tinsert(OPTIONS, "Tinh ch� h�n nguy�n linh l�/refine")
tinsert(OPTIONS, "Kh�ng giao d�ch/Cancel")
