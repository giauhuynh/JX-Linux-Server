
-- ====================== ÎÄ¼şĞÅÏ¢ ======================

-- ½£ÏÀÇéÔµonline ×ªÉúÈÎÎñ ±±¶·³¤ÉúÊõ»ù´¡Æª µÀ¾ß
-- FileName: jiayi_shengong.lua
-- Edited: ×Ó·ÇÓã
-- 2007-03-30	20:14:00

-- ======================================================

Include("\\script\\task\\metempsychosis\\task_func.lua")

function main()
	if GetLevel() >= 180 then
		if (GetTask(TSK_ZHUANSHENG_FLAG) == 0) then
			SetTask(TSK_ZHUANSHENG_FLAG,1);
			Msg2Player("<color=green>§· häc ®­îc <B¾c §Èu Tr­êng Sinh ThuËt - C¬ Së Thiªn>!")
			Say("<color=orange>B¾c §Èu Tr­êng Sinh ThuËt<color>: <color=green>§· häc ®­îc B¾c §Èu Tr­êng Sinh ThuËt - C¬ Së Thiªn<color> nh­ng vâ c«ng vÉn ch­a ®­îc n©ng cÊp, xem ra trong ®©y vÉn cã ®iÒu  bİ Èn vÉn ch­a ®­îc kh¸m ph¸.<enter>CÇn ®Õn Minh NguyÖt TrÊn gÆp Minh nguyÖt l·o nh©n ®Ó häc tiÕp cuèn B¾c §Èu Tr­êng Sinh ThuËt - T©m Ph¸p Thiªn míi cã thÓ hiÓu ®­îc hÕt ı nghÜa cña nã!", 0)
			return 0
		else
			Say("<color=orange>B¾c §Èu Tr­êng Sinh ThuËt<color>: Ng­êi ®· ®äc hiÓu quyÓn mËt tŞch nµy, kh«ng cÇn ®äc thªm n÷a!", 0)
			return 1
		end
	else
		Say("<color=orange>B¾c §Èu Tr­êng Sinh ThuËt<color>: Ng­êi d­íi ®¼ng cÊp 180 nh×n vµo sÏ kh«ng hiÓu ®©y lµ cuèn mËt tŞch ghi chĞp vÒ m«n vâ c«ng nµo!", 0)
		return 1
	end
end
