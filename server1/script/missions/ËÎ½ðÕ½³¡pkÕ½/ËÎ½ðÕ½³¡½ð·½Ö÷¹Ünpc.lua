--�������Npc
--���������ҵȼ��������40����
--���η�����ұ���Ҫ����ɽ���½���������
--���𷽵���ұ���Ҫ���꾩���ſڽ���佫��������
--������ʱ��Ҫ����һ���Ľ�Ǯ��
-- Update by Dan_Deng(2003-10-23) ͨ���Ի��л���ս����ģ���Ҫ����ս��״̬Ϊ1

Include("\\script\\missions\\�ν�ս��PKս\\�ν�ս��ͷ�ļ�.lua");


function main()


local State = GetMissionV(1) 

--δ��ʼ
if (State == 0 ) then 
	Say("�Ҵ����δ����������ʱ��Ϣ����Ϣ!",0);
--	NewWorld(44, 1585,3215)
	NewWorld(100,1406,3486)
	SetFightState(1)
	return
end;

--�쳣���ֱ���˳�
if (State > 2) then
--	NewWorld(44, 1585,3215)
	NewWorld(100,1406,3486)
	SetFightState(1)
	return
end;

local GroupV = GetTask(SJTASKVLAUE);
result = 0;
--�����������Ѿ��������ģ��������������ģ����ӽ�ȥ
result = CheckLastBattle(2, State)
if (result == 1) then
	return
end

if (result == 2) then
	--�˾仰�ǵз������Է��ı���Npc�ĶԻ�
	--���� ������Щ�ι��Ĳ���!���Ǵ�����ʿ�Ǹ�����ս����,�����ݺ�......�ȣ��е�����ɫ��
	Say("���ǽ����˭��������ս�������ι�����ô��������Ƕ�����?!",0)
end

--����ʱ��
if (State == 1 or State == 2) then 
	MSDIdx = PIdx2MSDIdx(1, PlayerIndex);
	if (MSDIdx > 0) then 
		nGroup = GetMSIdxGroup(1, MSDIdx);
 		
 		if ( nGroup == 2 ) then 
 		--�˾仰�Ǳ����ѱ���������뱨��Npc�ĶԻ�
    		Say("��ҲҪ�ҳ��ڴ�������λ�����ʿ!",0)
  		else
    		Say("���ǽ����˭��������ս�������ι�����ô��������Ƕ�����?!",0);
  		end
	
		return
	end;
end;

if (State == 1) then
	if (GetMSPlayerCount(1,2) >= MAX_J_COUNT) then
		Say("���ǵľ���Ŀǰ�ѹ������ι���׳ʿ�����һ�ΰ�!", 0)
	return
	end;
	
	--����,Ŀǰ�ι����������ι���������Ϳ̿�����Ǵ�����������
	Say("�γ��ѵ��������ʱ���ˣ���λ�������һ�������ٻ�������ֻ��Ҫ�ﵽ40�����ϣ�֧��3000�����ܳ��ɱ��!",2, "�Ҳμ�. /Yes", "��������!/No");
end;

--��սʱ��
if (State == 2) then 
	--��Ϊ��ս����ʽ����֮������δ��������뱨��Npc�ĶԻ�
	Say("ǰ��������ս������λ�������Ҷ�ܵĵط�",0);
	return 
end;

end;

function Yes()
if (GetMissionV(1) ~= 1) then
	return
end
if (GetLevel() >= 40) then 
  if (Pay(MS_SIGN_MONEY) == 1) then
  Msg2Player("��ӭ��ļ��룬�������ʿ���Ͽ����ս����!");
  V = GetMissionV(6);
  SetMissionV(6, V + 1);
  SJ_JoinJ();
  SetTask(SJKILLNPC,0);
  SetTask(SJKILLPK,0);
  --CheckGoFight()
  return 
  end;
end;

Say("�㲻��40������û�д���Ǯ",0);
end;

function No()
Say("���ȥ���룬ʱ�䲻����!",0);
end;

