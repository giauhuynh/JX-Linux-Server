--description: ��ԭ���� ������ ����8�˼�ɩ�ӶԻ� �䵱��50������
--author: yuanlan	
--date: 2003/5/16
-- Update: Dan_Deng(2003-08-17)

function main(sel)
	UTask_wd = GetTask(5);
	if (UTask_wd == 50*256+50) then 
		Talk(3, "select", "��ng gia t�u t�: Gia c�nh ngh�o kh�, Ti�u Nha ng�y ng�y k�u ��i, ta ��y th�n l�m m� th�y th�t �au l�ng. ", "Ng��i ch�i: ��i t�u, n�i n�y c� m�t v�n l��ng b�c, h�y mau c�m l�y. Ch� c�n c� V� �ang �� t� ch�ng ta � ��y, c�c ng��i sau n�y c�ng s� kh�ng b� ��i n�a !", "��ng gia t�u t�: Hic, ta th�t l� g�p ph�i B� T�t s�ng r�i, ta kh�ng ph�i l� �ang n�m m� ch�? B�y gi� v�n c�n c� nh�ng ng��i t�t nh� v�y!")
	elseif (UTask_wd > 50*256+50) then
		Talk(1,"","��ng gia t�u t�: V� �ang tr�n n�i ��ch th�t l� nh�ng ��i hi�p chuy�n gi�p �� ng��i kh�c, n�u kh�ng ph�i l� b�n h� th��ng ti�p t�, m� con ch�ng ta �� s�m ch�t ��i r�i!")
	else
		Talk(1,"","��ng gia t�u t�: Gia c�nh ngh�o kh�, Ti�u Nha ng�y ng�y k�u ��i, ta ��y th�n l�m m� th�y th�t �au l�ng. ")
	end
end;

function select()
	if (GetCash() >= 10000) then
		Pay(10000)
	Msg2Player("�em m�t v�n l��ng b�c c��p ���c c�a b�n c��ng ��o ��a cho ��ng gia t�u t�.")
		SetTask(5, 50*256+80)
		AddNote("�em m�t v�n l��ng b�c c��p ���c c�a b�n c��ng ��o ��a cho ��ng gia t�u t�. ")
	else
		Talk(1,"","Ng��i ch�i:H�ng b�t, m�t v�n l��ng b�c kia ta �� d�ng 1 �t r�i, ph�i l�m th� th� n�o cho ph�i? ")
		AddNote("Ng�n l��ng kh�ng ��, �i ki�m ti�n tr��c.")
	end
end;
