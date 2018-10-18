-- �ν�սگ�� ��������Ҵ��͵��ν�ս������  ��Ҫ�����ƣ��ν�ս���ڣ�����������ͼ������ʹ��
-- Liu Kuo
-- 2004.12.13
Include("\\script\\battles\\battlehead.lua");
Include("\\script\\battles\\battleinfo.lua");


function main()
	W,X,Y = GetWorldPos();

	local nSongNumber = 60; -- �η�����
	local nJinNumber = 70;  -- ������
	local nMapId = W;
	tbFORBIDDEN_MAP = { 197, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 334, 335, 356, 337, 338,339,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,825,826};	-- ���������ͼ
	tbCD_MAP = {516, 517, 580, 581}	--��������سǵ�ͼ
	for j = 1, getn(tbFORBIDDEN_MAP) do
		if ( nMapId == tbFORBIDDEN_MAP[j] ) then
			Msg2Player("Khu v�c n�y kh�ng th� s� d�ng ��o c�.");
			return 1;
		end
	end		
	for i = 1, getn(tbBATTLEMAP) do 
		if ( nMapId == tbBATTLEMAP[i] ) then
			Msg2Player("Khu v�c n�y kh�ng th� s� d�ng ��o c�.");
			return 1;
		end
	end
	if (nMapId >= 464 and nMapId <= 511) then
		Msg2Player("Khu v�c n�y kh�ng th� s� d�ng ��o c�.");
		return 1
	end
	--[DinhHQ]
	--20110407: ������30������ʹ���ν�گ��
	if (nMapId == 957) then
		Msg2Player("Khu v�c n�y kh�ng th� s� d�ng ��o c�.");
		return 1
	end
	if ( nMapId >= 235 and nMapId <= 318 ) then
		Msg2Player("Khu v�c n�y kh�ng th� s� d�ng ��o c�.");
		return 1;
	end
	for j = 1, getn(tbCD_MAP) do
		if ( nMapId == tbCD_MAP[j] ) then
			Msg2Player("Khu v�c n�y kh�ng th� s� d�ng ��o c�.");
			return 1;
		end
	end	
	if ( nMapId >= 540 and nMapId <= 583 ) then
		Msg2Player("Khu v�c n�y kh�ng th� s� d�ng ��o c�.");
		return 1;
	end
	if (nMapId >= 605 and nMapId <= 613) then	--���ֵ�һ���ͼ
		Msg2Player("Khu v�c n�y kh�ng th� s� d�ng ��o c�.");
		return 1;
	end
	
	if (nMapId == 162) then	--���ֵ�һ���ͼ
		Msg2Player("Khu v�c n�y kh�ng th� s� d�ng ��o c�.");
		return 1;
	end
	
	Say ( "<#> <color=red>T�ng kim chi�n chi�u s�ch <color><enter><enter><color><enter><enter> nh�n s� chi�m �u ph��ng tuy � chi�n tr��ng c� m�t �t �u th�, nh�ng ��t ���c <enter> t�ch l�y s� �t, ng��i mu�n �i ��u nh�t ph��ng ghi danh �i�m ��y ?", 
			4, "\Ti�n v�o �i�m t�ng qu�n ghi danh/ToSong", 
			"\Ti�n v�o kim qu�n ghi danh �i�m/ToJin", 
			"H� .... ta l� ��o binh/Cancel" );
	-- �ո�Ҫ���ˣ�Ϊ�˾�����ʾ
	return 1;

end

function ToSong()	-- �����η�������	
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "T�ng kim chi�n tr��ng b�y gi� t�n kh�c, ng��i c�n ch�a ��y 40 c�p, hay l� tr��c l�ch l�m m�t phen �i." );
	elseif ( GetLevel() >= 40 and GetLevel() < 80 ) then
		if (DelCommonItem( 6, 1, 155, 1, 0, 0) == 1) then
			NewWorld( 323, 1541, 3178);
			SetFightState(0);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "T�i s� c�p t�ng kim chi�n tr��ng t�ng ph��ng ghi danh �i�m." );
		end
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
		if (DelCommonItem( 6, 1, 155, 1, 0, 0) == 1) then
			NewWorld( 324, 1541, 3178);
			SetFightState(0);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "T�i trung c�p t�ng kim chi�n tr��ng t�ng ph��ng ghi danh �i�m" );
		end
	else
		if (DelCommonItem( 6, 1, 155, 1, 0, 0) == 1) then
			NewWorld( 162,1608,3254);
			SetFightState(0);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "T�i cao c�p t�ng kim chi�n tr��ng t�ng ph��ng ghi danh �i�m." );
		end
	end
end

function ToJin()	-- ����𷽱�����
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "T�ng kim chi�n tr��ng b�y gi� t�n kh�c, ng��i c�n ch�a ��y 40 c�p, hay l� tr��c l�ch l�m m�t phen �i." );
	elseif ( GetLevel() >= 40 and GetLevel() < 80 ) then
		if (DelCommonItem( 6, 1, 155, 1, 0, 0) == 1) then
			NewWorld( 323, 1570, 3085);
			SetFightState(0);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "T�i s� c�p t�ng kim chi�n tr��ng kim ph��ng ghi danh �i�m" );
		end
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
		if (DelCommonItem( 6, 1, 155, 1, 0, 0) == 1) then
			NewWorld( 324, 1570, 3085);
			SetFightState(0);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "T�i trung c�p t�ng kim chi�n tr��ng kim ph��ng ghi danh �i�m" );
		end
	else
		if (DelCommonItem( 6, 1, 155, 1, 0, 0) == 1) then
			NewWorld( 162,1566,3277);
			SetFightState(0);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "T�i cao c�p t�ng kim chi�n tr��ng kim ph��ng ghi danh �i�m" );
		end
	end
end


function Cancel()
end
