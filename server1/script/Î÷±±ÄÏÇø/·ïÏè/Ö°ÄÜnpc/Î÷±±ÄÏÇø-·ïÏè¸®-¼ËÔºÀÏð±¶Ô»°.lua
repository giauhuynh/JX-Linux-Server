--�������� ���踮 ��Ժ���Ի�

function main(sel)

if ( GetSex() == 0 ) then      -- ����Ա�Ϊ��

	i = random(0,2)
	
	if (i == 0) then
	Say("K� vi�n l�o b�n: C� c�u \"M� chi ��ch b� di, tuy ��c ��ch h�n\", ng��i c� nghe qua ch�? ",0)
	return
	end

	if (i == 1) then
	Say("K� vi�n l�o b�n: � ch� ta kh�ng thi�u th� �� vui ��a, b�t ch�t th�i gian v�o ��y. S� kh�ng u�ng c�ng ��n ��y ��u. N�o! C�ng t� �i v�o ��a vui m�t ch�t.", 0)
	return
	end

	if (i == 2) then
	Say("K� vi�n l�o b�n: L�o gia, ng��i th�ch c� n��ng n�o? � ch� ta to�n l� qu�c s�c thi�n h��ng, ��m b�o s� l�m ng�i h�i l�ng.", 0)
	return
	end

else						  -- ����Ա�ΪŮ

	Say("K� vi�n l�o b�n: ��y l� n�i vui ch�i c�a c�nh nam nhi, ph�n n� ng��i c�ng ��n ��y �. ��ng l� lo�i ph�n n� h� h�ng m�. Ta ��y kh�ng ti�p.", 0)

end;



end;
