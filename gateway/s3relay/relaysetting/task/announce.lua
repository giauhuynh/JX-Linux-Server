	-- ��ng gi� h��ng m�t t� ph�c v� kh� s� h�u Gameserver ph�t h� th�ng th�ng c�o

	-- Vi�t h�y kh�ng g�y ra th�ng c�o by peres 2006/05/11

	function TaskShedule()

	TaskName( "T� ��ng tin t�c �� th�ng c�o ");

	-- 10 ph�t m�t l�n

	TaskInterval(10);

	-- kh�ng thi�t TaskTme, c�n l�i l� Relay kh�i ��ng th� m� b�t ��u

	-- x �i�m y xa nhau th�y (y%10==0)

	local n_cur_h	= tonumber(date( "%H "));

	local n_cur_m	= tonumber(date( "%M "));

	if (n_cur_m > 50) then

	n_cur_h = mod((n_cur_h + 1), 24);

	end

	n_cur_m = mod((n_cur_m - mod(n_cur_m, 10) + 10), 60);

	TaskTime( n_cur_h, n_cur_m );

	TaskCountLimit(0);

	OutputMsg( " He thong thong bao tin tuc tu dong ");

	end

	g_strTipMsg =

	{

	--		"? giang h� nghe ��n ? �� ngh�nh ti�p t�n ni�n, ng�y g�n ��y quan ph� t��ng t� ch�c "C�n con c�p" ti�u tr� ch�i, c�c th�nh nha m�n s� � 19: 00~23: 00 t� ch�c nh�n th� kh� tham d� ho�t ��ng, t�nh h�i th��ng cho �ang ho�t ��ng trung ki�t xu�t hi�p s�, c�c v� ��n l�c �� kh� d� ��o c�c th�nh ph� l�n nha m�n sai d�ch ch� b�o danh tham gia.",

	--		"? hoa ��o ��o ? ��o hoa ��o �n s� ch� mua ? m� h�o ?, l� ���c � hoa ��o ��o tu luy�n ��ng th�i, ��o ���c c�c lo�i b�t ��ng c�p b�c huy�n tinh m�! Ch� t�o T� S�c trang b�, t� nay v� sau d� d�ng h�n!",

	--		"? hoa ��o ��o ? hoa ��o tr�n ��o c� th� s� d�ng (��i) b�ch c�u ho�n ti�n h�nh ? ly tuy�n u� tr� ?, tu luy�n, o�t m� l��ng kh�ng l�m. Hoa ��o ��o tu luy�n kinh nghi�m d� ly tuy�n u� tr� kinh nghi�m ch�ng t�nh to�n, kh�ng �nh h��ng l�n nhau",

	--		"? hoa ��o ��o ? t� th�t th�nh ph� l�n ng��i ch�o thuy�n t�a thuy�n l� ���c leo l�n hoa ��o ��o, ngo�n gia ti�n nh�p ��ng c�p kh�ng h� c� 50 c�p h�n ch�, 5 c�p ngo�n gia c�ng c� th� ��o ���c huy�n tinh m�; nh�ng 50 c�p d��i ngo�n gia v� ph�p thu ���c tu luy�n kinh nghi�m",

	--		-- "? hoa ��o ��o ? �� t�ng mua qu� ch�o m�ng 8 th�ng ch�p ngo�n gia, ti�n nh�p hoa ��o ��o, ch�o m�ng 8 th�ng ch�p h�u hi�u th�i gian t� ��ng chuy�n h�a th�nh c� th� ��o m� th�i gian (tu luy�n kinh nghi�m kh�ng h� g�p ��i)",

	--		"? ng��i mang tin t�c nhi�m v� ? ng�i kh� d� � c�c th�nh ph� l�n d�ch quan ch� l�nh ��o ho�n to�n m�i ng��i mang tin t�c nhi�m v� r�i ~(t�nh h�nh c� th� v� t� m� tham ki�n quan v�ng: jx. xoyo. com)",

	--		"? trang b� m�i m�n �i�u ch�nh ?: Trang b� b�n �� m�i m�n ��o 0, t� ��ng t� tr�n ng��i d� xu�ng, bi�n th�nh < h� hao trang b� > �� ��t � t�i �eo l�ng l� (trang b� kh�ng c�n thi�t th�t). < h� hao trang b� > nh�ng ��o l�m an ? th�n b� th��ng nh�n ? ch� ph�c h�i nh� c�",

	--		"? giang h� nghe ��n ? c� ng��i ph�t hi�n r�t nhi�u tuy�t th� cao th� xu�t hi�n � 7 th�nh ph� l�n chu vi, th� t�t trong ch�n giang h� l�i �em nh�c l�n m�t h�i s�ng to gi� l�n.",

	--		"V� qu�c chi�n tranh chi phong h�a li�n th�nh ho�t ��ng vu m�i tu�n th� b�y ch� nh�t 15:00~17:00 m� ra. Ngo�n gia kh� d� �i qua d� th�nh �� ph�, T��ng D��ng ph�, l�m An ph�, ��i L� ph�, D��ng Ch�u ph� c�a th�nh th� v� ��i tho�i t�i tham gia t�ng ph��ng th� th�nh chi�n d�ch; �i qua d� ph��ng t��ng ph�, Bi�n Kinh ph� c�a th�nh th� v� ��i tho�i t�i tham gia kim ph��ng th� th�nh chi�n d�ch.",

	--		-- "? t�nh ngh�a giang h� ?12 nguy�t 31 nh�t, �� nh� gi�i v� l�m li�n k�t ti�n nh�p gi�n �o�n k�. C�c m�n ph�i thu ���c ti�n 32 danh tuy�n th� t��ng kh� d� l�nh ��o b�i danh th��ng cho. 06 ni�n 1 nguy�t 8 nh�t l�n th� ba v� l�m li�n k�t g�n b�t ��u, b� t�i lo�i h�nh l� th�y tr� hai ng��i thi ��u.",

	--		-- "? t�nh ngh�a giang h� ?12 nguy�t 8 nh�t �� nh� gi�i v� l�m li�n k�t ch�nh th�c b�t ��u, b� t�i lo�i h�nh vi m�n ph�i thi ��n thi ��u, b� t�i k� vi 12 nguy�t 8 nh�t -12 nguy�t 28 nh�t, li�n k�t sau khi k�t th�c, ti�n 32 danh chi�n ��i qu�n h�i thu ���c phong ph� b�i danh th��ng cho. T�nh h�nh c� th� v� t� m� th�nh tham ki�n quan v�ng th�ng c�o v� v� l�m li�n k�t t��ng quan gi�i thi�u.",

	--		-- "? v�ng ki�m t�i li�u m�i nh�t phi�n: T�nh ngh�a giang h� ?: 2005-10-31 to�n b� khu to�n b� ph�c ��ng th�i m� ra, k�nh xin l�u �, t�nh h�nh c� th� v� t� m� th�nh tham ki�n quan v�ng.",

	--		-- "? t�nh ngh�a giang h� ?: ��ng b�n h� th�ng nhi�n t�nh m� ra, ngo�n gia kh� d� � 7 th�nh ph� l�n Tr��ng Ca M�n m�n nh�n ch� l�nh ��ng b�n nhi�m v�! ��ng th�i nh�ng ��o c�c ��i tay m�i th�n long ng� ch� l�nh ��ng b�n n�i dung v� k�ch nhi�m v�.",

	--		"? t�nh ngh�a giang h� ?: ��ng b�n h� th�ng nhi�n t�nh m� ra, ngo�n gia kh� d� � 7 th�nh ph� l�n Tr��ng Ca M�n m�n nh�n ch� l�nh ��ng b�n nhi�m v�! ��ng th�i nh�ng ��o c�c ��i tay m�i th�n long ng� ch� l�nh ��ng b�n n�i dung v� k�ch nhi�m v�.",

	--		"? ng�u nhi�n s� ki�n h� th�ng ?: Ng�u nhi�n s� ki�n h� th�ng to�n di�n m� ra, ��ng b�n b� v�y tri�u ho�n d��i tr�ng th�i t�c m�i c� th� g�y ra.",

	--		"? huy ho�ng chi d� ho�t ��ng ?: Huy ho�ng chi d� ho�t ��ng vu m�i ng�y 19:30 ��o 20:00, 20:30 ��o 22:30 ��ng gi� m� ra. (t�nh h�nh c� th� v� t� m� tham ki�n quan v�ng: jx. xoyo. com)",

	--		"? th�n b� b�n �� b�o t�ng ?: Th�n b� b�n �� b�o t�ng kinh hi�n giang h�, v� h�n b�o t�ng ��u � tr��c m�t. (t�nh h�nh c� th� v� t� m� tham ki�n quan v�ng: jx. xoyo. com)",

	--		"? k� tr�n c�c ? thu�t d�ch dung s�, v�n du b�n ph��ng th��ng nh�n, linh phi�n g�n ��y k�t ph��ng ��i h� m�t nh� tr�m n�m l�o c�a h�ng ��<color=yellow> k� tr�n c�c <color>(�i�m k�ch d��i g�c ph�i c�i n�t), t�n xu�n trong l�c th��ng ph�m �u ��i b�n ch�y (�u ��i th�i gian: 2006 ni�n 1 nguy�t 24 nh�t t�i 2 nguy�t 7 nh�t). (t�nh h�nh c� th� v� t� m� tham ki�n quan v�ng: jx. xoyo. com)",

	};

	-- t�n c�ng n�ng b�o tr��c tin t�c

	g_nFutureDate = 2020010424;

	STR_HEAD_FUTURE = " [9 nguy�t phong ba ho�t ��ng ] ";

	g_strFutureMsg =

	{

	"9 nguy�t phong ba ho�t ��ng �ang ti�n h�nh, m�i ng�y, m�i tu�n, m�i th�ng ��u c� th��ng cho ch� ng��i. T� ��o trong th�i gian, tham gia ho�t ��ng, t� nh� t�ng kim ��i chi�n, d� t�u nhi�m v�, s�t th� nhi�m v� ��u c� th� t�ng vi t�ch ph�n. C� th� �i ki�n v� l�m truy�n th� c� l� � trang ch�nh kh�n t�nh h�nh c� th� v� t� m� ",

	"9 nguy�t phong ba ho�t ��ng �ang ti�n h�nh, m�i ng�y vi t�ch ph�n kh� d� ��i l�y th��ng cho, c� th� nh� sau: M�i tu�n t�ng vi t�ch ph�n b�i danh ti�n m��i ngo�n gia t��ng thu ���c chu th��ng cho, to�n b� ho�t ��ng trong l�c, t�ng vi t�ch ph�n b�i danh ti�n m��i, t��ng thu ���c nguy�t th��ng cho. Qu�n qu�n th��ng cho vi ��i m� n�o nh�n th��ng cho c� l� ng�u nhi�n thu ���c m�t b� ��i ho�ng kim trang b�, k� n�ng + 1!",

	"? �i�u ch�nh b�ch c�u ho�n gi�i c�ch: T� 9 nguy�t 8 nh�t kh�i, l�m an ng��i b�n h�ng rong c� m�i b�ch c�u ho�n, gi� ti�n l� 1 m�t ��ng ti�n / m�t: M�i ng�y t� 0:00 ��o 12:00 ly tuy�n kinh nghi�m v�n nh� c� t�ng b�i!",

	};

	function TaskContent()

	str = "";

	local ndateH 	= tonumber(date( "%H "));

	local ndateM	= tonumber(date( "%M "));

	local ndateD	= tonumber(date( "%Y%m%d "));

	if (ndateH < 21 and ndateM == 0 and ndateD >= 20090116 and ndateD < 20200216) then

	str	= "Hi�n nay v� l�m nh�n s� kh� d� ��o NPC t�i th�n ch� t�ng l� v� l�nh ph�o hoa "

	elseif (ndateH == 21 and ndateM == 0 and ndateD >= 20090116 and ndateD < 20200216) then

	str	= "V� l�m nh�n s� nhanh l�n m�t ch�t lai l�nh t��ng, ��ng th�i c� c� h�i l�nh c�ng nhi�u may m�n th��ng cho!";

	else

	return

	--str = getTipMsg();

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

	nCurDate = tonumber(date( "%Y%m%d%H "));

	str = "";

	if (g_nFutureDate > nCurDate) then -- c� hay kh�ng � ch� ��nh ng�y tr��c, b�ng kh�ng kh�ng ph�t

	nCount = getn(g_strFutureMsg);

	nIndex = random(1, nCount);

	str = STR_HEAD_FUTURE.. (g_strFutureMsg[nIndex]);

	end

	return str;

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


