-- �����򡡢��ˡ����ɩ��
-- by��Dan_Deng(2003-09-16)

Include("\\script\\global\\repute_head.lua")

function main()
	Uworld41 = GetByte(GetTask(41),1)
	if (GetLevel() >= 40) and (GetReputeLevel(GetRepute()) >= 5) then		-- ������������
		if (Uworld41 == 0) or (Uworld41 == 5) then			-- ��������
			Talk(4,"","��n �ng nh� n�y, t� s�ng ��n t�i c� m� t��ng vi�n v�ng, c�i g� l� ch� kh�, c�i g� l� anh h�ng? To�n l� �� b� �i, kh�ng lo cho cu�c s�ng hi�n t�i.","��λ��ɩ����ʲôͷ�۵�ʢ��"," (����) ","... ")
			SetTask(41,5)
		elseif (Uworld41 == 10) or (Uworld41 == 30) then	-- ���������
			Talk(1,"","�VLT31���Ը����Ұ�С��ͻ����𣿸м�������")
		elseif (Uworld41 == 100) then					-- �Ѿ��ȳ�С�꣬����δ��
			Talk(1,"","VLT32С�꣡�ҵĺ��ӻ����ˣ����ǿ����ҵĺ����ˡ���Ͽ�ȥ������������Ҫ������.")
		else		-- ���������
			Talk(1,"","VLT33��Ǹ�л�������Һ�����������Ҫ�ͳ���ҩ������.")
		end
	else
		Talk(1,"","�VLT34Ҽ���ͷ�����絽���һֱϹ��ʲô��־����ʲô��Ӣ�ۣ�ȫ���Ƿϻ���������һϢʵ������!")
	end
end;
