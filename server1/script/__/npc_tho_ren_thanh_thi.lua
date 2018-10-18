
Include( "\\script\\item\\compound\\compound_header.lua" );
Include( "\\script\\item\\compound\\atlas.lua" );
function onFoundry()
	Say( "<color=Orange>Thi�t t��ng<color>: N�u nh� ��i hi�p mu�n r�n trang b�, h�y chu�n b� nguy�n li�u ��y �� t�i t�m ta. Ta c� th�<enter>gi�p ng�i ch� t�o v� kh� th�ch h�p v�i ng�i. ", 4, "B�t ��u ch� t�o/onFoundryItem", "T�m hi�u/onAbout", "Ch� �� HK/onQueryPiece","�� ta suy ngh� l�i/onCancel");
end

function onFoundryItem()
	if( isCompoundableToday() == 1 ) then
		FoundryItem();
	else
		-- Say( "Th� r�n: L�o phu v�n �� ki�t s�c, ��i hi�p ng�y mai h�y tr� l�i �i.", 1, "���c, v�y ta xin c�o t�! /onCancel" );
		print("!!! WARNING ===> Da dat toi gioi han trang bi huyen tinh !!!")
		FoundryItem();
	end
end

function onQueryPiece()
	QueryPiece()
end

function onAbout()
	Talk( 3, "onAbout2", "D�ng thu�c t�nh kho�ng th�ch, huy�n tinh kho�ng th�ch, trang b� t�m, ho�ng kim �� ph�, �� c� th� ch� t�o ra trang b� t�m v�i trang b� ho�ng kim. Ch� t�o trang b� g�m: Tinh Luy�n, Ch� T�o, L�y Ra, �� Ph�, Kh�m N�m." );
end

function onAbout2()
	Talk( 2, "", "<color=yellow>�� ph� Ho�ng Kim <color>:  M�i 1 m�n �� Ho�ng Kim c� 1 b�n �� ph� HK t��ng �ng. D�a theo nh�ng y�u c�u m� t�m �� ph� �� ghi, h�y t�m ��y �� th� c� th� h�p th�nh 1 m�n �� Ho�ng Kim" );
end

function onCancel()
end