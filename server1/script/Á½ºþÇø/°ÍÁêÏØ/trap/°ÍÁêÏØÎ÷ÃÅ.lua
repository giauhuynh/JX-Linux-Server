--������ ���������� ս��״̬�л�Trap

-- Trap 10 h

Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")

function main(sel)

	if bilCheckDuaTop:FuncMain() then 
		return NewWorld(53, 1629, 3176)
	end

if ( GetFightState() == 0 ) then	-- ��Ҵ��ڷ�ս��״̬�����ڳ���
	SetPos(1539, 3112)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(1)		-- ת��Ϊս��״̬
else			       		-- ��Ҵ���ս��״̬�����ڳ���
	SetPos(1542, 3116)		-- �����߳�Trap�㣬Ŀ�ĵ��ڳ���	
	SetFightState(0)		-- ת��Ϊ��ս��״̬
end;
	AddStation(10)			-- ��¼��ɫ��������������
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3) 		
end;