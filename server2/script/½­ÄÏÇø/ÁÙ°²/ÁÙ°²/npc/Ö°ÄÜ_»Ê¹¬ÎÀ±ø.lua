-- �ٰ���ְ�ܡ��ʹ���������������ؤ��50������
-- by��Dan_Deng(2003-09-16)

function main()
		UTask_gb = GetTask(8)
	if ((UTask_gb >= 50*256+30) and (UTask_gb <60)) then		-- �������Σ�
		Talk(3,"","T�o c�ng c�ng c� l�nh kh�ng ph�n s� kh�ng ���c v�o cung ! �i ra.",": Ta c� th�ng h�nh l�nh b�i !","C� th�ng h�nh l�nh b�i xin m�i v�o! ")
--		SetTask(8,50*256+40)
	elseif (UTask_gb == 50*256+20) and (HaveItem(139) == 1) then	-- ���ڶ��Σ�
		Msg2Player("Ch�ng th�c th�ng h�nh l�nh th�t m�i v�o trong. ")
		NewWorld(177, 1569, 3169)
	elseif (UTask_gb == 50*256+10) then		--����50�����񣨵�һ����
		Talk(3,"","��ng l�i ng��i d�m ch�y lo�n n�i n�y �! ","T�i h� l� c�i bang �� t� c� m�t v�t v� c�ng quan tr�ng mu�n d�ng cho ho�ng th��ng","Ho�ng th��ng kh�ng ph�i ai c�ng c� th� di�n ki�n,ph�i c� th�ng h�nh l�nh c�a tr��ng ��i nh�n m�i c� th� v�o")
		SetTask(8,50*256+20)
	else
		i = random(0,2)
		if (i == 0) then
			Talk(1,"","V� binh ho�ng cung : ng��i th�t to ran bi�t ��y l� n�i n�o kh�ng m� d�m v�o ��y �i d�o.")
		elseif (i == 1) then
			Talk(1,"","V� binh ho�ng cung : ho�ng cung l� c�m ��a t� ti�n �i v�o ch� c� ch�t")
		else
			Talk(1,"","V� binh ho�ng cung : ��ng l�i ! ng��i ch�n s�ng r�i, ho�ng cung c�m ��a m� d�m �i v�o")
		end
	end
end;
