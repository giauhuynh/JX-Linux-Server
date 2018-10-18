
item_DropMagic = {}

item_DropMagic.Logs = {}
item_DropMagic.Logs.Allow = 1
item_DropMagic.Logs.File = "script/global/bil4i3n/bil4i3n_log/ItemMagic_"
item_DropMagic.Logs.Desc = {
	[126] = {"S¸t th­¬ng vËt lý - ngo¹i c«ng: +", "%"},
	[166] = {"§é chÝnh x¸c: +", " ®iÓm"},
	[115] = {"Tèc ®é ®¸nh - ngo¹i c«ng: +", "%"},
	[58] = {"Bá qua nÐ tr¸nh: +", "%"},
	[43] = {"Kh«ng thÓ ph¸ hñy", ""},
	[111] = {"Tèc ®é di chuyÓn: +", "%"},
	[117] = {"Ph¶n ®oµn vËt lý: +", " ®iÓm"},
	[113] = {"Thêi gian phôc håi: -", ""},
	[114] = {"Kh¸ng tÊt c¶: +", "%"},
	[136] = {"Hót sinh lùc: +", "%"},
	[137] = {"Hót néi lùc: +", "%"},
	[85] = {"Sinh lùc tèi ®a: +", " ®iÓm"},
	[89] = {"Néi lùc tèi ®a: +", " ®iÓm"},
	[93] = {"ThÓ lùc tèi ®a: +", " ®iÓm"},
	[88] = {"Phôc håi sinh lùc mçi nöa gi©y: +", " ®iÓm"},
	[92] = {"Phôc håi néi lùc mçi nöa gi©y: +", " ®iÓm"},
	[96] = {"Phôc håi thÓ lùc mçi nöa gi©y: +", " ®iÓm"},
	[97] = {"Søc m¹nh: +", "®iÓm"},
	[121] = {"S¸t th­¬ng vËt lý - ngo¹i c«ng: +", " ®iÓm"},
	[125] = {"§éc s¸t - ngo¹i c«ng: +", " ®iÓm"},
	[123] = {"B¨ng s¸t - ngo¹i c«ng: +", " ®iÓm"},
	[122] = {"Háa s¸t - ngo¹i c«ng: +", " ®iÓm"},
	[124] = {"L«i s¸t - ngo¹i c«ng: +", " ®iÓm"},
	[134] = {"ChuyÓn ho¸t s¸t th­¬ng thµnh néi lùc: +", "%"},
	[101] = {"Kh¸ng ®éc: +", "%"},
	[105] = {"Kh¸ng b¨ng: +", "%"},
	[102] = {"Kh¸ng háa: +", "%"},
	[103] = {"Kh¸ng l«i: +", "%"},
	[99] = {"ThÓ lùc tèi ®a: +", " ®iÓm"},
	[110] = {"Thêi gian cho¸ng: -", " ®iÓm"},
	[135] = {"May m¾n: +", "%"},
	[106] = {"Thêi gian lµm chËm: -", "%"},
	[98] = {"Th©n ph¸p: +", "®iÓm"},
	[108] = {"Thêi gian tróng ®éc: -", "%"},
	[168] = {"S¸t th­¬ng vËt lý - néi c«ng: +", " ®iÓm"},
	[169] = {"B¨ng s¸t - néi c«ng: +", " ®iÓm"},
	[170] = {"Háa s¸t - néi c«ng: +", " ®iÓm"},
	[171] = {"L«i s¸t - néi c«ng: +", " ®iÓm"},
	[172] = {"§éc s¸t - néi c«ng: +", " ®iÓm"},
	[104] = {"Phßng thñ vËt lý: +", "%"},
}

function item_DropMagic:WriteLogs(_1)
	if self.Logs.Allow ~= 1 then return end

	local im_Log = openfile(self.Logs.File..(GetLocalDate("%y_%m_%d"))..".log", "a")
		write(im_Log, "-- "..GetLocalDate("[%d-%m-%y %H:%M:%S]").."\t[DropOn: ".._1.im_Mis.."]".."\t["..GetName().."-"..GetLevel().."-"..GetAccount().."]\t\tParam: ("..(GetItemCmd(_1.im_Index))..")\n")
		write(im_Log, "\t\t\t[ DetailType = ".._1.im_D.." ] [[  "..GetItemName(_1.im_Index).."  ]]\n")
		
		local im_Log_mID, im_Log_P1, im_Log_P2, im_Log_P3, im_Log_str, im_Log_strnum, im_Log_strnumstr = nil, nil, nil, nil, "", 0, ""
		
		for _i = 1, 6 do
			im_Log_strnum = im_Log_strnum + 1
			im_Log_strnumstr = ((mod(im_Log_strnum, 2) == 0) and "'" or "")
			im_Log_mID, im_Log_P1, im_Log_P2, im_Log_P3 = GetItemMagicAttrib(_1.im_Index, _i)
			if im_Log_mID <= 0 or im_Log_P1 <= 0 then break end
			im_Log_str = im_Log_str.."\t\t"..im_Log_strnumstr..(not(self.Logs.Desc[im_Log_mID]) and (im_Log_mID.."="..im_Log_P1) or (self.Logs.Desc[im_Log_mID][1]..im_Log_strnumstr..im_Log_P1..im_Log_strnumstr..self.Logs.Desc[im_Log_mID][2]))..(im_Log_strnumstr).."\n"
		end
		
		write(im_Log, im_Log_str.."\n")
	closefile(im_Log)
end
















