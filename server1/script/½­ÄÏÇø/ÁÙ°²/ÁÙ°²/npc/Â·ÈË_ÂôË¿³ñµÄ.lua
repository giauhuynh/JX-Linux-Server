-- �ٰ������ˡ���˿���
-- by��Dan_Deng(2003-09-16)

function main()
	i = random(0,3)
	if (i == 0) then
		Talk(1,"","B�n l�a : l�a t�t ��y, l�a h�o h�ng ��y, gh� v�o mua nhanh.")
	elseif (i == 1) then
		Talk(1,"","B�n l�a : ta ��y b�n l�a t�t tuy�t ph�m, g� c�ng c�, c�m,ph��ng,nh�ng,g�m...m�i kh�ch quan ch�n.")
	elseif (i == 2) then
		Talk(1,"","B�n l�a : m�i kh�ch quan xem th� c�i n�y, ��y l� l�a n�i ti�ng h�ng ch�u,b�o ��m m�c v�o nh� nh� l�ng h�ng,ch�t li�u tuy�t ph�m.")
	else
		Talk(1,"","B�n l�a : c�n ��y l� g�m th��ng h�ng,t�t c� ��u ���c th�u b�ng tay b�i c�c th� th� c�ng h�ng ��u,nh�n s�ng ��ng nh� th�t.")
	end
end;
