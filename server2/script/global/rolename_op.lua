Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

ROLENAMEQUERY_FREE		= 0		-- 该角色名未被使用
ROLENAMEQUERY_INVALID	= 1		-- 该角色名非法
ROLENAMEQUERY_USED		= 2		-- 该角色名已被使用
                                -- 
ROLENAMECHANGE_SUCCESS	= 0		-- 更名成功
ROLENAMECHANGE_FAILURE	= 1		-- 更名失败
ROLENAMECHANGE_INVALID	= 2		-- 该角色名非法
ROLENAMECHANGE_USED		= 3		-- 该角色名已被使用
ROLENAMECHANGE_ONLINE	= 4		-- 该角色在线
 
function QueryNameResult(newname, result)
	local a = 0
	local b = GetTask(5994)

	local msg = "<color=red>" .. newname .. "<color>"
	if (result == ROLENAMEQUERY_FREE) then
		msg = msg .. " T猲 nh﹏ v藅 n祔 ch璦 b� s� d鬾g"
	elseif (result == ROLENAMEQUERY_USED) then
		msg = msg .. " T猲 nh﹏ v藅 n祔  c� ngi s� d鬾g"
		a = a + 1
	else
		msg = msg .. " T猲 nh﹏ v藅 n祔 v� hi謚, kh玭g th� s� d鬾g"
		a = a + 1
	end
	
	if (b ~= 1111111 and b ~= 1111112) or a > 0 then
		if b == 1111112 then
			local a, b = bil.Str2Byte(GetName(), 1)
			SetTask(5994, tonumber(b..(strlen(a))))
		end
		Talk(1, "", msg)
		return Msg2Player("T猲 nh﹏ v藅 [<color=yellow>"..newname.."<color>] kh玭g 頲 ch蕄 nh薾. N誹 c� kho秐g tr緉g xin nh蕁 ALT + 0217")
	end
	
	if b == 1111111 or b == 1111112 then
		if b == 1111111 and CalcEquiproomItemCount(6,1,4317,-1) <= 0 then
			return Say("Kh蕌 tr� o c� th蕋 b筰, xin i hi謕 n穣 ki觤 tra l筰 thao t竎",0)
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
		
		Msg2Player("<color=Orange>ng ti課 h祅h i t猲, xin i gi﹜ l竧!")
	
		return RenameRole(newname)
	end
end

function ChangeNameResult(newname, result)
	local msg = "<color=red>" .. newname .. "<color>"
	if (result == ROLENAMECHANGE_FAILURE) then
		msg = msg .. " T猲 nh﹏ v藅 n祔 kh玭g th� s� d鬾g"
	elseif (result == ROLENAMECHANGE_USED or result == ROLENAMECHANGE_ONLINE) then
		msg = msg .. " T猲 nh﹏ v藅 n祔  c� ngi s� d鬾g"
	else
		msg = msg .. " T猲 nh﹏ v藅 n祔 v� hi謚, kh玭g th� s� d鬾g"
	end
	Talk(1, "", msg)
end

















