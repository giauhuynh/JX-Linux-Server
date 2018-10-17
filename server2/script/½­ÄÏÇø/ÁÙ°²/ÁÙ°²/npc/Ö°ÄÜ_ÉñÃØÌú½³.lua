Include( "\\script\\task\\system\\task_string.lua" );
Include("\\script\\global\\recoin_goldenequip.lua")
Include("\\script\\task\\equipex\\head.lua");
Include("\\script\\global\\platina_upgrade.lua")
Include("\\script\\event\\equip_publish\\jinwu\\refine_equip.lua")
Include("\\script\\global\\platina_upgrade.lua")
Include("\\script\\misc\\itemexchangevalue\\itemexchangevalue.lua") 
Include("\\script\\misc\\itemexchangevalue\\ex_goldequip_lingpai.lua")	
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\vng_feature\\trungluyen\\refine_equip.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_ghep_trang_bi_kim_phong.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_ghep_trang_bi_thien_hoang.lua")


function main()
	local szTitle = "<npc><enter>Ta mai danh �n t�ch b�y l�u nay, h�m nay l�i b� ng��i t�m ���c, n�i v�y ng��i l� v� trang b� <color=yellow> Ho�ng Kim<color> m� ��n ��y �?"
	local tbOpt = 
	{
		{"Ta mu�n t�m hi�u v� b� An bang Ho�n m�",main_talk},
		{"Nh� ng��i gi�p ta ph�n m�nh m�t s� trang b� ho�ng kim",split_entry},
		{"Ta mu�n h�p th�nh trang b� Ho�ng Kim",Bil_want_compose},
		{"Ta mu�n h�p th�nh trang b� Kim Phong",nTRTB_HopThanhTrangBiKimPhong},
		{"Ta mu�n h�p th�nh trang b� Thi�n Ho�ng",nTRTB_HopThanhTrangBiThienHoang},
		{"K�t th�c ��i tho�i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function nTRTB_HopThanhTrangBiKimPhong()
	return Join2KimPhong:Main()
end
function nTRTB_HopThanhTrangBiThienHoang()
	return Join2ThienHoang:Main()
end

function Bil_compose_entry()
	local aryDescribe =
	{
		"<dec><npc>Ch� c�n ��a ta to�n b� m�nh trang b�, kh�ng d� kh�ng thi�u ho�c c� 2 m�nh trang b� gi�ng nhau, ta s� gi�p ng��i h�p th�nh.",
		"Ta c� �� b� m�nh trang b� mu�n nh� �ng h�p th�nh./Bil_want_compose",
		"Ta ch� gh� xem cho bi�t./cancel",
	};
	CreateTaskSay(aryDescribe);
end

function Bil_want_compose(bNoConfirm)
	GiveItemUI("H�p th�nh trang b�", "Mu�n h�p th�nh trang b� ph�i c� �� b� c�c m�nh c�a trang b� ��. N�u m�nh trang b� �ang trong tr�ng th�i b� kh�a th� trang b� h�p th�nh v�n s� trong tr�ng th�i kh�a.", "Bil_do_compose", "cancel", 1);
end

function Bil_do_compose(n_count)
	if (n_count <= 0) then
		CreateTaskSay(	{	"<dec><npc>N�u mu�n h�p th�nh trang b� th� h�y �em c�c m�nh trang b� cho ta, n�u kh�ng �� b� ta kh�ng gi�p ng��i ���c.",
							"Ha ha, ��i hi�p c�ng c� l�c b�t c�n, �� ta ��t v�o l�i./Bil_want_compose",
							"Th�t ng�i qu�, ta s� quay l�i sau./cancel"	}	);
		return
	end
	local n_goldgenre,n_golddetail,nversion,szgoldname,nPieceSum,nFirstPiece
	local tb_tgot = {}
	for i = 1, n_count do 
		local n_itemidx = GetGiveItemUnit(i)
		nversion = ITEM_GetItemVersion( n_itemidx ) + 1;
		local tb_p
		tb_p = pack(GetItemProp(n_itemidx))
		local szgoldkey = format("[%d]",tb_p[2])
		if (tb_p[1] ~= 4 or g_aryRecoinConfig[nversion][szgoldkey] == nil ) then
			CreateTaskSay(	{	"<dec><npc>H�p th�nh trang b� ch� c�n c� m�nh trang b� t��ng �ng l� ���c, nh�ng th� kh�c ng��i h�y c�t l�i �i.",
								"Ha ha, ��i hi�p c�ng c� l�c b�t c�n, �� ta ��t v�o l�i./Bil_want_compose",
								"Th�t ng�i qu�, ta s� quay l�i sau./cancel"	}	);
			return
		elseif (GetItemStackCount(n_itemidx) ~= 1) then
			CreateTaskSay(	{	"<dec><npc>m�nh trang b� kh�ng th� x�p ch�ng. Ng��i kh�ng nghe ta d�n r�i!",
								"Ha ha, ��i hi�p c�ng c� l�c b�t c�n, �� ta ��t v�o l�i./Bil_want_compose",
								"Th�t ng�i qu�, ta s� quay l�i sau./cancel"	}	);
			return
		elseif not n_golddetail then
				nPieceSum = g_aryRecoinConfig[nversion][szgoldkey].m_nPieceSum
				n_goldgenre = g_aryRecoinConfig[nversion][szgoldkey].m_nGenre
				n_golddetail = g_aryRecoinConfig[nversion][szgoldkey].m_nDetailtype
				szgoldname = g_aryRecoinConfig[nversion][szgoldkey].m_szGoldName
				if (n_count > nPieceSum) then
					CreateTaskSay(	{	format("<dec><npc>Kh�ch quan mu�n h�p th�nh <color=yellow]>%s<color>? ��a ta nhi�u �� v�y �� l�m g�? Ch� c�n <color=yellow>%s<color> m�nh l� ���c.",szgoldname,nPieceSum),
											"Ha ha, ��i hi�p c�ng c� l�c b�t c�n, �� ta ��t v�o l�i./Bil_want_compose",
											"Th�t ng�i qu�, ta s� quay l�i sau./cancel"	}	);
						return
				elseif (n_count < nPieceSum) then
					CreateTaskSay(	{	format("<dec><npc>Kh�ch quan mu�n h�p th�nh <color=yellow>%s<color>? Kh�ng c� �� m�nh trang b�, kh�ng th� h�p th�nh.",szgoldname),
											"Ha ha, ��i hi�p c�ng c� l�c b�t c�n, �� ta ��t v�o l�i./Bil_want_compose",
											"Th�t ng�i qu�, ta s� quay l�i sau./cancel"	}	);
						return
				end
					n_type = 1

		elseif (g_aryRecoinConfig[nversion][szgoldkey].m_nDetailtype ~= n_golddetail) then	
			CreateTaskSay(	{	"<dec><npc>H�p th�nh trang b� c�n c� m�nh trang b�, ng��i ��a ta m�nh trang b� kh�ng ��ng, kh�ng th� h�p th�nh.",
								"Ha ha, ��i hi�p c�ng c� l�c b�t c�n, �� ta ��t v�o l�i./Bil_want_compose",
								"Th�t ng�i qu�, ta s� quay l�i sau./cancel"	}	);
			return
		end

		local n_sid = tb_p[2]
		if tb_tgot[n_sid] then	
			CreateTaskSay(	{	format("<dec><npc>Ta kh�ng c�n 2 m�nh trang b� gi�ng nhau, h�p th�nh <color=yellow>%s<color> c�n <color=yellow>%s<color>  <color=yellow>m�nh %s<color>, h�y nh� k�!",szgoldname,nPieceSum,szgoldname),
								"Ha ha, ��i hi�p c�ng c� l�c b�t c�n, �� ta ��t v�o l�i./Bil_want_compose",
								"Th�t ng�i qu�, ta s� quay l�i sau./cancel"	}	);
			return
		end
		tb_tgot[n_sid] = 1
	end
	local szkey = format("[0,%d]",n_golddetail)
	if g_aryRecoinConfig[nversion][szkey] == nil then
			CreateTaskSay(	{	"<dec><npc>Ph�t sinh l�i h� th�ng?", "Cho�ng.../cancel"	}	);
			local str = "do_compose ERROR!!! not tb_tgot "..i;
			WriteLog(format("[H�p th�nh m�nh trang b� Ho�ng Kim] %s\t%s\t%s\t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),str));		
	end
	for i = g_aryRecoinConfig[nversion][szkey].m_nFirstPieceDetail,g_aryRecoinConfig[nversion][szkey].m_nPieceSum-1 do
		if not tb_tgot[i] then
			CreateTaskSay(	{	"<dec><npc>Ph�t sinh l�i h� th�ng?", "Cho�ng.../cancel"	}	);
			local str = "do_compose ERROR!!! not tb_tgot "..i;
			WriteLog(format("[H�p th�nh m�nh trang b� Ho�ng Kim] %s\t%s\t%s\t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),str));
			return
		end
	end
	local bBind = nil
	for i=1, n_count do
		local nIdx = GetGiveItemUnit(i)
		if (GetItemBindState(nIdx) ~= 0) then
			bBind = 1
		end
		if (RemoveItemByIndex(nIdx) ~= 1) then
			WriteLog(format("<H�p th�nh m�nh Ho�ng Kim> %s\t%s\t%s\t x�a v�t ph�m th�t b�i \t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),GetItemName(GetGiveItemUnit(i))));
			return
		end
	end	
	local str = format("H�p th�nh <color=yellow>%s<color> th�nh c�ng!",szgoldname)
	Msg2Player(str)
	Msg2SubWorld("V� ��i  hi�p <color=yellow>"..GetName().."<color> �� h�p th�nh trang b� <color=Orange>"..szgoldname.."<color> th�nh c�ng,")
	local nItem = AddGoldItem(n_goldgenre,n_golddetail)
	local szItemInfo = getItemInfo(nItem);
	if (bBind) then
		BindItem(nItem)
	end
	WriteLog(format("[H�p th�nh m�nh trang b� Ho�ng Kim] %s\t%s\t%s\t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),str));
	writeRecoinLog("[M�nh Ho�ng Kim h�p th�nh Ho�ng Kim]", szItemInfo);
end

function cancel()
end

function OnCancel()
end
