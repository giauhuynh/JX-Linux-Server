-- ���� ����NPC ���ң����̷�30������
-- by��Dan_Deng(2003-07-26)

function main()
	UTask_cy = GetTask(6)
	if ((UTask_cy == 30*256+40) and (HaveItem(2) == 0)) then		--30�����������
		Talk(5,"L30_pay","Kim nhi c� kh� ch�n th� ��i phong thu a, b� li�u nh�t m�n th��ng ��ch ng� h�.","Ng�i c� Ng�n tuy�t ng� sao?","Ng�n tuy�t ng�, ta h�m nay c�u ���c ��n m�y con.","Ng�i c� th� b�n cho ta m�t �t ���c kh�ng?","C�ng ���c, ch� c�n ��a ta 1000 l��ng.")
	else
		Talk(1,"","Thuy�n gia: ��p n��c ��i L� u�n quanh, anh em ng�n s�ng c�ch n�i, n�i s�ng mu�n tr�ng xa c�ch, mu�n g�p c�ng kh�ng th� g�p ���c.")
--		Talk(1,"","���ң����������Ǹ��Ѵ����������չ鵴�Ǹ��Ѽҷ�����")
	end
end;

function L30_pay()
	if (GetCash() >= 1000) then
		Pay(1000)
		AddEventItem(2)
		AddNote("Mua ���c ng�n tuy�t ng�.")
		Msg2Player("Mua ���c ng�n tuy�t ng� t�i ch� Thuy�n Gia.")
	else
		Talk(1,"","Kh�ng c� ti�n, mua b�n c�i g� ���c ��y.")
	end
end;
