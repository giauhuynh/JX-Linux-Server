--Î÷ÄÏ±±Çø ³É¶¼¸® ¢·ÈË16Ğ¸Ô±İâ¶Ô»° ¶ëáÒÅÉ40¼¶ÈÎÎñ
--author: yuanlan	
--date: 2003/5/23
-- Update: Dan_Deng(2003-08-12)

function main(sel)
	UTask_em = GetTask(1);
	if (UTask_em == 40*256+50) then 		
		UTask_emsub03 = GetByte(GetTask(29),3)
		if (UTask_emsub03 == 0) then 
			Say("t©n viªn ngo¹i : t¹i h¹ b×nh sanh thİch nhÊt kÕt giao giang hå hiÖp kh¸ch , c¸c b»ng h÷u ®Æc ngo¹i hiÖu gäi “ M¹nh Th­¬ng viªn ngo¹i ” , vèn lµ khen lÇm , nh­ng gÇn nhÊt cã ng­êi nãi t¹i h¹ lµ c« tªn c©u dù , t¹i h¹ hÕt søc kh«ng cam lßng . kh«ng biÕt n÷ hiÖp cã thÓ hay kh«ng v× t¹i h¹ gi¶i ®¸p mÊy nghi ngê ?", 2, "xin hái/L40_V3_Q1", "ta cßn cã chuyÖn kh¸c/no")
		elseif (UTask_emsub03 == 3) then 
			L40_V3_Q1()
		elseif (UTask_emsub03 == 5) then 
			L40_V3_Q2()
		elseif ((UTask_emsub03 == 10) and (HaveItem(168) == 0)) then
			AddEventItem(168)
			Talk(1,"","n÷ hiÖp kh«ng cÇn kh¸ch khİ , ng­¬i cÇn th× lÊy ®i ®i")
		else
			Talk(1,"","cã thÓ cïng n÷ hiÖp lµm b»ng h÷u thËt lµ vinh h¹nh.")
		end
	else
		Talk(1,"","t©n viªn ngo¹i : t¹i h¹ b×nh sanh thİch nhÊt kÕt giao giang hå hiÖp kh¸ch , c¸c b»ng h÷u ®Æc ngo¹i hiÖu , gäi lµ “ M¹nh Th­êng viªn ngo¹i ” , thËt sù lµ khen sai råi")
	end
end;

function no()
	Talk(1,"","vËy ta kh«ng phiÒn to¸i n÷ hiÖp!")
end;

function L40_V3_Q1()
	Say("t©n viªn ngo¹i : m¹nh th­êng qu©n lµ ng­êi n­íc nµo ", 4, "N­íc Së/f1", "§ñ n­íc/L40_V3_Q2", "n­íc TriÖu/f1", "N­íc Ngôy/f1")
end;

function f1()
	Talk(1,"","t©n viªn ngo¹i : gièng nh­ kh«ng ®óng sao ? ta lÇn tr­íc nãi nh­ vËy cßn bŞ ng­êi kh¸c nh¹o b¸ng mét phen")
	SetTask(29, SetByte(GetTask(29),3,3))
end;

function L40_V3_Q2()
	Say("t©n viªn ngo¹i : Th× ra lµ h¾n lµ ®ñ quèc nh©n a ! chiÕn quèc Tø c«ng tö trong , trõ m¹nh th­êng qu©n ? l¨ng qu©n hßa b×nh nguyªn ra , ng­¬i cã cßn biÕt cßn mét ai hay kh«ng vËy", 4, "long d­¬ng qu©n/f2", "tÜnh qu¸ch qu©n/f2", "xu©n th©n qu©n/L40_V3_prise", "thiÓu nguyªn qu©n/f2")
end;

function f2()
	Talk(1,"","t©n viªn ngo¹i : gièng nh­ kh«ng ®óng sao ? ta thÒ ch­a nghe nãi qua lÇn nµo")
	SetTask(29, SetByte(GetTask(29),3,5))
end;

function L40_V3_prise()
	Talk(4, "select", "®óng råi , thÕ mµ ta kh«ng nghÜ ®Õn, nghe nãi tr­íc kia m¹nh th­êng qu©n cã 3000 thùc kh¸ch , ta mÆc dï kh«ng cã khİ ph¸ch nh­ vËy , nh­ng lµ rÊt thİch kÕt giao gièng nh­ n÷ hiÖp b»ng h÷u nh­ thÕ . n÷ hiÖp cÇn ta trî gióp sao ?", "ta ®ang t×m bİch tú nhÉn ", "sao kh«ng nãi sím , ta cã mét bİch tú chiÕc nhÉn , ®Ó ta ®­a cho ng­¬i ", "®a t¹ viªn ngo¹i ! ")
end;

function select()
	AddEventItem(168)
Msg2Player("lÊy ®­îc bİch tú nhÉn .")
	SetTask(29, SetByte(GetTask(29),3,10))
	AddNote("ë thµnh ®« t©n viªn ngo¹i chç t×m ®­îc chiÕc nhÉn m· n·o ")
end;
