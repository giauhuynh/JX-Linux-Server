-- ���� ְ�� ҩ���ϰ�
-- By: Dan_Deng(2003-09-16)
Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )

OPTIONS = {}

function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

function main()
	Say("V� kh�ch n�y mua m�t �t thu�c ph�ng th�n �i.",
		getn(OPTIONS),
		OPTIONS)
end;

function yes()
	Sale(12)  			--�������׿�
end

if TEACHERSWITCH then
	-- tinsert(OPTIONS, "���ҷ�ҩ��/brew")
end
tinsert(OPTIONS, "Giao d�ch/yes")
tinsert(OPTIONS, "Kh�ng c�n/Cancel")
