-------------------------------------------------------------------------
-- FileName		:	enemy_flybugbear90.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-13 11:19:14
-- Desc			:   ·çÖ®Æï¹Ø¿¨µÄĞ¡¹Ö½Å±¾[90ÒÔÉÏ¼¶]
-------------------------------------------------------------------------
IncludeLib( "FILESYS" );
Include("\\script\\task\\tollgate\\messenger\\fengzhiqi\\enemy_flybugbear.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua") --µ÷ÓÃ nt_getTask Í¬²½±äÁ¿µ½¿Í»§¶ËµÄÀà
Include("\\script\\task\\tollgate\\messenger\\messenger_losetask.lua")  --È¡ÏûÈÎÎñ
Include("\\script\\task\\tollgate\\messenger\\messenger_timeer.lua")    --µ÷ÓÃ¼ÆÊ±Æ÷
Include("\\script\\task\\tollgate\\messenger\\bil_newfengzhiqi.lua")
TabFile_Load( "\\settings\\task\\tollgate\\messenger\\messenger_tollprize.txt" , "tollprize");	 --»ñµÃÍ¬°éĞŞÁ·µÄ±í¸ñ

-- FLYBUGBEAR_EXP =tonumber( TabFile_GetCell( "tollprize" ,4 ,"bug_exp"))  --Ğ¡¹Ö¾­Ñé
-- FLYBUGBEAR_MAPID= 389  --·çÖ®ÆïµÄµØÍ¼id
-- FLYBUGBEAR_MESSENGEREXP= tonumber( TabFile_GetCell( "tollprize" ,4 ,"bug_jifen"))--·çÖ®ÆïµÄĞ¡¹ÖËÀÍö»ñµÃĞÅÊ¹»ı·Ö


function OnDeath()
	if mod(tonumber(GetLocalDate("%H")), 2) ~= 0 then
		return Say("HiÖn t¹i thêi gian Phong kú ®· hÕt, c¸c h¹ ph¶i quay vÒ th«i!", 1, "Ta biÕt råi!/messenger_comeback")
	end
	if ( GetTask(1212) >= _BIL_TIME_EVENT_ON_PLAYER ) then 
		Talk(1, "", "ThËt xin lçi , h«m nay thêi gian ë nhiÖm vô tİn sø ®· hÕt, xin mêi ngµy mai trë l¹i")
		messenger_comeback()
	else
		messenger_killbugbear()
	end
end