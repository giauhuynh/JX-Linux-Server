--���ϱ��� �ɶ��� ҩ��ϰ�Ի�

-- ���ƻ�Ԫ�颶
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

function main(sel)
	Say("<color=yellow>Ch� ti�m thu�c<color>: ta l�c c�n tr�, mu�n l�m m�t danh y gi�ng nh� Hoa ��, Sau �� ta ph�i l�y v� r�i sinh con, v� nu�i gia ��nh, ch� ��nh ph�i m� ra ti�m thu�c n�y. Con ng��i ta ng�y c�ng l�i th�i d�i d�ng, ng��i mu�n mua thu�c ph�i kh�ng?",
		2,
		"Giao d�ch/yes",
		-- "Tinh ch� h�n nguy�n linh l�/refine",
		"Kh�ng giao d�ch/Cancel")
end

function yes()
	Sale(15) 		--�������׿�
end
