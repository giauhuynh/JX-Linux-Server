-------------------------------------------------------------------------
-- FileName		:	enemy_flybugbear90.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-13 11:19:14
-- Desc			:   ��֮��ؿ���С�ֽű�[90���ϼ�]
-------------------------------------------------------------------------
IncludeLib( "FILESYS" );
Include("\\script\\task\\tollgate\\messenger\\fengzhiqi\\enemy_flybugbear.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua") --���� nt_getTask ͬ���������ͻ��˵���
Include("\\script\\task\\tollgate\\messenger\\messenger_losetask.lua")  --ȡ������
Include("\\script\\task\\tollgate\\messenger\\messenger_timeer.lua")    --���ü�ʱ��
Include("\\script\\task\\tollgate\\messenger\\bil_newfengzhiqi.lua")
TabFile_Load( "\\settings\\task\\tollgate\\messenger\\messenger_tollprize.txt" , "tollprize");	 --���ͬ�������ı��

-- FLYBUGBEAR_EXP =tonumber( TabFile_GetCell( "tollprize" ,4 ,"bug_exp"))  --С�־���
-- FLYBUGBEAR_MAPID= 389  --��֮��ĵ�ͼid
-- FLYBUGBEAR_MESSENGEREXP= tonumber( TabFile_GetCell( "tollprize" ,4 ,"bug_jifen"))--��֮���С�����������ʹ����


function OnDeath()
	if mod(tonumber(GetLocalDate("%H")), 2) ~= 0 then
		return Say("Hi�n t�i th�i gian Phong k� �� h�t, c�c h� ph�i quay v� th�i!", 1, "Ta bi�t r�i!/messenger_comeback")
	end
	if ( GetTask(1212) >= _BIL_TIME_EVENT_ON_PLAYER ) then 
		Talk(1, "", "Th�t xin l�i , h�m nay th�i gian � nhi�m v� t�n s� �� h�t, xin m�i ng�y mai tr� l�i")
		messenger_comeback()
	else
		messenger_killbugbear()
	end
end