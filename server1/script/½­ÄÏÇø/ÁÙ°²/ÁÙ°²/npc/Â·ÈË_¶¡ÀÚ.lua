-- �ٰ������ˡ�����
-- by��Dan_Deng(2003-09-16)

-- ���������ͬ���������ʵ�崦���ļ�
Include ("\\script\\task\\partner\\master\\partner_master_main_03.lua");

function main()

	-- ����ƪ
	if taskProcess_003_02:doTaskEntity()~=0 then return end;
	if taskProcess_003_04:doTaskEntity()~=0 then return end;

	-- ����ƪ
	if rewindProcess_003_02:doTaskEntity()~=0 then return end;
	if rewindProcess_003_04:doTaskEntity()~=0 then return end;


	Talk(1,"","�inh vi�n ngo�i : b�n gi�c kim ��u l� h�u d�ng v� m�u, l�m sao c� th� ��nh l�i nh� t�ng c�a ta ���c.")

end;
