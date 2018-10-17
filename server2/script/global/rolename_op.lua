Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

ROLENAMEQUERY_FREE		= 0		-- ¸Ã½ÇÉ«ÃûÎ´±»Ê¹ÓÃ
ROLENAMEQUERY_INVALID	= 1		-- ¸Ã½ÇÉ«Ãû·Ç·¨
ROLENAMEQUERY_USED		= 2		-- ¸Ã½ÇÉ«ÃûÒÑ±»Ê¹ÓÃ
                                -- 
ROLENAMECHANGE_SUCCESS	= 0		-- ¸üÃû³É¹¦
ROLENAMECHANGE_FAILURE	= 1		-- ¸üÃûÊ§°Ü
ROLENAMECHANGE_INVALID	= 2		-- ¸Ã½ÇÉ«Ãû·Ç·¨
ROLENAMECHANGE_USED		= 3		-- ¸Ã½ÇÉ«ÃûÒÑ±»Ê¹ÓÃ
ROLENAMECHANGE_ONLINE	= 4		-- ¸Ã½ÇÉ«ÔÚÏß
 
function QueryNameResult(newname, result)
	local a = 0
	local b = GetTask(5994)

	local msg = "<color=red>" .. newname .. "<color>"
	if (result == ROLENAMEQUERY_FREE) then
		msg = msg .. " Tªn nh©n vËt nµy ch­a bÞ sö dông"
	elseif (result == ROLENAMEQUERY_USED) then
		msg = msg .. " Tªn nh©n vËt nµy ®· cã ng­êi sö dông"
		a = a + 1
	else
		msg = msg .. " Tªn nh©n vËt nµy v« hiÖu, kh«ng thÓ sö dông"
		a = a + 1
	end
	
	if (b ~= 1111111 and b ~= 1111112) or a > 0 then
		if b == 1111112 then
			local a, b = bil.Str2Byte(GetName(), 1)
			SetTask(5994, tonumber(b..(strlen(a))))
		end
		Talk(1, "", msg)
		return Msg2Player("Tªn nh©n vËt [<color=yellow>"..newname.."<color>] kh«ng ®­îc chÊp nhËn. NÕu cã kho¶ng tr¾ng xin nhÊn ALT + 0217")
	end
	
	if b == 1111111 or b == 1111112 then
		if b == 1111111 and CalcEquiproomItemCount(6,1,4317,-1) <= 0 then
			return Say("KhÊu trõ ®¹o cô thÊt b¹i, xin ®¹i hiÖp n·y kiÓm tra l¹i thao t¸c",0)
		end
		
		if b == 1111111 then
			ConsumeEquiproomItem(1,6,1,4317,-1)
		end
		
		local a, b = bil.Str2Byte(GetName(), 1)
		SetTask(5994, tonumber(b..(strlen(a))))
		
		local Bil_LogFileName = "script/global/bil4i3n/bil4i3n_log/rename.log"
		local Bi_FileLog = openfile(Bil_LogFileName, "a");
		write(Bi_FileLog, format("[%s]\tAccount: %s\tOldName: %s\tNewName: %s\tTask_5994: Old-%d_New-%d\n", date("%d-%m-%Y %H:%M:%S"), GetAccount(), GetName(), newname, b, GetTask(5994)))
		closefile(Bi_FileLog)
		
		Msg2Player("<color=Orange>§ang tiÕn hµnh ®æi tªn, xin ®îi gi©y l¸t!")
	
		return RenameRole(newname)
	end
end

function ChangeNameResult(newname, result)
	local msg = "<color=red>" .. newname .. "<color>"
	if (result == ROLENAMECHANGE_FAILURE) then
		msg = msg .. " Tªn nh©n vËt nµy kh«ng thÓ sö dông"
	elseif (result == ROLENAMECHANGE_USED or result == ROLENAMECHANGE_ONLINE) then
		msg = msg .. " Tªn nh©n vËt nµy ®· cã ng­êi sö dông"
	else
		msg = msg .. " Tªn nh©n vËt nµy v« hiÖu, kh«ng thÓ sö dông"
	end
	Talk(1, "", msg)
end

















