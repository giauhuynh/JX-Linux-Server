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
	local szTitle = "<npc><enter>Ta mai danh Èn tÝch bÊy l©u nay, h«m nay l¹i bÞ ng­¬i t×m ®­îc, nãi vËy ng­¬i lµ v× trang bÞ <color=yellow> Hoµng Kim<color> mµ ®Õn ®©y µ?"
	local tbOpt = 
	{
		{"Ta muèn t×m hiÓu vÒ bé An bang Hoµn mü",main_talk},
		{"Nhê ng­¬i gióp ta ph©n m¶nh mét sè trang bÞ hoµng kim",split_entry},
		{"Ta muèn hîp thµnh trang bÞ Hoµng Kim",Bil_want_compose},
		{"Ta muèn hîp thµnh trang bÞ Kim Phong",nTRTB_HopThanhTrangBiKimPhong},
		{"Ta muèn hîp thµnh trang bÞ Thiªn Hoµng",nTRTB_HopThanhTrangBiThienHoang},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
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
		"<dec><npc>ChØ cÇn ®­a ta toµn bé m¶nh trang bÞ, kh«ng d­ kh«ng thiÕu hoÆc cã 2 m¶nh trang bÞ gièng nhau, ta sÏ gióp ng­¬i hîp thµnh.",
		"Ta cã ®ñ bé m¶nh trang bÞ muèn nhê «ng hîp thµnh./Bil_want_compose",
		"Ta chØ ghÐ xem cho biÕt./cancel",
	};
	CreateTaskSay(aryDescribe);
end

function Bil_want_compose(bNoConfirm)
	GiveItemUI("Hîp thµnh trang bÞ", "Muèn hîp thµnh trang bÞ ph¶i cã ®ñ bé c¸c m¶nh cña trang bÞ ®ã. NÕu m¶nh trang bÞ ®ang trong tr¹ng th¸i bÞ khãa th× trang bÞ hîp thµnh vÉn sÏ trong tr¹ng th¸i khãa.", "Bil_do_compose", "cancel", 1);
end

function Bil_do_compose(n_count)
	if (n_count <= 0) then
		CreateTaskSay(	{	"<dec><npc>NÕu muèn hîp thµnh trang bÞ th× h·y ®em c¸c m¶nh trang bÞ cho ta, nÕu kh«ng ®ñ bé ta kh«ng gióp ng­êi ®­îc.",
							"Ha ha, ®¹i hiÖp còng cã lóc bÊt cÈn, ®Ó ta ®Æt vµo l¹i./Bil_want_compose",
							"ThËt ng¹i qu¸, ta sÏ quay l¹i sau./cancel"	}	);
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
			CreateTaskSay(	{	"<dec><npc>Hîp thµnh trang bÞ chØ cÇn cã m¶nh trang bÞ t­¬ng øng lµ ®­îc, nh÷ng thø kh¸c ng­¬i h·y cÊt l¹i ®i.",
								"Ha ha, ®¹i hiÖp còng cã lóc bÊt cÈn, ®Ó ta ®Æt vµo l¹i./Bil_want_compose",
								"ThËt ng¹i qu¸, ta sÏ quay l¹i sau./cancel"	}	);
			return
		elseif (GetItemStackCount(n_itemidx) ~= 1) then
			CreateTaskSay(	{	"<dec><npc>m¶nh trang bÞ kh«ng thÓ xÕp chång. Ng­¬i kh«ng nghe ta dÆn råi!",
								"Ha ha, ®¹i hiÖp còng cã lóc bÊt cÈn, ®Ó ta ®Æt vµo l¹i./Bil_want_compose",
								"ThËt ng¹i qu¸, ta sÏ quay l¹i sau./cancel"	}	);
			return
		elseif not n_golddetail then
				nPieceSum = g_aryRecoinConfig[nversion][szgoldkey].m_nPieceSum
				n_goldgenre = g_aryRecoinConfig[nversion][szgoldkey].m_nGenre
				n_golddetail = g_aryRecoinConfig[nversion][szgoldkey].m_nDetailtype
				szgoldname = g_aryRecoinConfig[nversion][szgoldkey].m_szGoldName
				if (n_count > nPieceSum) then
					CreateTaskSay(	{	format("<dec><npc>Kh¸ch quan muèn hîp thµnh <color=yellow]>%s<color>? §­a ta nhiÒu ®å vËy ®Ó lµm g×? ChØ cÇn <color=yellow>%s<color> m¶nh lµ ®­îc.",szgoldname,nPieceSum),
											"Ha ha, ®¹i hiÖp còng cã lóc bÊt cÈn, ®Ó ta ®Æt vµo l¹i./Bil_want_compose",
											"ThËt ng¹i qu¸, ta sÏ quay l¹i sau./cancel"	}	);
						return
				elseif (n_count < nPieceSum) then
					CreateTaskSay(	{	format("<dec><npc>Kh¸ch quan muèn hîp thµnh <color=yellow>%s<color>? Kh«ng cã ®ñ m¶nh trang bÞ, kh«ng thÓ hîp thµnh.",szgoldname),
											"Ha ha, ®¹i hiÖp còng cã lóc bÊt cÈn, ®Ó ta ®Æt vµo l¹i./Bil_want_compose",
											"ThËt ng¹i qu¸, ta sÏ quay l¹i sau./cancel"	}	);
						return
				end
					n_type = 1

		elseif (g_aryRecoinConfig[nversion][szgoldkey].m_nDetailtype ~= n_golddetail) then	
			CreateTaskSay(	{	"<dec><npc>Hîp thµnh trang bÞ cÇn cã m¶nh trang bÞ, ng­¬i ®­a ta m¶nh trang bÞ kh«ng ®óng, kh«ng thÓ hîp thµnh.",
								"Ha ha, ®¹i hiÖp còng cã lóc bÊt cÈn, ®Ó ta ®Æt vµo l¹i./Bil_want_compose",
								"ThËt ng¹i qu¸, ta sÏ quay l¹i sau./cancel"	}	);
			return
		end

		local n_sid = tb_p[2]
		if tb_tgot[n_sid] then	
			CreateTaskSay(	{	format("<dec><npc>Ta kh«ng cÇn 2 m¶nh trang bÞ gièng nhau, hîp thµnh <color=yellow>%s<color> cÇn <color=yellow>%s<color>  <color=yellow>m¶nh %s<color>, h·y nhí kü!",szgoldname,nPieceSum,szgoldname),
								"Ha ha, ®¹i hiÖp còng cã lóc bÊt cÈn, ®Ó ta ®Æt vµo l¹i./Bil_want_compose",
								"ThËt ng¹i qu¸, ta sÏ quay l¹i sau./cancel"	}	);
			return
		end
		tb_tgot[n_sid] = 1
	end
	local szkey = format("[0,%d]",n_golddetail)
	if g_aryRecoinConfig[nversion][szkey] == nil then
			CreateTaskSay(	{	"<dec><npc>Ph¸t sinh lçi hÖ thèng?", "Cho¸ng.../cancel"	}	);
			local str = "do_compose ERROR!!! not tb_tgot "..i;
			WriteLog(format("[Hîp thµnh m¶nh trang bÞ Hoµng Kim] %s\t%s\t%s\t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),str));		
	end
	for i = g_aryRecoinConfig[nversion][szkey].m_nFirstPieceDetail,g_aryRecoinConfig[nversion][szkey].m_nPieceSum-1 do
		if not tb_tgot[i] then
			CreateTaskSay(	{	"<dec><npc>Ph¸t sinh lçi hÖ thèng?", "Cho¸ng.../cancel"	}	);
			local str = "do_compose ERROR!!! not tb_tgot "..i;
			WriteLog(format("[Hîp thµnh m¶nh trang bÞ Hoµng Kim] %s\t%s\t%s\t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),str));
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
			WriteLog(format("<Hîp thµnh m¶nh Hoµng Kim> %s\t%s\t%s\t xãa vËt phÈm thÊt b¹i \t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),GetItemName(GetGiveItemUnit(i))));
			return
		end
	end	
	local str = format("Hîp thµnh <color=yellow>%s<color> thµnh c«ng!",szgoldname)
	Msg2Player(str)
	Msg2SubWorld("VÞ ®¹i  hiÖp <color=yellow>"..GetName().."<color> ®· hîp thµnh trang bÞ <color=Orange>"..szgoldname.."<color> thµnh c«ng,")
	local nItem = AddGoldItem(n_goldgenre,n_golddetail)
	local szItemInfo = getItemInfo(nItem);
	if (bBind) then
		BindItem(nItem)
	end
	WriteLog(format("[Hîp thµnh m¶nh trang bÞ Hoµng Kim] %s\t%s\t%s\t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),str));
	writeRecoinLog("[M¶nh Hoµng Kim hîp thµnh Hoµng Kim]", szItemInfo);
end

function cancel()
end

function OnCancel()
end
