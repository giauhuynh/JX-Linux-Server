--ÖĞÔ­ÄÏÇø ÏåÑô¸® ¢·ÈË6¹¨°¢Å£¶Ô»°


Include("\\script\\task\\newtask\\branch\\zhengpai\\branch_zhengpaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")


function main(sel)

i = random(0,2)
	Uworld1051 = nt_getTask(1051)
	if ( Uworld1051 ~= 0 ) then
		branch_taokan()
	else
		if (i == 0) then
Say("Cung A Ng­u:  Ra khái thµnh, ®i vÒ h­íng B¾c, kh«ng xa chİnh lµ Vâ §ang S¬n .",0)
		return
		end;
		
		if (i == 1) then
Say("Cung A Ng­u:  Nghe nãi ch­ëng m«n ph¸i Vâ §ang lµ mét ®¾c ®¹o ch©n nh©n, kh«ng biÕt ®­îc cã ph¶i hay kh«ng ®¾c ®¹o lµ cã thÓ tr­êng sanh bÊt l·o ",0)
		return
		end;
		
		if (i == 2) then
Say("Cung A Ng­u:  NÕu kh«ng ph¶i lµ trong nhµ cã mÑ giµ, ta ®· sím lªn Vâ §ang s¬n b¸i s­ häc nghÖ råi.",0)
		end;
	end
end;

