--ÍòÊÂÍ¨ÑùÀı½Å±¾(BlackBay.03.12.30)

Include([[\script\event\mid_autumn06\fairy_of_midautumn06.lua]]);
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

function main(sel)
	if bilNPCVanSuThong ~= 1 then
		return Msg2Player("<color=Orange>V¹n sù th«ng: <color>H«m nay ta bËn, khi kh¸c ng­¬i h·y ®Õn vËy!")
	end
	local tab_Content = {
		"dïng 100000 l­îng b¹c ®æi lÊy tin tøc mét ng­êi/Query1", 
		"dïng 20000 l­îng b¹c ®æi lÊy tin tøc mét ng­êi/Query2", 
		"dïng 3000 l­îng b¹c ®æi lÊy tin tøc mét ng­êi/Query3", 
		"th«i, ta kh«ng hái/Nothing"
	};
	
	Say("Ta chİnh lµ v¹n sù th«ng , kh«ng cã g× kh«ng biÕt . ng­¬i muèn hái c¸i g× ?", getn(tab_Content), tab_Content);
end;

function Query1()
	if (GetCash() >= 100000) then
		QueryWiseMan("WisemanCallBack", "AbsentCallBack", 100000)
	else
		Nothing()
	end
end;

function Query2()
	if (GetCash() >= 20000) then
		QueryWiseMan("WisemanCallBack", "AbsentCallBack", 20000)
	else
		Nothing()
	end
end;

function Query3()
	if (GetCash() >= 3000) then
		QueryWiseMan("WisemanCallBack", "AbsentCallBack", 3000)
	else
		Nothing()
	end
end;

function Nothing()
	Talk(1, "", "Ng­¬i t­ëng ta  nãi ®ïa sao?")
end;

--´Ëº¯ÊıÎª³É¹¦²éÑ¯ĞÅÏ¢µÄ»Øµ÷º¯Êı£¬²ÎÊı¸öÊıºÍ²ÎÊıË³Ğò²»ÔÊĞí¸Ä±ä
function WisemanCallBack(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank)
	if MapName == "" then
			Say("ThËt xin lçi , "..TargetName.." b©y giê ë khu vùc ®Æc biÖt, kh«ng biÕt vŞ trİ cô thÓ , nh­ vËy ta còng chØ lÊy 1 nöa sè tiÒn th«i.",0)
			Pay(MoneyToPay / 2)
			return
	elseif (MoneyToPay == 3000) then
		Say("Ng­êi nµy "..TargetName.." b©y giê ë <color=red> "..MapName.."<color> ng­¬i ®i nhanh ®i , nÕu nh­ h¾n ®Õn chç kh¸c ta còng chµo thua.",1,"§a t¹ /no")
	elseif (MoneyToPay == 20000) then
		Say("Ng­êi nµy "..TargetName.." b©y giê ë <color=red> "..MapName.."<color>, vŞ trİ cô thÓ cã thÓ lµ <color=red> ( "..nPosX..", "..nPosY..")<color>, ng­¬i nÕu nh­ muèn t×m tíi chç cña h¾n nªn nhanh mét chót . ",1,"§a t¹ /no")
	elseif (MoneyToPay == 100000) then
		SexString = "Nam"
		if (nSex ~= 0) then
			SexString = "N÷"
		end
		Say("Ng­êi nµy "..TargetName..", §¼ng cÊp "..PlayerLevel..", Giíi tİnh "..SexString..", VŞ trİ hiÖn t¹i lµ <color=red>"..MapName.." ("..nPosX..", "..nPosY..")<color>, H¹ng thÕ giíi "..nWorldRank..". PK "..PKValue..". NÕu nh­ ng­¬i muèn t×m tíi chç cña h¾n nªn nhanh mét chót . ",1,"§a t¹/no")
	end
	Pay(MoneyToPay)
end;

--´Ëº¯ÊıÎªÊ§°Ü²éÑ¯(Ò²¾ÍÊÇ²»ÔÚÏß)ĞÅÏ¢µÄ»Øµ÷º¯Êı£¬²ÎÊı¸öÊıºÍ²ÎÊıË³Ğò²»ÔÊĞí¸Ä±ä
function AbsentCallBack(TargetName, MoneyToPay)
	Say("Ng­îng ngïng , "..TargetName.." h¾n b©y giê ta kh«ng biÕt ë ®©u, tiÒn ng­¬i ®­a ta sÏ lÊy 1 nöa",0)
	Pay(MoneyToPay / 2)
end;

function no()
end
