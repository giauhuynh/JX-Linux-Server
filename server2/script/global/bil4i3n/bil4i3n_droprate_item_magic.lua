
item_DropMagic = {}

item_DropMagic.Logs = {}
item_DropMagic.Logs.Allow = 1
item_DropMagic.Logs.File = "script/global/bil4i3n/bil4i3n_log/ItemMagic_"
item_DropMagic.Logs.Desc = {
	[126] = {"S�t th��ng v�t l� - ngo�i c�ng: +", "%"},
	[166] = {"�� ch�nh x�c: +", " �i�m"},
	[115] = {"T�c �� ��nh - ngo�i c�ng: +", "%"},
	[58] = {"B� qua n� tr�nh: +", "%"},
	[43] = {"Kh�ng th� ph� h�y", ""},
	[111] = {"T�c �� di chuy�n: +", "%"},
	[117] = {"Ph�n �o�n v�t l�: +", " �i�m"},
	[113] = {"Th�i gian ph�c h�i: -", ""},
	[114] = {"Kh�ng t�t c�: +", "%"},
	[136] = {"H�t sinh l�c: +", "%"},
	[137] = {"H�t n�i l�c: +", "%"},
	[85] = {"Sinh l�c t�i �a: +", " �i�m"},
	[89] = {"N�i l�c t�i �a: +", " �i�m"},
	[93] = {"Th� l�c t�i �a: +", " �i�m"},
	[88] = {"Ph�c h�i sinh l�c m�i n�a gi�y: +", " �i�m"},
	[92] = {"Ph�c h�i n�i l�c m�i n�a gi�y: +", " �i�m"},
	[96] = {"Ph�c h�i th� l�c m�i n�a gi�y: +", " �i�m"},
	[97] = {"S�c m�nh: +", "�i�m"},
	[121] = {"S�t th��ng v�t l� - ngo�i c�ng: +", " �i�m"},
	[125] = {"��c s�t - ngo�i c�ng: +", " �i�m"},
	[123] = {"B�ng s�t - ngo�i c�ng: +", " �i�m"},
	[122] = {"H�a s�t - ngo�i c�ng: +", " �i�m"},
	[124] = {"L�i s�t - ngo�i c�ng: +", " �i�m"},
	[134] = {"Chuy�n ho�t s�t th��ng th�nh n�i l�c: +", "%"},
	[101] = {"Kh�ng ��c: +", "%"},
	[105] = {"Kh�ng b�ng: +", "%"},
	[102] = {"Kh�ng h�a: +", "%"},
	[103] = {"Kh�ng l�i: +", "%"},
	[99] = {"Th� l�c t�i �a: +", " �i�m"},
	[110] = {"Th�i gian cho�ng: -", " �i�m"},
	[135] = {"May m�n: +", "%"},
	[106] = {"Th�i gian l�m ch�m: -", "%"},
	[98] = {"Th�n ph�p: +", "�i�m"},
	[108] = {"Th�i gian tr�ng ��c: -", "%"},
	[168] = {"S�t th��ng v�t l� - n�i c�ng: +", " �i�m"},
	[169] = {"B�ng s�t - n�i c�ng: +", " �i�m"},
	[170] = {"H�a s�t - n�i c�ng: +", " �i�m"},
	[171] = {"L�i s�t - n�i c�ng: +", " �i�m"},
	[172] = {"��c s�t - n�i c�ng: +", " �i�m"},
	[104] = {"Ph�ng th� v�t l�: +", "%"},
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
















