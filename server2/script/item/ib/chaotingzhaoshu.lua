function main(nItemIdx)
	if (GetPK() == 0) then
		Say("����ǰPKֵ�Ѿ�Ϊ0�ˣ�������ʹ�ó�͢�����ˡ�", 0);
		Msg2Player("����ǰPKֵ�Ѿ�Ϊ0�ˣ�������ʹ�ó�͢�����ˡ�");
		return 1;
	end;
	SetPK(0);
	Say("��ʹ����<color=yellow>��͢����<color>�����PKֵ����Ϊ0�ˡ�", 0);
	Msg2Player("��ʹ����<color=yellow>��͢����<color>�����PKֵ����Ϊ0�ˡ�");
	if (GetWorldPos() == 208) then
		SetTask(96,100)
	end;
end;
