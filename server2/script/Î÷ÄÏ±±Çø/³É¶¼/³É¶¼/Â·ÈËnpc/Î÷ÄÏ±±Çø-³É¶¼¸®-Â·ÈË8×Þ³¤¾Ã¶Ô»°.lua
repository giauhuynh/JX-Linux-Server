--Î÷ÄÏ±±Çø ³É¶¼¸® ¢·ÈË8×Ş³¤¾·¶Ô»°
Include("\\script\\task\\newtask\\branch\\xiepai\\branch_xiepaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
function main(sel)
Uworld1058 = nt_getTask(1058)
	if ( Uworld1058 ~= 0 ) then
		branch_zouchangjiu()
	else
Say("®· sím nghe nãi c¸i ë ®©y cã mét vŞ tiÓu muéi rÊt xinh ®Ñp , h«m nay võa thÊy , qu¶ nhiªn lµ rÊt ®Ñp , nÕu kh«ng ph¶i ta sím c­íi l·o bµ th×...",0)
	end
end;

