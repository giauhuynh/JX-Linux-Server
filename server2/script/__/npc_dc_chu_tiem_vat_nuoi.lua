--\script\��ԭ����\����\npc\����_�����ϰ���Ի�.lua

function main()
	return Say("<color=orange>Ch� ti�m v�t nu�i<color>: Ta chuy�n cung c�p c�c nhu y�u ph�m cho v�t nu�i, ch�ng hay c�c h� ��n ti�m mu�n mua g�?", 2, "Giao d�ch/gdnow", "th�i/No")
end

function gdnow()
	Sale(192)
end

function No() return end