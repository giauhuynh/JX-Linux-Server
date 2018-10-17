-------------------------------------------------------------------------
-- FileName		:	enemy_flybugbear8089.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-13 11:10:14
-- Desc			:   风之骑关卡的小怪死亡脚本[80-89级]
-------------------------------------------------------------------------
IncludeLib( "FILESYS" );
Include("\\script\\task\\tollgate\\messenger\\fengzhiqi\\enemy_flybugbear.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua") --调用 nt_getTask 同步变量到客户端的类
Include("\\script\\task\\tollgate\\messenger\\messenger_losetask.lua")  --取消任务
Include("\\script\\task\\tollgate\\messenger\\messenger_timeer.lua")    --调用计时器
TabFile_Load( "\\settings\\task\\tollgate\\messenger\\messenger_tollprize.txt" , "tollprize");	 --获得同伴修练的表格

FLYBUGBEAR_EXP =tonumber( TabFile_GetCell( "tollprize" ,3,"bug_exp"))  --小怪经验
FLYBUGBEAR_MAPID= 388  --风之骑的地图id
FLYBUGBEAR_MESSENGEREXP=  tonumber( TabFile_GetCell( "tollprize" ,3 ,"bug_jifen"))--风之骑的小怪死亡获得信使积分


function OnDeath()
	if mod(tonumber(GetLocalDate("%H")), 2) ~= 0 then
		return Say("Hi謓 t筰 th阨 gian Phong k�  h誸, c竎 h� ph秈 quay v� th玦!", 1, "Ta bi誸 r錳!/losemessengertask")
	end
	local name = GetName()
	if (  messenger_middletime() == 10 ) then --玩家在地图中的时间
		Msg2Player("Xin l鏸! "..name.."! B筺  h誸 th阨 gian th鵦 hi謓 nhi謒 v� T輓 s�! Nhi謒 v� th蕋 b筰!.")
		losemessengertask()
	else
		messenger_killbugbear()
	end
end