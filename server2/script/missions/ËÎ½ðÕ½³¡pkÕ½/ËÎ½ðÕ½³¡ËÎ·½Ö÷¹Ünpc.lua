--�������Npc
--���������ҵȼ��������40����
--���η�����ұ���Ҫ����ɽ���½���������
--���𷽵���ұ���Ҫ���꾩���ſڽ���佫��������
--������ʱ��Ҫ����һ���Ľ�Ǯ��

Include("\\script\\missions\\�ν�ս��PKս\\�ν�ս��ͷ�ļ�.lua");

function main()

local State = GetMissionV(1) 

--δ��ʼ
if (State == 0 ) then 
	Say("�Ҵ����δ����������ʱ��Ϣ����Ϣ!",0);
	NewWorld(78,1768,3098)
	SetFightState(1)
	return
end;

--�쳣���ֱ���˳�
if (State > 2) then
	NewWorld(78,1768,3098)
	SetFightState(1)
	return
end;


local GroupV = GetTask(SJTASKVLAUE);
--�����������Ѿ��������ģ��������������ģ����ӽ�ȥ
result = CheckLastBattle(1, State);
if (result == 1) then
	return
end

if (result == 2) then
	--�˾仰�ǵз������Է��ı���Npc�ĶԻ�
	Say("��Ƚ��ˣ��ַ��ҽ�ɽ��ɱ����ͬ��������������ɱ�������һ�!",0)
end


--����ʱ��
if (State == 1 or State == 2) then 
	MSDIdx = PIdx2MSDIdx(1, PlayerIndex);
	if (MSDIdx > 0) then 
		nGroup = GetMSIdxGroup(1, MSDIdx);
 		
	if ( nGroup == 1) then 
    		Say("��������ƥ���������������Ǳ�Ч�����ʱ����!",0)
  		else
    		Say("��Ƚ��ˣ��ַ��ҽ�ɽ��ɱ����ͬ��������������ɱ�������һ�!",0)
  		end
	
		return
	end;
end;

if (State == 1) then
	if (GetMSPlayerCount(1,1) >= MAX_S_COUNT) then
		Say("���ǵľ���Ŀǰ�ѹ���������׳ʿ�����һ�ΰ�!", 0)
	return
	end;
	
	Say("��������ƥ���������������Ǳ�Ч�����ʱ���ˣ�ֻ��Ҫ�ﵽ40�����ϣ�֧��3000�����ܳ��ɱ��!",2, "�Ҳμ�. /Yes", "��������!/No");
end;

--��սʱ��
if (State == 2) then 
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
  Msg2Player("��ӭ��ļ��룬�γ���Ӣ�ۣ��Ͽ����ս����!");
  V = GetMissionV(5);
  SetMissionV(5, V + 1);
  AddMSPlayer(1,1);
  SJ_JoinS();
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
