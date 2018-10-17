-------------------------------------------------------------------------
-- FileName		:	enemy_flybugbear90.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-13 11:19:14
-- Desc			:   风之骑关卡的小怪脚本[90以上级]
-------------------------------------------------------------------------
IncludeLib( "FILESYS" );
Include("\\script\\task\\tollgate\\messenger\\fengzhiqi\\enemy_flybugbear.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua") --调用 nt_getTask 同步变量到客户端的类
Include("\\script\\task\\tollgate\\messenger\\messenger_losetask.lua")  --取消任务
Include("\\script\\task\\tollgate\\messenger\\messenger_timeer.lua")    --调用计时器
Include("\\script\\task\\tollgate\\messenger\\bil_newfengzhiqi.lua")
TabFile_Load( "\\settings\\task\\tollgate\\messenger\\messenger_tollprize.txt" , "tollprize");	 --获得同伴修练的表格

-- FLYBUGBEAR_EXP =tonumber( TabFile_GetCell( "tollprize" ,4 ,"bug_exp"))  --小怪经验
-- FLYBUGBEAR_MAPID= 389  --风之骑的地图id
-- FLYBUGBEAR_MESSENGEREXP= tonumber( TabFile_GetCell( "tollprize" ,4 ,"bug_jifen"))--风之骑的小怪死亡获得信使积分


function OnDeath()
	if mod(tonumber(GetLocalDate("%H")), 2) ~= 0 then
		return Say("Hi謓 t筰 th阨 gian Phong k�  h誸, c竎 h� ph秈 quay v� th玦!", 1, "Ta bi誸 r錳!/messenger_comeback")
	end
	if ( GetTask(1212) >= _BIL_TIME_EVENT_ON_PLAYER ) then 
		Talk(1, "", "Th藅 xin l鏸 , h玬 nay th阨 gian � nhi謒 v� t輓 s�  h誸, xin m阨 ng祔 mai tr� l筰")
		messenger_comeback()
	else
		messenger_killbugbear()
	end
end