--���ϱ��� �ɶ��� ����18������ĶԻ�
--author: yuanlan	
--date: 2003/3/10
-- Update: Dan_Deng(2003-08-13)

function main(sel)
	UTask_tm = GetTask(2)
	if (UTask_tm == 10*256+20) then			--�Ʒ�ʮ�����������
		Talk(2, "", "ta ��y b�n ��u l� t�n uy�n danh gia th�u T� Xuy�n  . n�ng � th�nh �� ph� r�t n�i danh , th�u ph�i t�t v� c�ng , to�n b� trong ph� x�p h�ng th� nh�t , nh� c�a n�ng � th�nh ��ng nam c�nh qu�n tr� ph� dung . ", "n�u l� th�u danh gia , trong nh� ch�c ch�n s� kh�ng thi�u h�t kim may , c� l� n�ng nghe n�i li�n quan t�i Ma ch�m.")
		AddNote("Mai n��ng bi�t th�u danh gia T� Xuy�n , th�u ph�i t�t v� c�ng , nh� c�a n�ng � th�nh ��ng nam c�nh qu�n tr� ph� dung..  ")
		SetTask(2,10*256+30)
	elseif (UTask_tm == 10*256+30) then			--�Ʒ�ʮ�����������
		Talk(1, "", "ta ��y b�n ��u l� t�n uy�n danh gia th�u T� Xuy�n  . n�ng � th�nh �� ph� r�t n�i danh , th�u ph�i t�t v� c�ng , to�n b� trong ph� x�p h�ng th� nh�t , nh� c�a n�ng � th�nh ��ng nam c�nh qu�n tr� ph� dung  ")
	elseif (random(0,1) == 0) then
		Talk(1,""," ng��i t� ��u t�i ��y ? c�i n�y l� th�u T� Xuy�n th�c trung chi b�o , ng��i xem m�t ch�t ,  ���ng th�u ��y �� , th�t l� th� c�ng th��ng ph�m , mua m�t c�i v� l�m k� ni�m �i")
	else
		Talk(1,"","th�ch h�nh th�u c� ch�p sao ? T�t c� ��u gi�ng nhau m�?")
	end
end;
