--�ٰ��ʹ��ص� ս��NPC �ʹ���ʿ��ؤ��50������
-- by��Dan_Deng(2003-07-28)

function OnDeath()
	UTask_gb = GetTask(8);
	if (UTask_gb == 50*256+40) and (random(0,99) < 20) then				--10%���ʣ���Ϊ20���Ӵ�һ��2004-01-13��
		SetTask(8,50*256+50)
		AddNote("Trong ho�ng cung ��nh b�i v� s� b�o v� T�o c�ng c�ng. ")
		Msg2Player("Trong ho�ng cung ��nh b�i v� s� b�o v� T�o c�ng c�ng. ")
	end
end;
