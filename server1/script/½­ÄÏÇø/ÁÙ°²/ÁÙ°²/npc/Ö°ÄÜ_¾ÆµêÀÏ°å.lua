-- �ٰ���ְ�ܡ��Ƶ��ϰ�
-- by��Dan_Deng(2003-09-16)

function main()
	i = random(0,2)
	if (i == 0) then
		Talk(1,"","Ch� qu�n r��u : m�i kh�ch quan v�o b�n trong, u�ng v�i ch�n r��u.")
	elseif (i == 1) then
		Talk(1,"","Ch� qu�n r��u : qu�n c�a ta ��u b�n r��u t� l�m, kh�ch quan u�ng v�o b�o ��m kh�ng ch� ���c.")
	else
		Talk(1,"","Ch� qu�n r��t : ngo�i ra qu�n ta c�n n�i ti�ng v�i T�y ti�n , kh�ch quan c� mu�n d�ng th� kh�ng?")
	end
end;
