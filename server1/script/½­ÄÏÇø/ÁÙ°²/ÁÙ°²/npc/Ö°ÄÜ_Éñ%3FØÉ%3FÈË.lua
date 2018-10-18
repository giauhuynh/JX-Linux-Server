-- ÁÙ°²¡¡Ö°ÄÜ¡¡ÉñÃØÉÌÈË
-- By Li_Xin (2004-07-20)

Include("\\script\\global\\shenmi_chapman.lua") 
Include("\\script\\lib\\gb_taskfuncs.lua");
Include("\\script\\task\\system\\task_string.lua")
Include("\\script\\event\\act2years_yn\\baibaoxiang.lua") 
Include("\\script\\event\\leize_upplatina\\platina_upgrade.lua")--°×½ğ×°±¸
Include("\\script\\event\\leize_upplatina\\recoin_platinaequip.lua")--ÖØÖı°×½ğ×°±¸
function main()
	if (CheckGlobalTradeFlag() == 0) then		-- È«¾Ö¾­¼ÃÏµÍ³½»Ò×¿ª¹Ø
		return
	end
	
	local tbDecOpp =
	{
		"<dec><npc>Ta tõ t©y vùc xa x«i v¹n dÆm tíi trung nguyªn nghe nãi n¬i ®©y xuÊt hiÖn <color=yellow>L«i tr¹ch chïy<color> ta tõng xem mét bİ tŞch nãi vÒ l«i tr¹ch chïy lµ <color=yellow>Trang bŞ hoµng kim <color> th¨ng cÊp thµnh <color=yellow>Trang bŞ b¹ch kim<color> cã hay kh«ng muèn thö mét lÇn chØ cÇn ®­¬ng ta 10000 l­îng b¹c.",
		
		--Change request 04/06/2011,¹Ø±ÕÖıÔì°×½ğ×°±¸ - Modified by DinhHQ - 20110605
		--"ÎÒÏëÉı¼¶°×½ğ×°±¸/upgrade_paltinaequip",
		--"ÎÒÏë°Ñ»Æ½ğ×°±¸ÖıÔì³É°×½ğ×°±¸/upgrade_goldformplatina",
		
		--"ÎÒÏëÇëÄãÖØÖı°×½ğ×°±¸/recoin_platina_main",
		--"<#>ÎÒÏë½«Õâ¼ş°×½ğ×°±¸Éı¼¶/get1",
		--"<#>ÎÒÏë½«Õâ¼ş»Æ½ğ×°±¸´òÔì³É°×½ğ×°±¸/get2",
		--"<#> ²ğ½â <×°±¸ËğºÄ>/deal_brokenequip",
		--"ÎÒÏëÁË½â°×½ğ×°±¸²ğ½â/unweave_paltinaequip",
		--"<#>°Ù±¦Ïä/BaiBaoXiang_Give_UI",
		"<#>Ta ch¼ng qua ®i ngang qua/no",
		
	};
	local ndate = tonumber(GetLocalDate("%y%m%d%H"))
	
	--Say(str[1],5,str[6],str[2],str[3],str[4], str[5])
	CreateTaskSay(tbDecOpp);
end;

function no()
end;
