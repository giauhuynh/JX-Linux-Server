Include("\\script\\missions\\�ν�ս��PKս\\�ν�ս��ͷ�ļ�.lua");

function InitMission()
    --Msg2Player("ս�½�������սһ������.");
    StartMissionTimer(1,4,TIMER_1);
    SetMissionV(1,1);--��������
    SetMissionV(MS_KEY, random(100000))
    RevivalAllNpc();
HideNpc("���ν���",1000000);
HideNpc("�����",1000000);

    RestMin, RestSec = GetMinAndSec(1800);
local str1 = "<#>�ν��ս�����뱨���׶Σ�����ս���뾡�����ν�ս�������֮һ����,����ʣ��ʱ��:"..RestMin.."<#>��"..RestSec.."<#>��".."<#>����ս����:�ȼ���С��40����������3000����";
    AddGlobalCountNews(str1, 1);
end;

function RunMission()
    SetMissionV(1,2);
    SetMissionV(MS_J_NPCDEATH, 0);
    SetMissionV(MS_S_NPCDEATH, 0);
    SetMissionV(MS_S_SHOWKING, 0);
    SetMissionV(MS_J_SHOWKING, 0);
    RevivalAllNpc();
HideNpc("���ν���",1000000);
HideNpc("�����",1000000);
HideNpc("�ξ���ҽ",1000000);
HideNpc("�����ҽ",1000000);
    idx = 0;
    
    for i = 1 , 500 do
    	idx, pidx = GetNextPlayer(1,idx, 0);
    	
    	if (idx == 0) then
    		break
    	end;
    	
    	if (pidx > 0) then
    		PlayerIndex = pidx;
    		SetFightState(1);
    	end;

    	--��ʱΪGM���������ʽ����ս��
PutMessage("�о��Ѿ���ʼ�ж�����ʿ�Ǹϸ�ǰ��,����ɱ��ѽ!");
    end;
    
    StartMissionTimer(1,5, TIMER_2);
end;

function EndMission()

    for i = 1, 20 do 
    SetMissionV(i , 0);
    end;

    StopMissionTimer(1,4);
    StopMissionTimer(1,5);
    GameOver();
end;

function OnLeave(RoleIndex)
    PlayerIndex = RoleIndex;
str2 = GetName().."�˳���ս��";
    -- SetLogoutRV(0);  ��ҵ���Ҳ���Mission��OnLeave����˲����ڴ˵���SetLogoutRV(0)�������ڰ����NewWorld��Mission��ͼ�ĵط����� Fanghao_Wu 2006-3-21
    SetPKFlag(0)
    ForbidChangePK(0);
    Msg2MSAll(1, str2);
end;
