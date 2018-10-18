
Include( "\\script\\item\\compound\\compound_header.lua" );
Include( "\\script\\item\\compound\\atlas.lua" );
function onFoundry()
	Say( "<color=Orange>ThiÕt t­îng<color>: NÕu nh­ ®¹i hiÖp muèn rÌn trang bŞ, h·y chuÈn bŞ nguyªn liÖu ®Çy ®ñ tíi t×m ta. Ta cã thÓ<enter>gióp ngµi chÕ t¹o vò khİ thİch hîp víi ngµi. ", 4, "B¾t ®Çu chÕ t¹o/onFoundryItem", "T×m hiÓu/onAbout", "ChÕ ®å HK/onQueryPiece","§Ó ta suy nghÜ l¹i/onCancel");
end

function onFoundryItem()
	if( isCompoundableToday() == 1 ) then
		FoundryItem();
	else
		-- Say( "Thî rÌn: L·o phu vèn ®· kiÖt søc, ®¹i hiÖp ngµy mai h·y trë l¹i ®i.", 1, "§­îc, vËy ta xin c¸o tõ! /onCancel" );
		print("!!! WARNING ===> Da dat toi gioi han trang bi huyen tinh !!!")
		FoundryItem();
	end
end

function onQueryPiece()
	QueryPiece()
end

function onAbout()
	Talk( 3, "onAbout2", "Dïng thuéc tİnh kho¸ng th¹ch, huyÒn tinh kho¸ng th¹ch, trang bŞ tİm, hoµng kim ®å phæ, ®Ó cã thÓ chÕ t¹o ra trang bŞ tİm víi trang bŞ hoµng kim. ChÕ t¹o trang bŞ gåm: Tinh LuyÖn, ChÕ T¹o, LÊy Ra, §å Phæ, Kh¶m N¹m." );
end

function onAbout2()
	Talk( 2, "", "<color=yellow>§å phæ Hoµng Kim <color>:  Mçi 1 mãn ®å Hoµng Kim cã 1 b¶n ®å phæ HK t­¬ng øng. Dùa theo nh÷ng yªu cÇu mµ tÊm ®å phæ ®ã ghi, h·y t×m ®Çy ®ñ th× cã thÓ hîp thµnh 1 mãn ®å Hoµng Kim" );
end

function onCancel()
end