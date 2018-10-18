-- ¥ÛµÌ°°¢∑»À°°∂ŒÀº≥…
-- by£∫Dan_Deng(2003-09-16)
-- update by xiaoyang(2004\4\22) ¥‰—Ã90º∂»ŒŒÒ

Include("\\script\\global\\repute_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main()
	if allbrother_0801_CheckIsDialog(14) == 1 then
		allbrother_0801_FindNpcTaskDialog(14)
		return 0;
	end
	Uworld126 = GetTask(126)
	Uworld36 = GetByte(GetTask(36),2)
	if (Uworld126 < 10) and (GetLevel() >= 90) and (Uworld36 == 127) and (GetReputeLevel(GetRepute()) >= 5) and (GetFaction() ~="cuiyan") then
		Talk(6,"Uworld126_get","Haiz ....","C´ng tˆ v◊ sao lπi thÎ dµi ?","Ng≠Íi trŒ tuÊi ph∂i c„ ch› h≠Ìng lÌn.","Chºng lœ ˝ trung nh©n cÒa c∏c hπ kh´ng c„ Î Æ©y.","Nµng v…n cﬂn Æ©y, nh≠ng t©m Æ∑ ch’t.","Chÿ c«n ng≠¨i thµnh t©m thµnh ˝, chuy÷n g◊ cÚng c„ th” thµnh. C∏c hπ c„ g◊ kh„ kh®n, c¯ vi÷c n„i..")
	elseif (Uworld126 == 10) and (HaveItem(391) == 0) then
		AddEventItem(391)
		Msg2Player("NhÀn Æ≠Óc th≠")
		if (GetSex() == 0) then
			Talk(1,"","MuËn g∆p m¸ nh©n cÚng kh´ng c«n vÈi v∑ nh≠ vÀy Æ©u? Th≠ cﬂn kh´ng c„ c«m n˜a.")
		else
			Talk(1,"","C∏c hπ qu™n mang th≠.")
		end
	elseif (Uworld126 == 40) then
		SetTask(126,45)
		Talk(8,"Uworld126_jump","ßıng n„i lµ!","ßoµn c´ng tˆ ... ng≠¨i ng≠¨i Æ∑ cho L÷ Thu ThÒy h≠Îng tÀn cÔng vinh hoa phÛ qu˝, n˜ nhÀn nh≠ vÀy th◊ thi’u g◊, 10 l≠Óng Æ’n 100 l≠Óng c„ Æ«y.","N„i nh≠ vÀy cÚng kh´ng ÆÛng, xin c∏c hπ rÍi kh·i n¨i nµy nhanh cho.","ßoµn nh≠ thµnh, ng≠¨i r≠Óu mÍi kh´ng uËng muËn uËng r≠Óu phπt h∂, ta kh´ng chﬁu nÊi nhµ ng≠¨i n˜a rÂi, n’u nh≠ ng≠¨i cﬂn kh´ng tr∂ lÍi, ta .. ta ..","Hı  ","NhÀn l y ti”u tˆ! ","Aa.....","ßoµn c´ng tˆ")
	elseif (Uworld126 == 45) then			-- ∑ª¥Ú›Íµƒ
		Talk(1,"Uworld126_jump","Ng≠¨i trËn kh´ng tho∏t kh·i c∏i mi’u nµy, xem chi™u..!")
	elseif (Uworld126 == 50) then
		Talk(8,"Uworld126_set","ßoµn c´ng tˆ kh´ng ph∂i lµ ÆËi thÒ cÒa hæn!","May nhÍ ng≠¨i tÌi kﬁp thÍi, tπi hπ cﬂn c„ th” chﬁu Æ˘ng Æ≠Óc.","Ng≠¨i tı Æ©u tÌi Æ©y?","Ta Æ∑ h¯a vÌi L÷ Thu ThÒy Æ’n Æ©y",".....c„, ta cÔng l÷ c´ n≠¨ng n„i dËi, n„i ng≠¨i bﬁ th≠¨ng n∆ng.","Vi÷c nµy kh´ng Æ≠Óc tËt cho læm.","C∂ ÆÍi hπnh phÛc, chºng lœ kh„ kh®n kh´ng th” v≠Ót qua Æ≠Óc ≠?","ßoπn t≠ thµnh: H∂o.. c∏c hπ muËn th’ nµo cÚng Æ≠Óc. ßoµn mÁ Æ“u nghe theo..")
	elseif (Uworld126 == 70) then
		Talk(3,"U126_70","Sao? L÷ c´ n≠¨ng tÌi th®m ng≠¨i sao?","Nµng tÌi, chÛng ta n„i chuy÷n r t vui vŒ, ng≠¨i giÛp ta r t nhi“u, Æa tπ.","C«n g◊ ph∂i c©u n÷, chÿ c«n 2 ng≠Íi hπnh phÛc, chuy÷n nh· th´i, c„ Æ∏ng g◊.")
	elseif (Uworld126 > 10) and (Uworld126 < 50)then
		Talk(1,"","Tr≠Ìc lµ do ta sai l«m rÂi, thÀt kh´ng bi’t n™n c∂m ¨n nh≠ th’ nµo !...")
	else
		Talk(2,"","ChÛng ta sËng Î ßπi L˝, hªng n®m cung phÙng cho thi™n tri“u, t¨ lÙa, nﬁnh bÓ, xπ h≠¨ng.","B‰n qu©n Kim tham lam, cËng hi’n bao nhi™u cÚng kh´ng ÆÒ.")
   end
end;

function Uworld126_get()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- ∞◊∑˚Œ¥—ß“∞«Ú»≠µƒ£¨≤ª‘ –ÌΩ”»ŒŒÒ
		if (GetSex() == 0) then
			Talk(1,"","Huynh Æµi Æ›ch h∂o ˝, t≠ thµnh minh k˝.")
		else
			Talk(1,"","Huynh Æµi Æ›ch h∂o ˝, t≠ thµnh minh k˝.")
		end
	else
		Say("Th˘c kh´ng d∏m gi u gi’m, tr≠Ìc kia ta Æ∑ c„ lÁi vÌi nµng, b©y giÍ hËi hÀn Æ∑ chÀm. Ta giao cho ng≠¨i mÈt phong th≠. Hy v‰ng c∏c hπ c„ th” t˘ tay giao cho L÷ Thu ThÒy.",2,"Chuy÷n nµy kh„ kh®n g◊/Uworld126_yes","Tπi hπ cﬂn c„ vi÷c, c∏c hπ t◊m ng≠Íi kh∏c Æi!/Uworld126_no")
	end
end

function Uworld126_yes()
	AddEventItem(391)
	SetTask(126,10)
	Msg2Player("NhÀn Æ≠Óc Æoπn t≠ thµnh th≠, Æ’n ThÛy Y™n m´n giao cho L÷ Thu ThÒy. ")
	AddNote("NhÀn Æ≠Óc Æoπn t≠ thµnh th≠, Æ’n ThÛy Y™n m´n giao cho L÷ Thu ThÒy.")
end

function Uworld126_no()
end

function Uworld126_jump()
	SetFightState(1)
	NewWorld(230,1613,3175)
end

function Uworld126_set()
	SetTask(126,60)
	Msg2Player("Lıa gπt Thu ThÒy Æi g∆p ßoπn T≠ Thµnh.")
	AddNote("Lıa gπt Thu ThÒy Æi g∆p ßoπn T≠ Thµnh.")
end

function U126_70()
	Talk(1,"","ßÛng rÂi, Thu ThÒy n„i ng≠¨i Æ’n g∆p ch≠Îng m´n, kh´ng hi”u c„ chuy÷n g◊.")
	SetTask(126,80)
	Msg2Player("N„i chuy÷n cÔng vÌi L÷ Thu thÒy r t vui vŒ, nhanh Æi t◊m Du…n NgÀm Nh©n.")
end
