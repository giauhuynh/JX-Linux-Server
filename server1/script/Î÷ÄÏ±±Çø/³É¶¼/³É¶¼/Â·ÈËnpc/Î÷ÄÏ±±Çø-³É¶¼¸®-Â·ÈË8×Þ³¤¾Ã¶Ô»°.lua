--西南北区 成都府 ⒎人8邹长痉对话
Include("\\script\\task\\newtask\\branch\\xiepai\\branch_xiepaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
function main(sel)
Uworld1058 = nt_getTask(1058)
	if ( Uworld1058 ~= 0 ) then
		branch_zouchangjiu()
	else
Say(" s韒 nghe n鉯 c竔 � y c� m閠 v� ti觰 mu閕 r蕋 xinh p , h玬 nay v鮝 th蕐 , qu� nhi猲 l� r蕋 p , n誹 kh玭g ph秈 ta s韒 ci l穙 b� th�...",0)
	end
end;

