	-- ��ng gi� h��ng m�t t� ph�c v� kh� s� h�u Gameserver ph�t h� th�ng th�ng c�o

	function TaskShedule()

	TaskName( "T� ��ng tin t�c - th�ng c�o ");

	-- 20 ph�t m�t l�n

	TaskInterval(20);

	-- kh�ng thi�t TaskTme, c�n l�i l� Relay kh�i ��ng th� m� b�t ��u

	-- 0 �i�m 00 xa nhau th�y

	-- TaskTime(0, 0);

	TaskCountLimit(0);

	OutputMsg( "He thong thong bao tin tuc tu dong ");

	end

	g_strTipMsg =

	{

	-- "T�ng m�n ph�i c� 2-3 con r� r�ng k� n�ng ph�t tri�n l� tuy�n, c�c con l� tuy�n ��c �i�m c�ng ti�n minh",

	-- "� tr� ch�i tr�n th� gi�i d� c�c th�nh ph� l�n c�a th�nh v� binh v� tay m�i th�n m�n ph�i ti�p d�n �� t� ��i tho�i, nh�ng l� gi�i b�n m�n k� n�ng ph�t tri�n l� tuy�n v� th�ch h�p nh�t luy�n c�p n�i",

	-- "� tr� ch�i tr�n th� gi�i d� c�c th�nh ph� l�n c�a th�nh v� binh v� tay m�i th�n m�n ph�i ti�p d�n �� t� ��i tho�i, nh�ng l� gi�i b�n m�n k� n�ng ph�t tri�n l� tuy�n v� th�ch h�p nh�t luy�n c�p n�i",

	-- "� tr� ch�i tr�n th� gi�i d� c�c th�nh ph� l�n c�a th�nh v� binh v� tay m�i th�n m�n ph�i ti�p d�n �� t� ��i tho�i, nh�ng l� gi�i b�n m�n k� n�ng ph�t tri�n l� tuy�n v� th�ch h�p nh�t luy�n c�p n�i",

	-- "� tr� ch�i tr�n th� gi�i d� c�c th�nh ph� l�n c�a th�nh v� binh v� tay m�i th�n m�n ph�i ti�p d�n �� t� ��i tho�i, nh�ng l� gi�i b�n m�n k� n�ng ph�t tri�n l� tuy�n v� th�ch h�p nh�t luy�n c�p n�i",

	"� tr� ch�i tr�n th� gi�i d� c�c th�nh ph� l�n c�a th�nh v� binh v� tay m�i th�n m�n ph�i ti�p d�n �� t� ��i tho�i, nh�ng l� gi�i b�n m�n k� n�ng ph�t tri�n l� tuy�n v� th�ch h�p nh�t luy�n c�p n�i.",

	-- "D�n v�o ? k� n�ng th�m ���c ? kh�i ni�m, ��ng c�p cao k� n�ng �i�m nhi�u vai tu�ng �u th� t��ng c�ng th�m xong th� hi�n",

	-- "? k� n�ng th�m ���c ? c�p th�p chi�n ��u k� n�ng ��i cao c�p chi�n ��u k� n�ng l� ch� th�m ���c cao c�p k� n�ng th��ng t�n",

	-- "Ho�n to�n m�i ? ng� h�nh t��ng kh�c ? h� th�ng, b�t k� m�n ph�i n�o �ang c�ng b� ch�nh kh�c m�n ph�i PK th� s� ch�nh m�nh c�ng th�m r� r�ng �u th�",

	-- "7 nguy�t 16 ng�y sau l�n ��u ti�n l�n ��t li�n tr� ch�i th� gi�i, h� th�ng h�i c�n c� vai tu�ng c� k� n�ng tr�ng hu�ng t� ��ng tu ch�nh vi m�i k� n�ng, ti�m n�ng �i�m kh�i ph�c l�i nguy�n th�y ch�a ph�n ph�i tr�ng th�i",

	-- "? k� n�ng �� thu�n th�c ? �i qua kh�ng ng�ng s� d�ng th� k� n�ng c�ng k�ch ��ch nh�n thu ���c �� th�ng, d� ��ch nh�n ��ng c�p v� ngo�n gia l�y ���c luy�n c�p kinh nghi�m kh�ng quan h�",

	-- "Con chu�t chuy�n qua NPC tr�n ng��i, nh�ng bi�u hi�n ? ng� h�nh thu�c t�nh �� ti�u ?",

	-- "NPC ch� r�i xu�ng t��ng �ng ng� h�nh thu�c t�nh b�o v�t, n�u nh� mu�n c� ���c b�ng th��ng, c� th� �i m�c n��c h� NPC",

	-- "NPC ch� r�i xu�ng t��ng �ng ng� h�nh thu�c t�nh b�o v�t, n�u nh� mu�n c� ���c may m�n trang b�, c� th� �i �� m�c h� NPC",

	-- "NPC ng� h�nh thu�c t�nh �� ti�u: Kim s�c - kim h�; lam s�c - th�y h�; l�c s�c - m�c h�; m�u �� - h�a h�; n�u - th� h�",

	-- "?NPC �i�u ch�nh ? sa m�c m� cung NPC kh�ng ch� c� ��ng c�p cao, kinh nghi�m �a, n�y sinh c�i m�i kho�i, h�n n�a r�i b�o t� s� th� ph� th�ng NPC nh� ��o g�p ba",

	-- "? h�p th�nh ��i ? m�t k�ch t�i h�u ngo�n gia l�y ���c kinh nghi�m t��ng th� m�t ng��i kinh nghi�m 1. 3 b�i",

	-- "? h�p th�nh ��i ? ��i ng� th�nh vi�n may m�n gi� tr� t��ng c�n c� trong ��i ng� nh�n s� xong t��ng �ng �� th�ng",

	-- "? h�p th�nh ��i ? ��i ng� th�nh vi�n may m�n gi� tr� t��ng c�n c� trong ��i ng� nh�n s� xong t��ng �ng �� th�ng; r�i xu�ng trang b� thu�c t�nh t��ng c�n c� m�t k�ch t�i h�u ngo�n gia vai may m�n gi� tr� lai quy�t ��nh",

	-- "? h�p th�nh ��i ki�n ngh� ? ��ng c�p cao ngo�n gia ��i c�p b�c th�p ngo�n gia, ��ng c�p k�m 70 c�p �� ngo�i th�, ��u t� th�ng c�p t�c �� t��ng �� cao 20% �� ngo�i",

	-- "? h�p th�nh ��i t� vong nghi�m ph�t ? h�p th�nh ��i nh�n s� c�ng nhi�u, t� vong h�u r�i kinh nghi�m c�ng �t; n�u trong ��i ng� nh�n s� ��t ���c t�m ng��i, t� vong h�u t��ng kh�ng xong kinh nghi�m",

	-- "? hoa ��o ��o ? h��ng hoa ��o �n s� mua ch�o m�ng 8 th�ng ch�p, t�ch tr�n ��o linh kh�, ch�o m�ng 8 th�ng ch�p c�ng hi�u th�n k� t��ng tr� ng��i d� d�ng tu luy�n.",

	"N�u nh� ph�t tri�n ch�nh d� h�c ���c k� n�ng b� m�t, th�nh �i�u qu�n tr� v�, t��ng h�c ���c c�c lo�i k� n�ng, n�u nh�, huy�t chi�n b�t ph��ng, V� T�m ch�m, thi�n v��ng chi�n y (thi�n v��ng bang), ��u �c, c�ng v�i la ��a vong (���ng m�n) .",

	-- "? t�y t�y ��o ? ch�nh th�c m� ra, 50 c�p ho�c tr� l�n phi b�ch danh ngo�n gia c� ? m�t l�n mi�n ph� ? ti�n nh�p c� h�i. Ti�n ��o h�u nh�ng t�y � t�m ? ti�m n�ng �i�m ? d� ? k� n�ng �i�m ?, t�nh nh�ng � tr�n ��o ho�c h�p th�nh ��i nh�p ��ng th� nghi�m th�m gi� hi�u qu�",

	-- "Mi�n ph� ti�n nh�p ? t�y t�y ��o ? c� h�i ch� c� m�t l�n. Ly khai t�y t�y ��o, c�a ng��i ? ti�m n�ng / k� n�ng ? ph�n ph�i ch�p nh�n th� x�c ��nh, l�c r�i �i xin ngh� l�i lu�n m�i t�! !",

	"M�t b� ph�n ngo�n gia ho�n th�nh 90 gi�o vi�n ch� nhi�m v� h�u, v�n kh�ng th� thu ���c k� n�ng, �i�u qu�n tr� v� h�u, quay v� l�m an ch�nh ��n v� c�i c�ch [183,182]) ",

	"M�t b� ph�n ���ng m�n ngo�n gia � h�c [ �m ti�n thu�t. M�a x�i x� l� hoa ] g�p ph�i b�t n�ng s� d�ng m�a x�i x� l� hoa ��ch t�nh hu�ng, �i�u qu�n tr� v� h�u, ��o l�m an �i�u ch�nh [183,182]) .",

	"M�t b� ph�n V� ���ng ngo�n gia g�p ph�i m�t �i k� n�ng �i�m ��ch t�nh hu�ng, �i�u qu�n tr� v� h�u, ��o l�m an �i�u ch�nh [183,182]) ",

	-- "? danh v�ng tu�n tra ? m�i ���c c�c th�nh ph� l�n th�y b�i ? tr��ng thi�t ch�y ? ch�, T��ng D��ng [192,193]",

	-- "? th�y tinh m�t c�n l�c ?2004 ni�n 7 nguy�t 22 nh�t t�o 11: 00 sau ��, sung tr� 35 nguy�n h� t�p c� l� th�c t�p ��u c� th� � tay m�i th�n d� t�u n�i n�o ng�u nhi�n l�nh m�t vi�n th�y tinh, ho�t ��ng l�i l�i ��o 2004 ni�n 8 nguy�t 8 nh�t k�t th�c",

	-- "? v� kh� t�p tranh �nh t� li�u ? d�ng v�ng Trung Nguy�n v� l�m th�n k� ? th�y tinh ?, d� n��c kh�c th�n b� th��ng nh�n ��i l�y ? v� kh� t�p tranh �nh t� li�u ?. L�i �� cho ? th� r�n ? tham chi�u t�p tranh �nh t� li�u, tr�m ph�n tr�m ��a gi�p ng��i m�n v� kh� �� th�ng m�t c�p b�c",

	-- "? v� kh� t�p tranh �nh t� li�u ? n��c kh�c th�n b� th��ng nh�n xu�t hi�n � D��ng Ch�u [207,193] d� l�m an [164,177] l��ng ��a, ph�i thay ��i t�p tranh �nh t� li�u th�ng c�p v� kh� ngo�n gia th�nh t�c t�c h�nh ��ng",

	-- "? lam danh qu�i v�t ? kinh hi�n giang h� (t�n bi�u hi�n l� m�u lam), d�t mang kh�ng �t ti�n t�i v� trang b�, c�n c� th� n�ng c� ch�a ? th�y tinh ?, ? tinh ru-bi ?, ? ho�ng kim trang b� ?, ? k� n�ng th� ?",

	-- "? ho�ng kim trang b� ?? ��nh n��c ?? an bang ? ho�ng kim trang b� s�o trang hi�n th�n giang h�, �� ? lam danh qu�i v�t ? t�c c� c� h�i thu ���c. Tham gia �o v�n c�nh sai ho�t ��ng, m�i ng�y c�ng t��ng ng�u nhi�n nh�t ki�n",

	" [ �o v�n huy ch��ng t�ng ��i l� ] m�i l�n Trung Hoa Trung Qu�c ��i thu ���c th��ng cho, ngo�n gia kh� d� ��o [ l� quan ] ch� l�nh t��ng: Kim b�i - kim c�y c� l�, ng�n b�i - b�ch c�u ho�n, huy ch��ng ��ng - ph�o hoa",

	"? �o v�n huy ch��ng t�ng ��i l� ? l�nh qu� t�ng tr��c ti�n �o�n: Gi� B�c kinh 10: 00~14: 00 l�nh ti�n m�t ng�y ��m 22: 00~ c�ng ng�y 4: 00 ph�n th��ng",

	"? �o v�n huy ch��ng t�ng ��i l� ? l�nh qu� t�ng �� nh� th�i gian �o�n: 19: 00~20: 00 l�nh c�ng ng�y 14: 00~18: 00 ph�n th��ng",

	"? �o v�n huy ch��ng t�ng ��i l� ? l�nh qu� t�ng �� tam th�i gian �o�n: 23: 00~ ng�y k� 0:00 l�nh c�ng ng�y 18: 00~22: 00 ph�n th��ng",

	" [ �o v�n huy ch��ng t�ng ��i l� ] l�nh t��ng c� l�c h�n, ngo�n gia h�n l� ch� � b�n ��i b� t�i, ��o [ l� quan ] ch� ��ng l�c l�nh t��ng.",

	"S� d�ng [ kim c�y c� l� ] � m�t gi� n�i luy�n c�p, t��ng thu ���c g�p ��i kinh nghi�m gi� tr�: � trong v�ng m�t canh gi� s� d�ng [ b�ch c�u ho�n ] t��ng thu ���c [ t� ��ng �� qu�i ]. 2 lo�i d��c ph�m c�ng n�ng t��ng � l�c ��u m� ",

	" [ d� �o�n �o v�n thi ��u s� ] � th�nh ph� [ l� quan ] ch� tham gia �o v�n thi ��u s� d� �o�n ",

	"? �o v�n thi ��u s� c�nh sai ? c�nh �o�n ��ng t��ng ngo�n gia � thu ���c ti�n th��ng h�i b�o ��ng th�i, ho�n m�i c� th� thu ���c ? ��nh n��c ?? an bang ? d�y ho�ng kim trang b� trung nh�t ki�n",

	"S� h�u thi ��u s� sau khi k�t th�c, h� th�ng t��ng � �o�n ��ng Trung Hoa Trung Qu�c ��i l�y ���c kim, ng�n, huy ch��ng ��ng s� l��ng ngo�n gia trung s�n sinh m�t v� si�u c�p may m�n ngo�n gia, th��ng cho �o v�n d�y ho�ng kim trang b� s�o trang",

	"? �o v�n huy ch��ng c�nh sai ? Trung Hoa Trung Qu�c huy ch��ng con s� c�nh sai, t��ng � 2004. 8. 17 nh�t s�ng s�m gi� g�n ti�n h�t h�n. Y�u tham gia ngo�n gia th�nh n�m ch�t th�i gian mua lo�i n�y v� x� s�",

	" [ �o v�n ho�ng kim trang b� ] bao qu�t 2 b� [ A-ten chi h�n ], [ B�c Kinh chi m�ng ]",

	"? �o v�n chi h�n ?, ? �o v�n chi t�m ? thu�c t�nh ��u l� ? s� h�u v� c�ng ��ng c�p gia 1?, mang �� h�u t� ��ng k�ch ho�t to�n th�n trang b� s� h�u �m thu�c t�nh",

	" [ ph�c duy�n h� th�ng ] �i qua ��a th�i gian t�ng �� ��i th� ph�c duy�n gi� tr�, d�ng ph�c duy�n gi� tr� ��o [ th�n b� th��ng nh�n li�u �t ] ch� ��i l�y c�c lo�i ��c bi�t v�t ph�m",

	" [ ph�c duy�n h� th�ng ] d� th�nh ph� [ v� l�m truy�n th� ] ��i tho�i, l� gi�i tin t�c c�n k�.",

	" [ Trung thu ho�t ��ng ] c�t Trung thu b�nh trung thu, ng�m tr�ng, t�m ra l�i gi�i ng� ---- ho�t ��ng ch�nh to�n di�n ti�n h�nh, ph�n th��ng ch� ng��i. M�i ���c l� quan ch� v�n tin t�c c�n k�.",

	" [ hoa ��o ��o ] �o v�n v�n nh�n c�ng nh�c, � h� th�ng quay xong b�o tu, t� 14/8/2004 ��o 30/8/2004, mi�n ph� � hoa ��o ��o tu luy�n."

	};

	-- t�n c�ng n�ng b�o tr��c tin t�c

	g_nFutureDate = 20200723;

	STR_HEAD_FUTURE = " [ giang h� t��ng truy�n ] ";

	g_strFutureMsg =

	{

	-- "G�n m� ra ? ��n luy�n ��a �� ?, ? �� b�o ��a �� ?",

	-- "? t�y t�y ��o ? t�m k� n�ng �i�m c�ng n�ng t��ng � 2004 ni�n 7 nguy�t 24 nh�t m� ra, 50 c�p ho�c tr� l�n phi b�ch danh ngo�n gia c� m�t l�n mi�n ph� ti�n nh�p c� h�i",

	-- "M��n ? t� th�y tinh ? ho�c th�n b� ? v� kh� t�p tranh �nh t� li�u ? kh� d� �� th�ng c�c lo�i v� kh� c�p "

	-- "? lam danh qu�i v�t ?(t�n bi�u hi�n l� m�u lam) r�c r�ch, c� ng��i n�i t��ng d�t mang kh�ng �t ti�n t�i v� trang b� h� s�n, c�n c� th� n�ng c� ch�a ? th�y tinh ?, ? tinh ru-bi ?, ? ho�ng kim trang b� ?, ? k� n�ng th� ?",

	-- "? ho�ng kim trang b� ?? ��nh n��c ?? an bang ? ho�ng kim trang b� s�o trang hi�n th�n giang h�, �� ? lam danh qu�i v�t ? t�c c� c� h�i thu ���c",

	-- "? g�p ��i ti�n t�i g�p ��i kinh nghi�m ?90 c�p k� n�ng ��c s�c duy m�; v�ng ki�m h�p th�nh ��i th�nh phong tr�o, �� qu�i luy�n c�p n�ng n�y. ��p t� m�i c� ngo�n gia, s�p t�i s� c� g�p ��i ti�n t�i g�p ��i kinh nghi�m ho�t ��ng",

	};

	function TaskContent()

	str = "";

	nFutureCount = getn(g_strFutureMsg);

	nCount = getn(g_strTipMsg) + nFutureCount;

	nIndex = random(1, nCount);

	if (nIndex <= nFutureCount) then -- 1- th� b�o tr��c tin t�c, 2- th� n�u l�n tin t�c

	str = getFutureMsg();

	if (strlen(str) <= 0) then -- kh�ng c� b�o tr��c tin t�c, t�u th� n�u l�n tin t�c

	str = getTipMsg();

	end

	else

	str = getTipMsg();

	end

	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", str));

	end

	-- th� n�u l�n tin t�c

	function getTipMsg()

	nCount = getn(g_strTipMsg);

	nIndex = random(1, nCount);

	return g_strTipMsg[nIndex];

	end

	-- th� b�o tr��c tin t�c

	function getFutureMsg()

	nCurDate = tonumber(date( "%Y%m%d "));

	str = "";

	if (g_nFutureDate > nCurDate) then -- c� hay kh�ng � ch� ��nh ng�y tr��c, b�ng kh�ng kh�ng ph�t

	nCount = getn(g_strFutureMsg);

	nIndex = random(1, nCount);

	str = STR_HEAD_FUTURE. . (g_strFutureMsg[nIndex]);

	end

	return str;

	end


