-- COIN=10
COIN=1
Include("\\script\\global\\systemconfig.lua")
Include("\\script\\event\\vnchristmas2006\\event.lua")
Include("\\script\\global\\vn\\gamebank_head.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

function gamebank_proc()
	if (GetBoxLockState() ~= 0) then
		Say("Xin më khãa r­¬ng tr­íc !", 0)
		return
	end
	local msg = {
		"Ta muèn rót TiÒn §ång/get_ingot",
		"KiÓm tra ta cßn gëi bao nhiªu TiÒn §ång/show_ingot",
		"Ta muèn ®æi Nguyªn b¶o thµnh TiÒn ®ång/change_ingot_to_coin",
		"Nh©n tiÖn ghÐ qua th«i/no"
	};
	local talk = "";  
	if (GetSex() == 0) then
		talk = "Chµo <color=yellow>"..GetName().."<color> ThiÕu gia cÇn ta gióp g× kh«ng?";
	else
		talk = "Chµo <color=yellow>"..GetName().."<color> N÷ hiÖp cÇn ta gióp g× kh«ng?";
	end
	Say(talk, getn(msg), msg)
end
------------- ²éÑ¯Ôª±¦ --------------------
function show_ingot()
	local nMoney = GetExtPoint(1)
	if (nMoney >= 32768) then
		nMoney = 0
		Msg2Player("§· x·y ra lçi trong ng©n khè cña b¹n, t¹m thêi kh«ng thÓ rót ®­îc TiÒn §ång. Xin vui lßng liªn hÖ víi nhµ ph¸t hµnh ®Ó ®­îc gi¶i quyÕt !")
		return
	end
	if (nMoney <= 0) then
		Say("¤ng chñ tiÒn trang: Kh¸ch quan ch­a hÒ göi kú tr©n b¶o vËt g× ë ®©y",1,"BiÕt råi/no")
		return
	else
		local nCurVar = nMoney *COIN
		Say("Kh¸ch quan ®· göi t¹i bæn tiÖm tæng céng <color=green>"..nCurVar.."<color> TiÒn §ång.",1,"BiÕt råi/no")
	end
end

------------- È¡Ôª±¦ -----------------------
function get_ingot()

	if (SYSCFG_GAMEBANK_GOLDSILVER_OPEN ~= 1) then
		Talk(1,"","Xin lçi! TiÒn trang hiÖn ®ang s÷a ch÷a! 2 ngµy n÷a kh¸ch quan quay l¹i nhÐ! ")
		return
	end

	local nMoney = GetExtPoint(1)	
	if (nMoney >= 32768) then
		nMoney = 0
		Msg2Player("§· x·y ra lçi trong ng©n khè cña b¹n, t¹m thêi kh«ng thÓ rót ®­îc TiÒn §ång. Xin vui lßng liªn hÖ víi nhµ ph¸t hµnh ®Ó ®­îc gi¶i quyÕt !")
		return
	end
	if CalcFreeItemCellCount() < 10 then
			Talk(1, "", "Hµnh trang kh«ng ®ñ 10 « trèng.");
			return 1
	end
	if (nMoney <= 0) then			
		Talk(1,"","Xin lçi! Kh¸ch quan kh«ng cã gëi TiÒn ®ång t¹i bæn trang !")
		return
	else
		local nCurVar = nMoney *COIN
		-- if nCurVar == 100 then
			-- Say("<#>Kh¸ch quan ®· göi t¹i bæn trang tæng céng <color=green>"..nCurVar.."<color> TiÒn §ång. Cã muèn lÊy ra kh«ng?", 2, "Ta muèn lÊy ra 100 TiÒn §ång/get_ingot10", "Kh«ng lÊy/no")
		-- elseif nCurVar == 200 then
			-- Say("<#>Kh¸ch quan ®· göi t¹i bæn trang tæng céng <color=green>"..nCurVar.."<color> TiÒn §ång. Cã muèn lÊy ra kh«ng?", 3, "Ta muèn lÊy ra 100 TiÒn §ång/get_ingot10", "Ta muèn lÊy ra 200 TiÒn §ång/#Bil_get_ingotWithValue(200)", "Kh«ng lÊy/no")
		-- elseif nCurVar >= 300 then
			-- Say("<#>Kh¸ch quan ®· göi t¹i bæn trang tæng céng <color=green>"..nCurVar.."<color> TiÒn §ång. Cã muèn lÊy ra kh«ng?", 4, "Ta muèn lÊy ra 100 TiÒn §ång/get_ingot10", "Ta muèn lÊy ra 200 TiÒn §ång/#Bil_get_ingotWithValue(200)", "Ta muèn lÊy ra Sè l­îng lín TiÒn §ång/Bil_Bil_get_ingotWithValue_Input_Info", "Kh«ng lÊy/no")
		-- end
		
		return Say("Kh¸ch quan hiÖn ®ang göi t¹i bæn tiÖm tæng céng: "..nCurVar.." TiÒn ®ång, kh¸ch quan cã muèn rót ra?", 2, 
			"T¹i h¹ muèn rót tiÒn ®ång ra/Bil_Bil_get_ingotWithValue_Input_Info",
			"Kh«ng lÊy/no"
		)
	end
end

function Bil_Bil_get_ingotWithValue_Input_Info()
	Talk(1, "Bil_Bil_get_ingotWithValue_Input", "Quý kh¸ch quan vui lßng nhËp sè l­îng tiÒn ®ång muèn rót ra!")
end

function Bil_Bil_get_ingotWithValue_Input()
	AskClientForNumber("Bil_get_ingotWithValue",0,1000,"<#>NhËp Sè l­îng muèn rót")
end

function Bil_get_ingotWithValue(Value)
	-- local Bil_CheckValue = mod(Value, 10)
	if Value <= 0 then
		return Say("VÞ "..GetPlayerSex().." xem ra muèn trªu chäc l·o giµ ®©y sao?", 2, "Ta nhÇm, ®¹i hiÖp còng cã lóc bÊt cÈn mµ, ®Ó ta nhËp l¹i!/Bil_Bil_get_ingotWithValue_Input", "Hahaha! h«m nay ta vui, ®Õn ®ïa víi ng­¬i chót th«i./no")
	end
	-- if (floor(Value/10) > GetExtPoint(1)) then
	if Value > GetExtPoint(1) then
		return Say("VÞ "..GetPlayerSex().." nµy cã nhÇm kh«ng, sæ s¸ch t¹i bæn trang ghi chÐp rÊt cÈn thËn, sè d­ hiÖn t¹i cña "..GetPlayerSex().." lµ: <color=yellow>"..GetExtPoint(1)*COIN.."<color> TiÒn §ång", 2, "Ta nhÇm, ®¹i hiÖp còng cã lóc bÊt cÈn mµ, ®Ó ta nhËp l¹i!/Bil_Bil_get_ingotWithValue_Input", "Hahaha! h«m nay ta vui, ®Õn ®ïa víi ng­¬i chót th«i./no")
	end
	if (SYSCFG_GAMEBANK_SILVER_GET == nil) then 
		print("get_silver have close, but something is wrong...");
		Msg2Player("Chøc n¨ng bÞ lçi!");
		return
	end
	-- if (GetExtPoint(1) < 100) then
		-- Talk(1,"","§· x·y ra lçi trong ng©n khè cña b¹n, t¹m thêi kh«ng thÓ rót ®­îc TiÒn §ång. Xin vui lßng liªn hÖ víi nhµ ph¸t hµnh ®Ó ®­îc gi¶i quyÕt !")
		-- return
	-- end
	if Value == 0 then
		return Talk(1, "", "VÞ "..GetPlayerSex().." nµy h«m nay t©m tr¹ng cã vÎ vui nhØ, ®Õn chäc ghÑo bæn trang.")
	end
	-- if Value == 100 then
		-- return get_ingot10()
	-- end
	-- if Value == 200 then
		-- return Say("Kh¸ch quan x¸c ®Þnh muèn rót <color=yellow>200<color> TiÒn §ång chø? (Sau khi x¸c nhËn xin ®õng tho¸t khái trß ch¬i!) ", 2, "X¸c nhËn/#Bil_get_ingotWithValue_OK(200)", "Hñy bá /no");
	-- end
	if (Value > 0) and (Value <= 1000)  then
		return Say("Kh¸ch quan x¸c ®Þnh muèn rót <color=yellow>"..Value.."<color> TiÒn §ång chø? (Sau khi x¸c nhËn xin ®õng tho¸t khái trß ch¬i!) ", 2, "X¸c nhËn/#Bil_get_ingotWithValue_OK("..Value..")", "Hñy bá /no");
	end
end

function Bil_get_ingotWithValue_OK(Value)
	if Value < 1 and Value > 1000 then
		Msg2Player("Thao t¸c TiÒn §ång bÞ lçi, xin liªn hÖ GM ®Ó gi¶i quyÕt!")
		return
	end
	-- PayExtPoint(1,1)
	Msg2Player("HiÖn ®ang lÊy TiÒn §ång cho quý kh¸ch! Xin l­u ý ®õng tho¸t khái trß ch¬i!")
	-- for i = 1, floor(Value/100) do
		-- PayExtPoint(1,100)
	-- end
	PayExtPoint(1,Value)
end;

function get_ingot10()
	if (SYSCFG_GAMEBANK_SILVER_GET == nil) then 
		print("get_silver have close, but something is wrong...");
		Msg2Player("Chøc n¨ng bÞ lçi!");
		return
	end
	if (GetExtPoint(1) < 100) then
		Talk(1,"","§· x·y ra lçi trong ng©n khè cña b¹n, t¹m thêi kh«ng thÓ rót ®­îc TiÒn §ång. Xin vui lßng liªn hÖ víi nhµ ph¸t hµnh ®Ó ®­îc gi¶i quyÕt !")
		return
	end
	Say("Kh¸ch quan x¸c ®Þnh muèn rót <color=yellow>100<color> TiÒn §ång chø? (Sau khi x¸c nhËn xin ®õng tho¸t khái trß ch¬i!) ", 2, "X¸c nhËn/get_ingot10ok", "Hñy bá /no");
end

function get_ingot10ok()
	PayExtPoint(1,100)
	Msg2Player("HiÖn ®ang lÊy TiÒn §ång cho quý kh¸ch! Xin l­u ý ®õng tho¸t khái trß ch¬i!")
end;

------------- ¶ÒÏÖÔª±¦ ---------------------
function pay_ingot()

	if (SYSCFG_GAMEBANK_SILVER_PAY ~= 1) then
		Talk(1,"","Xin lçi! TiÒn trang hiÖn ®ang s÷a ch÷a! 2 ngµy n÷a kh¸ch quan quay l¹i nhÐ! ")
		return
	end

	-- Ô½ÄÏµÄÒøÔª±¦ÎïÆ·IDÓë´óÂ½°æ±¾µÄ½ðÔª±¦ÎïÆ·IDÒ»ÖÂ
	local nCurTD = CalcEquiproomItemCount(4,417,1,1)
	if (nCurTD >= 20) then
		Say("¤ng chñ tiÒn trang: Kh«ng thµnh vÊn ®Ò! Kh¸ch quan muèn ®æi <color=green>TiÒn §ång<color> sang h×nh thøc nµo?", 3,"Ta muèn dïng 20 TiÒn §ång ®æi  thµnh 10 ngµy ch¬i/pay_ingot_10a","Ta muèn dïng 20 TiÒn §ång ®æi thµnh 20 giê ch¬i/pay_ticket_10b","Kh«ng ®æi n÷a/no")
	else
		Say("Kh¸ch quan kh«ng mang ®ñ TiÒn §ång ­?",1,"§óng råi! Ta quªn mang theo/no")
	end

end

function pay_ingot_10a()
	if (SYSCFG_GAMEBANK_SILVER_PAY == nil) then -- ³ö´íÁË~~
		print("pay_silver10 have close, but something is wrong...");
		Msg2Player("Chøc n¨ng bÞ lçi!");
		return
	end
	local nCurTD = CalcEquiproomItemCount(4,417,1,1)
	if (nCurTD >= 20) then
		if (ConsumeEquiproomItem(20,4,417,1,1)~= 1) then
			Msg2Player("Trõ tiÒn ®ång thÊt b¹i !")
			WriteLog(date("%Y%m%d %H%M%S").."\t".."§æi 10 ngµy ch¬i"..GetAccount().."\t"..GetName().."\t".."dïng 20 TiÒn §ång ®æi  thµnh 10 ngµy ch¬i thÊt b¹i")
			return
		end
		UseSilver(1,1,1)
		SaveNow(); -- Á¢¼´´æÅÌ
		WriteLog(date("%Y%m%d %H%M%S").."\t".."§æi 10 ngµy ch¬i"..GetAccount().."\t"..GetName().."\t".."dïng 20 TiÒn §ång ®æi  thµnh 10 ngµy ch¬i thµnh c«ng")
		WriteGoldLog( GetAccount().."("..GetName()..") USE a 343 SILVER for 10 DAY CHARGE", 0, -1, 0 );
		Say("¤ng chñ tiÒn trang: <color=green>Sö dông 20 TiÒn §ång<color> ®æi sang <color=red>10 ngµy ch¬i<color> thµnh c«ng. Xin kh¸ch quan kiÓm tra l¹i!", 0)
	end
end

function pay_ticket_10b()
	if (SYSCFG_GAMEBANK_SILVER_PAY == nil) then -- ³ö´íÁË~~
		print("pay_silver10 have close, but something is wrong...");
		Msg2Player("Chøc n¨ng bÞ lçi!");
		return
	end
	local nCurTD = CalcEquiproomItemCount(4,417,1,1)
		if (nCurTD >= 20) then
			if (ConsumeEquiproomItem(20,4,417,1,1)~= 1) then
				Msg2Player("Trõ tiÒn ®ång thÊt b¹i !")
				WriteLog(date("%Y%m%d %H%M%S").."\t".."§æi 20 giê ch¬i"..GetAccount().."\t"..GetName().."\t".."dïng 20 TiÒn §ång ®æi  thµnh 20 giê ch¬i  thÊt b¹i")
				return
			end
			UseSilver(1,0,1)
			SaveNow(); -- Á¢¼´´æÅÌ
			WriteLog(date("%Y%m%d %H%M%S").."\t".."§æi 20 giê ch¬i"..GetAccount().."\t"..GetName().."\t".."dïng 20 TiÒn §ång ®æi  thµnh 20 giê ch¬i thµnh c«ng")
			WriteGoldLog( GetAccount().."("..GetName()..") USE a 343 SILVER for 20 HOURS CHARGE", 0, -1, 0 );
			Say("¤ng chñ tiÒn trang: <color=green>Sö dông 20 TiÒn §ång<color> ®æi sang <color=green>20 giê ch¬i<color> thµnh c«ng. Xin kh¸ch quan kiÓm tra l¹i!", 0)
		end
end

------------- ¶Ò»»Í­Ç®---------------------
function change_ingot_to_coin()	
	local nSilverCount = GetItemCountEx( 343 );		-- Ôª±¦¸öÊý
	if (SYSCFG_GAMEBANK_SILVER_COIN ~= 1) then
		Talk(1,"","Xin lçi! TiÒn trang hiÖn ®ang s÷a ch÷a! 2 ngµy n÷a kh¸ch quan quay l¹i nhÐ! ")
		return
	end
	if (nSilverCount <= 0) then					-- Ã»ÓÐÔª±¦
		Say( "Kh¸ch quan kh«ng mang Kim Nguyªn B¶o theo ­?", 1, "§óng råi! Ta quªn mang theo/no");
		return
	end
	if CalcFreeItemCellCount() < 5 then
			Talk(1, "", "Hµnh trang kh«ng ®ñ 5 « trèng.");
			return 1
	end
	Say( "¤ng chñ tiÒn trang: Kh¸ch quan ®ång ý ®æi tiÒn §ång chø?<enter><enter>HiÖn t¹i tû gi¸ quy ®æi lµ <color=yellow>1 KNB<color> = <color=yellow>"..COIN_CHANGE_COUNT_OF_SILVER.." TiÒn ®ång<color>", 2, "§æi 1 Nguyªn b¶o thµnh "..COIN_CHANGE_COUNT_OF_SILVER.." tiÒn ®ång/change_silver_to_coin", "Kh«ng ®æi n÷a/no");
end

function change_silver_to_coin()
	if (SYSCFG_GAMEBANK_SILVER_COIN == nil) then -- ³ö´íÁË~~
		print("coin_silver have close, but something is wrong...");
		Msg2Player("Chøc n¨ng bÞ lçi!");
		return
	end
	
	if (GetItemCountEx(343) > 0) then		
		DelItemEx( 343 );		
		local Bil_itIdex = AddStackItem( COIN_CHANGE_COUNT_OF_SILVER, 4, 417, 1, 1, 0, 0, 0 );
		-- SetItemBindState(Bil_itIdex,-2);
		-- local Bil_itIdex2 = AddStackItem( 100, 4, 417, 1, 1, 0, 0, 0 );
		-- SetItemBindState(Bil_itIdex2,-2);
		UseSilver(1, 2, 1); -- ÒøÆ±¶Ò»»ÎªÍ­Ç®µÄÏûºÄÍ³¼Æ
		
		SaveNow(); -- Á¢¼´´æÅÌ
		WriteGoldLog( GetAccount().."("..GetName()..") CHANGE a SILVER into "..COIN_CHANGE_COUNT_OF_SILVER.." COINS", 0, -1, COIN_CHANGE_COUNT_OF_SILVER );
		--local nSilverCount = GetItemCountEx( 343 );		-- Ôª±¦¸öÊý
		--if( nSilverCount > 0 ) then
		--	Say( "Ç®×¯ÀÏ°å£ºÄúµÄÔª±¦ÒÑ³É¹¦¶Ò»»³É"..COIN_CHANGE_COUNT_OF_SILVER.."<#>¸öÍ­Ç®£¬Çë¿ÍÙÄºË²é¡£", 2, "ÖªµÀÁË/no", "ÔÙ¶Ò»»Ò»Ð©Í­Ç®/change_coin" );
		--else
		Say( "¤ng chñ tiÒn trang: Kh¸ch quan ®æi Nguyªn b¶o ra <color=yellow>"..COIN_CHANGE_COUNT_OF_SILVER.."<#> TiÒn ®ång<color>! Xin kh¸ch quan kiÓm tra l¹i!",0);
		--end
	end
end

------------ ¹ØÓÚÍ­Ç® ------------------
function onAboutCoin()
	Talk( 2,"","¤ng chñ tiÒn trang: Cã thÓ mang Nguyªn b¶o ®Õn bæn tiÖm ®Ó ®æi thµnh tiÒn §ång, 1 <color=yellow>Nguyªn B¶o<color> ®æi ®­îc <color=yellow>"..COIN_CHANGE_COUNT_OF_SILVER.."<color> tiÒn §ång.Nguyªn b¶o sau khi ®· ®æi ra tiÒn §ång th× kh«ng thÓ ®æi l¹i","TiÒn ®ång cã thÓ ®Õn c¸c thµnh thÞ n¬i Hµng Rong ®Ó mua Kú tr©n dÞ b¶o.","Ên gi÷ chuét tr¸i vµo mét tiÒn ®ång, kÐo chång lªn 1 ®ång tiÒn kh¸c, tèi ®a lµ <color=yellow>100 ®ång<color>. NhÊn gi÷ phÝm <color=yellow>Shift<color> vµ nhÊn chuét tr¸i vµo mét ®èng tiÒn, nhËp sè tiÒn muèn t¸ch. NhÊp x¸c ®Þnh ®Ó hoµn thµnh!");
end
----------------------------------------
function no()
end
