
Include("\\script\\global\\bil4i3n\\bill4i3n.lua");
Include("\\script\\task\\partner\\master\\partner_master_main.lua");
Include("\\script\\task\\tollgate\\killbosshead.lua")
-- Include("\\script\\task\\tollgate\\messenger\\posthouse.lua")
Include("\\script\\task\\tollgate\\messenger\\bil_newfengzhiqi.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

Define_City = {"<#>L©m An","<#>Ph­îng T­êng","<#>Thµnh §«","<#>§¹i Lı","<#>BiÖn Kinh","<#>T­¬ng D­¬ng","<#>D­¬ng Ch©u"}

function default_talk(letter_laststation)
	if bilNPCDichQuan ~= 1 then
		return Msg2Player("<color=yellow>HiÖn t¹i ta ®ang rÊt mÖt mái, ngµy mai h·y ®Õn ®©y gÆp ta vËy!")
	end
	local W, _ ,_ = GetWorldPos()
	local BIl_letter_laststation = Bil_Getletter_station(W);
	local BIl_Uworld12 = GetTask(12)
	if BIl_Uworld12 < 256 and BIl_Uworld12 > 0  then
		return check_letter(BIl_letter_laststation)
	end
	local nParTaskState = GetMasterTaskState(PARID_TASK_MASTER_002);
	if nParTaskState==nil then nParTaskState = 0; end;
	local aryTalk = {"<dec><npc>ChuyÖn trªn giang hå ta bÊt kÓ, tr­íc m¾t thêi cuéc lung tung lo¹n l¹c, triÒu ®×nh m×nh còng cã thËt nhiÒu phiÒn to¸i muèn gi¶i quyÕt. "};
	-- tinsert(aryTalk, "Ta muèn v× triÒu ®×nh mµ ra chót søc gióp ®ì/especiallymessenger");
	tinsert(aryTalk, "Ta muèn v× triÒu ®×nh mµ ra chót søc gióp ®ì/Bil_NewEspeciallyMessenger");
	tinsert(aryTalk, "Ta ®Õn ®©y ®Ó nhËn nhiÖm vô ®­a th­ /#lastdefault_talk("..BIl_letter_laststation..")");
	tinsert(aryTalk, "Ta ch¼ng qua ghĞ th¨m chót th«i./no");
	CreateTaskSay(aryTalk);
end

function lastdefault_talk(letter_station)
	Uworld12 = GetTask(12)
	if (Uworld12 == 0) then			
		W12_get(letter_station)
	elseif (Uworld12 < 256) then	
		check_letter(letter_station)
	elseif (GetGameTime() >= Uworld12) then	
		W12_get(letter_station)
	else										
		Talk(1,"","<color=Orange>DŞch Quan:<color> B©y giê t¹m thêi kh«ng cã phong th¬ ®Ó ng­¬i gióp mét tay, lµm phiÒn ng­¬i tı n÷a quay l¹i nhĞ.")
	end
end

function W12_get(start_city)
	dest_city = random(1,7)			
	if (dest_city == start_city) then		
		Talk(1,"","<color=Orange>DŞch Quan:<color> B©y giê t¹m thêi kh«ng cã phong th¬ ®Ó ng­¬i gióp mét tay, lµm phiÒn ng­¬i tı n÷a quay l¹i nhĞ.")
	else
		SetTaskTemp(3,start_city*10+dest_city)	
		Say("<color=Orange>DŞch Quan:<color> H«m nay chiÕn sù bËn rén, c«ng v¨n nhiÒu kh«ng ®Õm hÕt, ng­êi trong dŞch tr¹m ®­a tin kh«ng kŞp, ng­¬i cã ı muèn gióp ta mét tay ®­a tin sao? mçi lÇn ®­a tin còng cã thï lao ®İch ®¸ng ®Êy.",2,"Ta ®Õn lµ ®Ó gióp ®­a tin, ®õng nhiÒu lêi/W12_get_yes","th«i, ta cßn nhiÒu viÖc ph¶i lo/no")
	end
end

function check_letter(get_city) 
	x = GetTask(12) 
	dest_city = mod(x,10) 
	start_city = (x - dest_city) / 10 
	if (dest_city == get_city) then 
		if (HaveItem(231+x) == 1) then			
			Talk(1,"","<color=Orange>DŞch Quan:<color> §· nhËn ®­îc mét bøc mËt hµm tõ <color=yellow>"..Define_City[start_city].."<color>, ®· kiÓm tra kh«ng nhÇm. ®©y 500 l­îng lµ chót quµ män t¹ lÔ cho ng­¬i. <pic=0>") 
			DelItem(231+x)
			SetTask(12,GetGameTime()+7200)			
			i = random(5,20) 
			AddRepute(i) 
			Msg2Player("Hoµn thµnh nhiÖm vô §­a th­ Tİn sø, Danh väng t¨ng thªm "..i.." ®iÓm.") 
			AddNote("Hoµn thµnh nhiÖm vô §­a th­ Tİn sø, Danh väng t¨ng thªm "..i.." ®iÓm.") 
			Earn(500) 
		else 
			Say("<color=Orange>DŞch Quan:<color> Bøc c«ng v¨n mËt hµm quan träng nh­ vËy mµ nhµ ng­¬i ®em ®i vøt bá? lÇn nµy coi nh­ng phiÒn to¸i. hoÆc lµ , ®ãng 2000 l­îng b¹c ta gióp ng­¬i ®em chuyÖn nµy giÊu ®i. ",2,"¤ng gióp ta mét lÇn nµy nhĞ, 2000 l­îng cña «ng ®©y/W12_cancel","§îi ta t×m l¹i xem./no") 
		end 
	elseif (start_city == get_city) then 
		if (HaveItem(231+x) == 0) then			
			Say("<color=Orange>DŞch Quan:<color> Bøc c«ng v¨n mËt hµm quan träng nh­ vËy mµ nhµ ng­¬i ®em ®i vøt bá? lÇn nµy coi nh­ng phiÒn to¸i. hoÆc lµ , ®ãng 2000 l­îng b¹c ta gióp ng­¬i ®em chuyÖn nµy giÊu ®i. ",2,"¤ng gióp ta mét lÇn nµy nhĞ, 2000 l­îng cña «ng ®©y/W12_cancel","§îi ta t×m l¹i xem./no") 
		else 
			Talk(1,"","<color=Orange>DŞch Quan:<color> ®©y lµ c«ng v¨n khÈn cÊp , lµm phiÒn ng­¬i ®­a ®i nhanh mét chót.") 
		end 
	else
		Talk(1,"","<color=Orange>DŞch Quan:<color> h×nh nh­ phong th­ nµy kh«ng ph¶i ®­a ®Õn ®©y, ng­¬i h¼n ®­a ®Õn <color=yellow>"..Define_City[dest_city].."<color>.") 
	end 
end 

function W12_cancel() 
	if (GetCash() >= 2000) then 
		Pay(2000) 
		SetTask(12,0) 
		Msg2Player("Hñy bá nhiÖm vô ®­a tin.") 
		AddNote("Hñy bá nhiÖm vô ®­a tin.") 
		Talk(1,"","<color=Orange>DŞch Quan:<color> lÇn nµy cø tİnh nh­ thÕ , sau nµy ng­¬i còng nªn cÈn thËn l¹i.") 
	else 
		Talk(1,"","<color=Orange>DŞch Quan:<color> ngay c¶ 2000 l­îng mµ còng kh«ng cã? ng­¬i cã cÇn ph¶i nghÌo nh­ vËy kh«ng? ®õng cã ®Õn t×m ta n÷a. <pic=15>") 
	end 
end 

function W12_get_yes() 
	x = GetTaskTemp(3) 
	dest_city = mod(x,10) 
	start_city = (x - dest_city) / 10 
	Talk(1,"","<color=Orange>DŞch Quan:<color> Xin gióp ta mét tay ®em phong th­  mËt hµm nµy ®­a ®Õn DŞch Quan <color=yellow>"..Define_City[dest_city].."<color> mäi chuyÖn ñy th¸c cho ng­¬i. <pic=107>") 
	Msg2Player("DŞch Quan <color=yellow>"..Define_City[start_city].."<color> nhê ng­¬i gióp h¾n ®em mét phong hµm ®­a ®Õn <color=green>"..Define_City[dest_city].."<color>. ") 
	AddNote("DŞch Quan <color=yellow>"..Define_City[start_city].."<color> nhê ng­¬i gióp h¾n ®em mét phong hµm ®­a ®Õn <color=green>"..Define_City[dest_city].."<color>. ") 
	SetTask(12,x) 
	AddEventItem(231+x)
end 

function no() 
end 
