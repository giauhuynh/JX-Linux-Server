-- �ٰ���ְ�ܡ�ҩ���ϰ�
-- by��Dan_Deng(2003-09-16)

-- ���ƻ�Ԫ�颶
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

function main()
	Say(10855,
		2,
		"Giao d�ch/yes",
		-- "Luy�n ch?h�n nguy�n linh l?refine",
		"Kh�ng giao d�ch/Cancel")
end;

function yes()
	Sale(12)  				--�������׿�
end
