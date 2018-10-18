Include("\\script\\lib\\file.lua");
Include("\\script\\lib\\string.lua");
Include("\\script\\global\\playerlist.lua")
Include("\\script\\item\\ib\\headshenxingfu.lua")

function main(sel)
-- dofile("script/item/hsnvtt.lua");
Say("<color=cyan>Cuèn phæ ghi chĞp l¹i c¸c th«ng tin vÒ ph¸i <color=water>Hoa S¬n<color>, c¸c ®Ö tö mãi gia nhËp nªn t×m hiÓu<color>",4,
	"VŞ trİ ®Şa lİ/comi",
	"§Æc ®iÓm vâ häc/comi",
	"NhiÖm vô m«n ph¸i/hsqu",
	"§ãng/no"
	)
return 1		
end;
function comi()
Say("Chøc n¨ng nµy ®ang ®­îc hoµn thiÖn",0)
return 1
end

function hsqu()
Say("<color=cyan>PhÇn nµy ghi chĞp l¹i c¸c th«ng tin vÒ nhiÖm vô ph¸i <color=water>Hoa S¬n<color>, c¸c ®Ö tö mãi gia nhËp nªn t×m hiÓu<color>",9,
	"NhiÖm vô cÊp 10/comi",
	"NhiÖm vô cÊp 20/comi",
	"NhiÖm vô cÊp 30/comi",
	"NhiÖm vô cÊp 40/comi",
	"NhiÖm vô cÊp 50/comi",
	"NhiÖm vô Trïng Ph¶n/comi",
	"NhiÖm vô XuÊt S­/comi",
	"NhiÖm vô cÊp 150/hs150",
	"§ãng/no"
	)
return 1		
end;

function hs150()
Talk(6,"hsqu","<color=red>B­íc 1<color>: <color=green>§Õn gÆp <color=earth>LÖnh Hå Xung<color> nhËn nhiÖm vô ®­a Anh   Hïng ThiÕp (<color=fire>Yªu cÇu ®· häc bİ kiÕp cÊp 120 míi cã thÓ nhËn)<color>","<color=red>B­íc 2<color>: <color=green>T×m gÆp <color=earth>§¹o NhÊt Ch©n Nh©n<color> ë nói Vâ §ang<color>","<color=red>B­íc 3<color>: <color=green>Quay vÒ phôc mÖnh <color=gold>Nam Cung L·o Gia<color> <color>",
	"<color=red>B­íc 4<color>: <color=green>Mang th­ tiÕn cö cho <color=yellow>Nh¹c Minh Phi<color> <color>","<color=red>B­íc 5<color>: <color=green>Giao Anh Hïng LÖnh cho <color=pink>TiÕp dÉn §¹i Héi Vâ   L©m<color> ®Ó vµo tham chiÕn <color>","<color=red>B­íc 6<color>: <color=green>§¸nh b¹i toµn bé cao thñ m«n ph¸i kh¸c.Sau ®ã quay vÒ gÆp <color=gold>Nam Cung L·o Gia<color> hoµn thµnh nhiÖm vô.  <color=fire> NÕu giao chiÕn bŞ träng th­¬ng, gÆp TiÕp dÉn §¹i Héi ®Ó vµo tham chiÕn l¹i tõ ®Çu !")
return 1
end

function no()
return 1
end
