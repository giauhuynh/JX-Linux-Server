Include("\\script\\missions\\�ν�ս��PKս\\�ν�ս��ͷ�ļ�.lua");

function OnDeath()

State = GetMissionV(1) ;
if (State ~= 2) then
return
end;

if ( GetMissionV(5) + GetMissionV(6) >= (MAX_S_COUNT + MAX_J_COUNT) * 7 / 10) then
	if (random(100) > 60) then
	return
	end;
	AddEventItem(195);
	Msg2Player("�������������!");
end;

--����Ǹ����вμӴ�ս����ҷ�����Ϣ
str1 = "<#>�ν�ս�۽��:�𷽽�ʿ"..GetName().."<#>ɱ�����η��󽫣��𷽻��ʤ��!";

--��������Ǹ���ʤ��������Ϣ���������Ļ���!
str = "<#>̫���ˣ�["..GetName().."<#>]ɱ�����ν������ǽ���Ӯ���ⳡս��!��ʿ�ǻ���ѽ��";

Msg2MSAll(1, str1);
Msg2MSGroup(1, str, 2);
resultstr = WinBonus(2, 1);
str1 = str1..resultstr;
SetMissionV(2,1);
SetMissionV(MS_STATE,3);
AddGlobalCountNews(str1, 3);
CloseMission(1);
end;

