--Œ˜ƒœ±±«¯ ≥…∂º∏Æ ≤…“©…Ô≈Æ∂‘ª∞£®°∞≤…ºØ“©≤ƒ°±»ŒŒÒ£©
-- Update: Xiao_Yang(2004-04-26)£®‘ˆº”°∞≤…ºØ“©≤ƒ»ŒŒÒ°±£©

Include("\\script\\global\\repute_head.lua")

function main(sel)
	Uworld132 = GetTask(132)
	Uworld133 = GetByte(GetTask(133),1)
	if (Uworld132 == 10) and (HaveItem(112) == 1) and (HaveItem(113) ==1) and (HaveItem(114) ==1) and (HaveItem(115) ==1) and (HaveItem(116) ==1) then
		Talk(2,"Uworld132_finish","Ti”u c´ n≠¨ng, th¯ ng≠¨i muËn ta Æ“u c„","c„ thÀt kh´ng ? r t c∂m tπ ng≠¨i !")
	elseif (GetLevel() >= 20) and (GetReputeLevel(GetRepute()) >= 2) and ((Uworld132 < 10) or ((GetGameTime() > Uworld132) and (Uworld132 > 255))) then		-- °∞≤…ºØ“©≤ƒ°±»ŒŒÒ‘ –Ì∆Ù∂Ø
		if (Uworld133 >= 5) then
			SetTask(133,0)
		end
		Talk(5,"Uworld132_get","...","ti”u c´ n≠¨ng c„ chuy÷n g◊ kh´ng?","thuËc cÒa ta Æi’m g«n Æ©y thi’u mÈt sË Æ≠Óc li÷u quan tr‰ng , c∏c ´ng chÒ ti÷m thuËc ph∂i Æi Th≠¨ng Ch©u Æ” mua .","Ta kh´ng hi”u chuy÷n mua b∏n , nh≠ng,, ta th≠Íng Æ’n ti÷m cÒa ng≠¨i mua thuËc , c„ c∏i g◊ kh„ kh®n ng≠¨i vi÷c n„i ,kh´ng chıng ta c„ th” giÛp ng≠¨i.","c„ thÀt kh´ng ? ng≠¨i bi’t n¨i nµo c„ th” t◊m Æ≠Óc 5 loπi thuËc : t?mÙc tÛc ? Æﬁa c»m c?? thi’n c?? h?nh?c?cÔng linh chi sao","ha ha , qu?may mæn , nh˜ng thuËc nµy ta Æ∑ th y qua Î d≠Óc v≠¨ng cËc ")
	else
		i = random(0,2)
		if (i == 0) then
			Talk(1,"","h∏i thuËc thi’u n˜: chÛng ta thµnh Æ´ ph?cÀn s¨n nh≠ng nhi“u , g«n Æ›ch c?Nga Mi s¨n ? nÛi Thanh Thµnh , xa h¨n mÈt chÛt Æi”m Th≠¨ng s¨n ? cung lai s¨n ? d©n s¨n . s¨n nhi“u , th∂o d≠Óc d?nhi™n l?nhi“u , h¨n n˜a thﬁnh s∂n xuy™n bËi ? x?h≠¨ng ? ngµy t?dπi ? trÔng c?")
		elseif (i == 1) then
			Talk(1,"","h∏i thuËc thi’u n˜: ta h∏i th∂o d≠Óc , Æ≠Óc chÛt ›t Æem b∏n Æi , c?chÛt b∏n cho ti÷m thuËc , ÆÊi l y ti“n nu´i sËng ta cÔng b?nÈi")
		else
			Talk(1,"","h∏i thuËc thi’u n˜: cha m?ta r t sÌm ngay khi ta cﬂn b? ch?cﬂn lπi ta cÔng b?nÈi sËng n≠¨ng t˘a l…n nhau , b?nÈi l?ng≠Íi th©n duy nh t")
		end
	end
end;

function Uworld132_get()
	Say("vÀy ng≠¨i c„ th” giÛp ta h∏i mÈt chÛt mang v“ sao ?",2,"Chÿ lµ chuy÷n nh·, c´ n≠¨ng chÍ mÈt chÛt. /Uworld132_yes"," n¨i Æ„ r t nhi“u qu∏i vÀt , tπi hπ v‚ ngh÷ kh´ng tinh , tËt nh t lµ Æi tu luy÷n th™m Æ∑/Uworld132_no")
end

function Uworld132_yes()
	SetTask(132,10)
	Msg2Player("C„ ng≠Íi n„i Î d≠Óc v≠¨ng cËc th y Æ≠Óc n®m loπi d≠Óc li÷u nµy, cam k’t sœ giÛp c´ n≠¨ng h∏i. ")
end

function Uworld132_no()
end

function Uworld132_finish()
	
	local nResult = 0;
	
	-- ºÏ≤ÈŒÔ∆∑ «ªπ¥Ê‘Û£¨»Áπ˚∑« 1 ‘Ú÷±Ω” return
	for i=112, 116 do
		nResult = HaveItem(i);
		if nResult~=1 then
			return
		end;
		DelItem(i);
	end;
	
	SetTask(132,GetGameTime()+3600)
	
	Uworld133 = GetByte(GetTask(133),1)
	Uworld133_2 = GetByte(GetTask(133),2)
	Cur_date = tonumber(date("%d"))
	if (Uworld133_2 == Cur_date) then
		Uworld133 = Uworld133 + 1
	else
		Uworld133 = 1
	end
	AddRepute(Uworld133)
	Msg2Player("Ng≠Íi Æπt tÌi"..Uworld133.."danh v‰ng tr?")
	if (Uworld133 >= 5)then
		SetTask(133,0)
		AddRepute(10)
		Msg2Player("nhi“u l«n ra tay tr?giÛp , ng≠¨i Æπt Æ≠Óc 10 Æi”m t≠Îng th≠Îng ")
	else
		Uworld133 = SetByte(Uworld133,2,Cur_date)
		SetTask(133,Uworld133)
	end
end
