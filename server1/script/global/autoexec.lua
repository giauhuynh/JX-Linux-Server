
Include("\\script\\missions\\maze\\head.lua")
Include("script\\missions\\bairenleitai\\head.lua")
Include("\\script\\missions\\maze\\addstatdata.lua")
Include( "\\script\\global\\addxishancunnpc.lua" ) --T�y s�n th�n
Include( "\\script\\task\\tollgate\\killbosshead.lua" )
Include( "\\script\\task\\tollgate\\addtollgatenpc.lua" ) 
Include( "\\script\\task\\partner\\partner_head.lua" )  
Include ("\\script\\missions\\freshman_match\\add_championnpc.lua")
-- Include("\\script\\event\\mid_autumn\\add_zhongqiunpc.lua") -- NPC Minh nguy�t tr�n
Include("\\script\\missions\\newcitydefence\\cd_addsignnpc.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include ("\\script\\missions\\leaguematch\\wlls_autoexec.lua")	
Include ("\\script\\missions\\statinfo\\head.lua")
-- Include("\\script\\event\\wulin_2nd\\wulin_addmaster.lua")
Include("\\script\\global\\addspreadernpc.lua")		
Include("\\script\\missions\\tongwar\\tongwar_autoexec.lua")
Include("\\script\\task\\lv120skill\\head.lua")	
Include("\\script\\tong\\addtongnpc.lua")
Include("\\script\\��ԭ����\\�꾩\\�꾩\\trap\\bianjing_ximen_trap.lua")
Include("\\script\\������\\��ɽ��\\addnpcandtrap.lua") -- Vi s�n ��o
Include("\\script\\event\\jiefang_jieri\\200904\\denggao\\npc.lua");	
Include("\\script\\event\\change_destiny\\npc.lua");
-- Include("\\script\\missions\\newpracticemap\\addnpc.lua");
Include("\\script\\event\\jiefang_jieri\\201004\\beat_tiger\\head.lua");
Include("\\script\\misc\\timeline\\timelinemanager.lua")
Include("\\script\\global\\autoexec_head.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\��������\\����\\����\\trap\\dali_heidong_trap.lua")

	Include("\\script\\event\\mid_autumn06\\autoexe.lua"); --T�n Th� Quan
	Include("\\script\\global\\judgeoffline_special.lua")	
	-- Include("\\script\\event\\collect_juanzhou\\autoaddnpc.lua")
	-- Include("\\script\\event\\act2years_yn\\head.lua")     
	-- Include("\\script\\event\\vnchristmas2007\\addnpc.lua")
	-- Include("\\script\\event\\newyear_2008\\cailu\\addnpc.lua")	
	Include("\\script\\������\\������\\heisha_autoexec.lua")
	Include("\\script\\event\\great_night\\great_night_head.lua")	
	
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
	

MSID_LOCALNEWS = 17

maptab={};
maptab[1]=209;
maptab[2]=210;
maptab[3]=211;
maptab[1]=212;
clearskillmap = {243, 245, 247, 249, 251, 253,255}

adddialognpc = {
	{822,387,1306,2564,"\\script\\task\\tollgate\\messenger\\fengzhiqi\\messenger_flynpc.lua","B�ch d�c "},
	{822,388,1306,2564,"\\script\\task\\tollgate\\messenger\\fengzhiqi\\messenger_flynpc.lua","B�ch d�c "},
	{822,389,1306,2564,"\\script\\task\\tollgate\\messenger\\fengzhiqi\\messenger_flynpc.lua","B�ch d�c "},
	-- {832,390,1586,2600,"\\script\\task\\tollgate\\messenger\\shanshenmiao\\messenger_temnpc.lua","N�p lan thanh th�nh "},
	-- {832,391,1586,2600,"\\script\\task\\tollgate\\messenger\\shanshenmiao\\messenger_temnpc.lua","N�p lan thanh th�nh "},
	-- {832,392,1586,2600,"\\script\\task\\tollgate\\messenger\\shanshenmiao\\messenger_temnpc.lua","N�p lan thanh th�nh "},
	-- {842,393,1386,2442,"\\script\\task\\tollgate\\messenger\\qianbaoku\\messenger_turenpc.lua","Ti�u tr�n "},
	-- {842,394,1386,2442,"\\script\\task\\tollgate\\messenger\\qianbaoku\\messenger_turenpc.lua","Ti�u tr�n "},
	-- {842,395,1386,2442,"\\script\\task\\tollgate\\messenger\\qianbaoku\\messenger_turenpc.lua","Ti�u tr�n "},

	{377,387,1570,3132,"\\script\\task\\tollgate\\messenger\\messenger_flyrukou.lua","D�ch quan "},
	{377,388,1570,3132,"\\script\\task\\tollgate\\messenger\\messenger_flyrukou.lua","D�ch quan "},
	{377,389,1570,3132,"\\script\\task\\tollgate\\messenger\\messenger_flyrukou.lua","D�ch quan "},

	-- {377,390,1320,3185,"\\script\\task\\tollgate\\messenger\\messenger_templerukou.lua","D�ch quan "},
	-- {377,391,1320,3185,"\\script\\task\\tollgate\\messenger\\messenger_templerukou.lua","D�ch quan "},
	-- {377,392,1320,3185,"\\script\\task\\tollgate\\messenger\\messenger_templerukou.lua","D�ch quan "},

	-- {377,393,1412,3203,"\\script\\task\\tollgate\\messenger\\messenger_turerukou.lua","D�ch quan "},
	-- {377,394,1412,3203,"\\script\\task\\tollgate\\messenger\\messenger_turerukou.lua","D�ch quan "},
	-- {377,395,1412,3203,"\\script\\task\\tollgate\\messenger\\messenger_turerukou.lua","D�ch quan "},

	-- {309,80,1806,3145,"\\script\\global\\faeshi.lua","Ph�t  �c s� "},
	-- {310,80,1788,3172,"\\script\\global\\shangshanshi.lua","Th��ng thi�n s� "},
	{387,176,1314,3194,"\\script\\������\\�ٰ�\\�ٰ�\\npc\\ְ��_��������.lua","Th�n b�  thi�t t��ng "},
	{769,11,3210,4974,"\\script\\task\\tollgate\\killer\\nieshichen.lua","Nhi�p  th�  tr�n "},
	{769,1,1506,3198,"\\script\\task\\tollgate\\killer\\nieshichen.lua","Nhi�p  th�  tr�n "},
	{769,37,1647,3050,"\\script\\task\\tollgate\\killer\\nieshichen.lua","Nhi�p  th�  tr�n "},
	{769,176,1372,3010,"\\script\\task\\tollgate\\killer\\nieshichen.lua","Nhi�p  th�  tr�n "},
	{769,162,1573,3227,"\\script\\task\\tollgate\\killer\\nieshichen.lua","Nhi�p  th�  tr�n "},
	{769,78,1512,3206,"\\script\\task\\tollgate\\killer\\nieshichen.lua","Nhi�p  th�  tr�n "},
	{769,80,1700,2963,"\\script\\task\\tollgate\\killer\\nieshichen.lua","Nhi�p  th�  tr�n "},
	{1783,  174, 1644,3308, "\\script\\global\\��������.lua", "Bang h�i ti�p d�n nh�n "},
	{1783,  121, 2036,4507, "\\script\\global\\��������.lua", "Bang h�i ti�p d�n nh�n "},
	{1783,  153, 1609,3257, "\\script\\global\\��������.lua", "Bang h�i ti�p d�n nh�n "},
	{1783,  101, 1694,3118, "\\script\\global\\��������.lua", "Bang h�i ti�p d�n nh�n "},
	{1783,  99,  1578,3209, "\\script\\global\\��������.lua", "Bang h�i ti�p d�n nh�n "},
	{1783,  100, 1614,3167, "\\script\\global\\��������.lua", "Bang h�i ti�p d�n nh�n "},
	{1783,  20,  3534, 6197, "\\script\\global\\��������.lua", "Bang h�i ti�p d�n nh�n "},
	{1783,  53,  1593, 3188, "\\script\\global\\��������.lua", "Bang h�i ti�p d�n nh�n "},
}

nw_npclist = {
	-- {1434, 176, 1478, 3238, "\\script\\nationalwar\\npc.lua", "N�i c�c th��ng th� "},
	-- {1435, 37,  1785, 3041, "\\script\\nationalwar\\npc.lua", "N�i c�c th��ng th� "},	
}

npclist_sevencity = {
	 {950, 1, 	1642, 3270, "\\script\\missions\\sevencity\\dialog_npc.lua", "Th�t th�nh ��i chi�n"},
	 {950, 11, 	3186, 5182, "\\script\\missions\\sevencity\\dialog_npc.lua", "Th�t th�nh ��i chi�n"},
	 {950, 162, 	1680, 3276, "\\script\\missions\\sevencity\\dialog_npc.lua", "Th�t th�nh ��i chi�n"},
	 {950, 37, 	1692, 3212, "\\script\\missions\\sevencity\\dialog_npc.lua", "Th�t th�nh ��i chi�n"},
	 {950, 78, 	1582, 3380, "\\script\\missions\\sevencity\\dialog_npc.lua", "Th�t th�nh ��i chi�n"},
	{950, 80, 	1692, 3218, "\\script\\missions\\sevencity\\dialog_npc.lua", "Th�t th�nh ��i chi�n"},
	{950, 176, 	1689, 3289, "\\script\\missions\\sevencity\\dialog_npc.lua", "Th�t th�nh ��i chi�n"},
}

addnewtasknpc={
{1623,80,4,53,1620,3176,0,"C�p Nh�t X�p H�ng",0,"\\script\\global\\namcung\\xephang\\capnhat.lua"}, 
-- {87,80,4,20,3535,6223,0,"Ti�u Long N�",0,"\\script\\activitysys\\npcdailog.lua"}, 
-- {87,80,4,121,2020,4484,0,"Ti�u Long N�",0,"\\script\\activitysys\\npcdailog.lua"}, 
-- {87,80,4,99,1635,3194,0,"Ti�u Long N�",0,"\\\script\\activitysys\\npcdailog.lua"}, 
-- {87,80,4,100,1621,3190,0,"Ti�u Long N�",0,"\\script\\activitysys\\npcdailog.lua"}, 
-- {87,80,4,101,1682,3140,0,"Ti�u Long N�",0,"\\script\\activitysys\\npcdailog.lua"}, 
-- {87,80,4,174,1649,3311,0,"Ti�u Long N�",0,"\\script\\activitysys\\npcdailog.lua"}, 
-- {87,80,4,153,1632,3242,0,"Ti�u Long N�",0,"\\script\\activitysys\\npcdailog.lua"}, 
-- {715,80,4,20,3535,6213,0,"Nguy�t L�o",0,"\\script\\activitysys\\npcdailog.lua"}, 
-- {715,80,4,121,2020,4494,0,"Nguy�t L�o",0,"\\script\\activitysys\\npcdailog.lua"}, 
-- {715,80,4,99,1635,3184,0,"Nguy�t L�o",0,"\\\script\\activitysys\\npcdailog.lua"}, 
-- {715,80,4,100,1621,3180,0,"Nguy�t L�o",0,"\\script\\activitysys\\npcdailog.lua"}, 
-- {715,80,4,101,1682,3130,0,"Nguy�t L�o",0,"\\script\\activitysys\\npcdailog.lua"}, 
-- {715,80,4,174,1649,3301,0,"Nguy�t L�o",0,"\\script\\activitysys\\npcdailog.lua"}, 
-- {715,80,4,153,1632,3232,0,"Nguy�t L�o",0,"\\script\\activitysys\\npcdailog.lua"}, 
{697,80,4,37,1679,3045,0,"Th�c b�t ho�i xuy�n ",0,"\\script\\��ԭ����\\�꾩\\�꾩\\npc\\passerby_tuoba.lua"},
{698,30,4,78,1615,3185,0,"L�u u�n c� ",0,"\\script\\��ԭ����\\����\\����\\npc\\passerby_liuyungu.lua"},
{699,35,5,176,1695,3387,0,"Thi nghi sinh",0,"\\script\\task\\newtask\\branch\\xiepai\\enemy_shiyisheng.lua"},
{700,25,5,80,1796,3393,0,"Ch�nh ph�i v�  s� ",0,"\\script\\task\\newtask\\branch\\xiepai\\enemy_shenfeng.lua"},
{701,45,5,78,1781,3213,0,"Nguy�n minh Vi�n ",0,"\\script\\task\\newtask\\branch\\xiepai\\enemy_ruanmingyuan.lua"},
{702,55,5,78,1359,3514,0,"Th�nh do�n ",0,"\\script\\task\\newtask\\branch\\xiepai\\enemy_shengyin.lua"},
{671,25,5,1,1764,3052,0,"Phan nh� long ",0,"\\script\\task\\newtask\\branch\\zhengpai\\enemy_panrulong.lua"},
{672,45,5,11,3369,4865,0,"Du s��ng t�n ",0,"\\script\\task\\newtask\\branch\\zhengpai\\enemy_yuxiangjin.lua"},
{668,55,5,176,1666,2562,0,"T� t�c phong ",0,"\\script\\task\\newtask\\branch\\zhengpai\\enemy_qijifeng.lua"},
{660,80,4,1,1587,3303,0,"Ng�o v�n t�ng ",0,"\\script\\��������\\����\\·��npc\\passerby_aoyunzong.lua"},
{662,50,4,80,1849,3050,0,"H�n h�n ",0,"\\script\\��ԭ����\\����\\npc\\passerby_hunhun.lua"},
{661,80,4,176,1368,3050,0,"Li�u nam v�n ",0,"\\script\\������\\�ٰ�\\�ٰ�\\npc\\passerby_liunanyun.lua"},
{675,35,5,131,1878,3400,0,"H� hoa ��o b�ch ng�c ",0,"\\script\\task\\newtask\\branch\\zhongli\\enemy_hehuadaobiyu.lua"},
{675,35,5,131,1898,3430,0,"H� hoa ��o nh�  y�n ",0,"\\script\\task\\newtask\\branch\\zhongli\\enemy_hehuadaoruyan.lua"},
{675,35,5,131,1889,3404,0,"H� hoa ��o t�ng m�ng ",0,"\\script\\task\\newtask\\branch\\zhongli\\enemy_hehuadaocengmeng.lua"},
{676,55,5,162,1728,2969,0,"T� di�n ma v��ng long truy v� ",0,"\\script\\task\\newtask\\branch\\zhongli\\enemy_longzhuiwu.lua"},
{670,30,5,80,1395,3443,0,"V� l�m nh�n v�t t�ng v�n phi ",0,"\\script\\task\\newtask\\branch\\zhongli\\enemy_wulinrenwulouqianxue.lua"},
{670,30,5,80,1383,3447,0,"V� l�m nh�n v�t t�n th�i phong ",0,"\\script\\task\\newtask\\branch\\zhongli\\enemy_wulinrenwuqinshifeng.lua"},
{670,30,5,80,1377,3435,0,"V� l�m nh�n v�t Lam chi�n ",0,"\\script\\task\\newtask\\branch\\zhongli\\enemy_wulinrenwulanzhan.lua"},
{670,30,5,80,1381,3418,0,"V� l�m nh�n v�t do�n song  ��ng ",0,"\\script\\task\\newtask\\branch\\zhongli\\enemy_wulinrenwuyinshuangtong.lua"},
{670,30,5,80,1390,3405,0,"V� l�m nh�n v�t ph�  l�nh ",0,"\\script\\task\\newtask\\branch\\zhongli\\enemy_wulinrenwufeileng.lua"},
{669,25,5,80,2004,2876,0,"Tri�u thi�n bang bang ch�  l�  tr��ng thi�n ",0,"\\script\\task\\newtask\\branch\\zhongli\\enemy_luchangtian.lua"},
{663,80,4,20,3545,6223,0,"Long ng� ",0,"\\script\\task\\newtask\\education\\·��_����.lua"},
{663,80,4,53,1618,3169,0,"Long ng� ",0,"\\script\\task\\newtask\\education\\·��_����.lua"},
{663,80,4,121,2010,4484,0,"Long ng�  ",0,"\\script\\task\\newtask\\education\\·��_����.lua"},
{663,80,4,99,1625,3194,0,"Long ng�  ",0,"\\script\\task\\newtask\\education\\·��_����.lua"},
{663,80,4,100,1621,3170,0,"Long ng�  ",0,"\\script\\task\\newtask\\education\\·��_����.lua"},
{663,80,4,101,1692,3140,0,"Long ng�  ",0,"\\script\\task\\newtask\\education\\·��_����.lua"},
{663,80,4,174,1639,3291,0,"Long ng�  ",0,"\\script\\task\\newtask\\education\\·��_����.lua"},
{663,80,4,153,1622,3242,0,"Long ng�  ",0,"\\script\\task\\newtask\\education\\·��_����.lua"},
{646,80,4,162,1469,3168,0,"M�c s�u ",0,"\\script\\��������\\����\\����\\npc\\·��_Ī��.lua"},
{648,80,4,162,1468,3167,0,"M�c x�o nhi ",0,"\\script\\��������\\����\\����\\npc\\·��_Ī�ɶ�.lua"},
{649,80,4,11,3226,5118,0,"C�ng t� ti�u ",0,"\\script\\���ϱ���\\�ɶ�\\�ɶ�\\·��npc\\·��_����Ц.lua"},
{678,20,5,179,2033,2755,0,"Ninh t��ng qu�n ",0,"\\script\\task\\newtask\\master\\zhongli\\enemy_ningjiangjun.lua"},
{647,20,5,162,1635,2977,0,"M�c s�u ",0,"\\script\\task\\newtask\\master\\zhengpai\\ս��_Ī��.lua"},
{653,30,5,141,1540,3324,0,"Gi�i l�u phong ",0,"\\script\\task\\newtask\\master\\zhengpai\\ս��_������.lua"},
{679,30,5,136,1613,3194,0,"L� thi�n t��ng ",0,"\\script\\task\\newtask\\master\\zhongli\\enemy_lushanxiang.lua"},
{654,40,5,173,1555,3054,0,"T� �ao hi�p ",0,"\\script\\task\\newtask\\master\\zhengpai\\ս��_�ϵ���.lua"},
{680,40,5,5,1455,3437,0,"T� t� l�c ",0,"\\script\\task\\newtask\\master\\zhongli\\enemy_xuzili.lua"},
{655,50,5,24,2114,3323,0,"O�n ��c ",0,"\\script\\task\\newtask\\master\\zhengpai\\ս��_Թ��.lua"},
{681,50,5,66,1596,3300,0,"H�n giang ��c �i�u t�u ",0,"\\script\\task\\newtask\\master\\zhongli\\enemy_hanjiangdudiaosou.lua"},
{667,60,5,79,1683,3144,0,"Th�n b� nh�n ",0,"\\script\\task\\newtask\\master\\zhengpai\\ս��_�Ϲ�����.lua"},
{666,60,5,103,1750,2668,0,"Kh�ng t�ch  ��i s� ",0,"\\script\\task\\newtask\\master\\zhongli\\enemy_shaolinkongji.lua"},
{651,80,4,176,1630,2992,0,"M�nh ph�m ",0,"\\script\\������\\�ٰ�\\�ٰ�\\npc\\·��_�Ϸ�.lua"},
{650,80,4,80,1703,3119,0,"H� v� th� ",0,"\\script\\��ԭ����\\����\\npc\\·��_������.lua"},
{665,80,4,103,1774,2842,0,"Kh�ng t�ch  ��i s� ",0,"\\script\\��ԭ����\\������\\������\\npc\\passerby_shaolinkongji.lua"},
{677,80,4,59,1640,3186,0,"H�n giang  ��c  �i�u t�u ",0,"\\script\\������\\������\\������\\npc\\passerby_hanjiangdudiaosou.lua"},
{723,25,5,332,1262,2821,0,"T�ng b�o kh�ch ",0,"\\script\\task\\newtask\\branch\\zhengpai\\enemy_cangbaoke.lua"},
{723,25,5,332,1220,2833,0,"T�ng b�o kh�ch ",0,"\\script\\task\\newtask\\branch\\zhengpai\\enemy_cangbaoke.lua"},
{723,25,5,332,1244,2881,0,"T�ng b�o kh�ch ",0,"\\script\\task\\newtask\\branch\\zhengpai\\enemy_cangbaoke.lua"},
{723,25,5,332,1252,2934,0,"T�ng b�o kh�ch ",0,"\\script\\task\\newtask\\branch\\zhengpai\\enemy_cangbaoke.lua"},
{723,25,5,332,1250,3002,0,"T�ng b�o kh�ch ",0,"\\script\\task\\newtask\\branch\\zhengpai\\enemy_cangbaoke.lua"},
{723,25,5,332,1307,3007,0,"T�ng b�o kh�ch ",0,"\\script\\task\\newtask\\branch\\zhengpai\\enemy_cangbaoke.lua"},
{723,25,5,332,1368,3060,0,"T�ng b�o kh�ch ",0,"\\script\\task\\newtask\\branch\\zhengpai\\enemy_cangbaoke.lua"},
{723,25,5,332,1428,3046,0,"T�ng b�o kh�ch ",0,"\\script\\task\\newtask\\branch\\zhengpai\\enemy_cangbaoke.lua"},
{723,25,5,332,1476,3049,0,"T�ng b�o kh�ch ",0,"\\script\\task\\newtask\\branch\\zhengpai\\enemy_cangbaoke.lua"},
{723,25,5,332,1470,3097,0,"T�ng b�o kh�ch ",0,"\\script\\task\\newtask\\branch\\zhengpai\\enemy_cangbaoke.lua"},
{738,35,5,90,1792,3137,0," �c lang ",0,"\\script\\task\\newtask\\branch\\zhengpai\\enemy_elang.lua"},

{720,45,2,195,593,3070,0,"L�c phi ",0,"\\script\\task\\newtask\\master\\xiepai\\ս��_½��.lua"},

{718,90,2,121,2016,4490,0," �oan m�c thanh ",0,"\\script\\task\\newtask\\master\\xiepai\\·��_��ľ��.lua"},

{714,90,2,176,1628,3209,0,"Th�i c�ng c�ng ",0,"\\script\\task\\newtask\\master\\xiepai\\·��_�̹���.lua"},

{722,30,2,90,1814,3283,0,"Ti�u k� nhi ",0,"\\script\\task\\newtask\\master\\xiepai\\ս��_С����.lua"},

{719,90,2,80,1592,3118,0,"Phi�u s� ",0,"\\script\\task\\newtask\\master\\xiepai\\����_��ʦ.lua"},

{716,45,2,21,2710,3947,0,"H� h�u ph�c ",0,"\\script\\task\\newtask\\master\\xiepai\\ս��_�ĺ.lua"},

{715,90,2,174,1593,3256,0,"Ph� l�i th� ",0,"\\script\\task\\newtask\\master\\xiepai\\·��_������.lua"},

{717,55,2,92,1944,3214,0,"Ti�u v� th��ng ",0,"\\script\\task\\newtask\\master\\xiepai\\ս��_Ф�޳�.lua"},

{721,65,2,40,1688,3032,0," �� �an ��i nh�n ",0,"\\script\\task\\newtask\\master\\xiepai\\ս��_ͽ������.lua"},

{694,80,2,94,1551,3149,0,"Li�u ��nh ",0,"\\script\\task\\newtask\\master\\xiepai\\ս��_�ζ�.lua"},


-- {1321,80,4,176,1420,3309,0,"N��ng N��ng C� B�nh",0,"\\script\\missions\\yandibaozang\\npc\\yandibaozang_main.lua"},
-- {1321,80,4,176,1664,3244,0,"N��ng N��ng C� B�nh",0,"\\script\\missions\\yandibaozang\\npc\\yandibaozang_main.lua"},
-- {1321,80,4,176,1559,2917,0,"N��ng N��ng C� B�nh",0,"\\script\\missions\\yandibaozang\\npc\\yandibaozang_main.lua"},
-- {1321,80,4,176,1373,2970,0,"N��ng N��ng C� B�nh",0,"\\script\\missions\\yandibaozang\\npc\\yandibaozang_main.lua"},
{1320,80,4,37,1714,3173,0,"B�nh B�nh C� N��ng",0,"\\script\\missions\\yandibaozang\\npc\\yandibaozang_main.lua"},
{1320,80,4,37,1642,3145,0,"B�nh B�nh C� N��ng",0,"\\script\\missions\\yandibaozang\\npc\\yandibaozang_main.lua"},
{1320,80,4,37,1622,3019,0,"B�nh B�nh C� N��ng",0,"\\script\\missions\\yandibaozang\\npc\\yandibaozang_main.lua"},
{1320,80,4,37,1857,2968,0,"B�nh B�nh C� N��ng",0,"\\script\\missions\\yandibaozang\\npc\\yandibaozang_main.lua"},

{389,80,4,851,1577,3184,0,"D��c th��ng ",0,"\\script\\missions\\yandibaozang\\npc\\yaoshang.lua"},
{389,80,4,851,1607,3178,0,"D��c th��ng ",0,"\\script\\missions\\yandibaozang\\npc\\yaoshang.lua"},
{389,80,4,852,1577,3184,0,"D��c th��ng",0,"\\script\\missions\\yandibaozang\\npc\\yaoshang.lua"},
{389,80,4,852,1607,3178,0,"D��c th��ng",0,"\\script\\missions\\yandibaozang\\npc\\yaoshang.lua"},

}


addmasknpc = {
	-- {375,1,1554,3137,"\\script\\global\\·��_������ʿ.lua","D�ch dung thu�t s� "},
	-- {375,11,3164,4957,"\\script\\global\\·��_������ʿ.lua","D�ch dung thu�t s� "},
	-- {375,162,1632,3274,"\\script\\global\\·��_������ʿ.lua","D�ch dung thu�t s� "},
	-- {375,37,1771,2978,"\\script\\global\\·��_������ʿ.lua","D�ch dung thu�t s� "},
	-- {375,78,1498,3276,"\\script\\global\\·��_������ʿ.lua","D�ch dung thu�t s� "},
	-- {375,80,1628,3071,"\\script\\global\\·��_������ʿ.lua","D�ch dung thu�t s� "},
	
	-- {258,1,1514,3147,"\\script\\global\\�㷷����.lua","Linh phi�n "},
	-- {258,162,1596,3271,"\\script\\global\\�㷷����.lua","Linh phi�n "},
	-- {258,37,1750,2999,"\\script\\global\\�㷷����.lua","Linh phi�n "},
}


Include([[\script\event\springfestival07\head.lua]]);

tab_springfestivalNPC = 
{

	 {108,520,1576,3111,[[\script\event\springfestival08\allbrother\beidoulaoren.lua]],"B�c  ��u l�o nh�n "},
	 {108,521,1576,3111,[[\script\event\springfestival08\allbrother\beidoulaoren.lua]],"B�c  ��u l�o nh�n "},
	{108,522,1576,3111,[[\script\event\springfestival08\allbrother\beidoulaoren.lua]],"B�c  ��u l�o nh�n "},
	{108,523,1576,3111,[[\script\event\springfestival08\allbrother\beidoulaoren.lua]],"B�c  ��u l�o nh�n "},
	{108,524,1576,3111,[[\script\event\springfestival08\allbrother\beidoulaoren.lua]],"B�c  ��u l�o nh�n "},
	{108,525,1576,3111,[[\script\event\springfestival08\allbrother\beidoulaoren.lua]],"B�c  ��u l�o nh�n "},
	{108,526,1576,3111,[[\script\event\springfestival08\allbrother\beidoulaoren.lua]],"B�c  ��u l�o nh�n "},

	-- {644,520,1583,3116,[[\script\event\shengdan_jieri\200811\npc_shengdanlaoren.lua]],"Th�nh  ��n l�o nh�n "},
	-- {644,521,1583,3116,[[\script\event\shengdan_jieri\200811\npc_shengdanlaoren.lua]],"Th�nh  ��n l�o nh�n "},
	-- {644,522,1583,3116,[[\script\event\shengdan_jieri\200811\npc_shengdanlaoren.lua]],"Th�nh  ��n l�o nh�n "},
	-- {644,523,1583,3116,[[\script\event\shengdan_jieri\200811\npc_shengdanlaoren.lua]],"Th�nh  ��n l�o nh�n "},
	-- {644,524,1583,3116,[[\script\event\shengdan_jieri\200811\npc_shengdanlaoren.lua]],"Th�nh  ��n l�o nh�n "},
	-- {644,525,1583,3116,[[\script\event\shengdan_jieri\200811\npc_shengdanlaoren.lua]],"Th�nh  ��n l�o nh�n "},
	-- {644,526,1583,3116,[[\script\event\shengdan_jieri\200811\npc_shengdanlaoren.lua]],"Th�nh  ��n l�o nh�n "},
	
};

tab_zingplay_npc = {
	-- {354,11,3150,5075,	"\\script\\event\\other\\jxweb_npc\\npc_jxweb.lua","S� Gi� Ho�t ��ng "},
	-- {354,1,1611,3096,	"\\script\\event\\other\\jxweb_npc\\npc_jxweb.lua","S� Gi� Ho�t ��ng "},
	-- {354,37,1725,3090,	"\\script\\event\\other\\jxweb_npc\\npc_jxweb.lua","S� Gi� Ho�t ��ng "},
	-- {354,176,1557,2981,	"\\script\\event\\other\\jxweb_npc\\npc_jxweb.lua","S� Gi� Ho�t ��ng"},
	-- {354,162,1654,3233,	"\\script\\event\\other\\jxweb_npc\\npc_jxweb.lua","S� Gi� Ho�t ��ng "},
	-- {354,78,1599,3292,	"\\script\\event\\other\\jxweb_npc\\npc_jxweb.lua","S� Gi� Ho�t ��ng "},
	-- {354,80,1737,2958,	"\\script\\event\\other\\jxweb_npc\\npc_jxweb.lua","S� Gi� Ho�t ��ng "},
}

local tbActNpcList =
{
	-- {311,176,1593,2943,"\\script\\missions\\dungeon\\dungeons\\shiliantang\\jieyinren.lua","Th�  luy�n  ���ng ti�p d�n nh�n "},
	-- {311,11,3108,5060,"\\script\\missions\\dungeon\\dungeons\\shiliantang\\jieyinren.lua","Th�  luy�n  ���ng ti�p d�n nh�n "},
	-- {311,1,1585,3230,"\\script\\missions\\dungeon\\dungeons\\shiliantang\\jieyinren.lua","Th�  luy�n  ���ng ti�p d�n nh�n "},
	-- {311,37,1740,3065,"\\script\\missions\\dungeon\\dungeons\\shiliantang\\jieyinren.lua","Th�  luy�n  ���ng ti�p d�n nh�n "},
	-- {311,162,1613,3190,"\\script\\missions\\dungeon\\dungeons\\shiliantang\\jieyinren.lua","Th�  luy�n  ���ng ti�p d�n nh�n "},
	-- {311,78,1608,3238,"\\script\\missions\\dungeon\\dungeons\\shiliantang\\jieyinren.lua","Th�  luy�n  ���ng ti�p d�n nh�n "},
	-- {311,80,1704,3058,"\\script\\missions\\dungeon\\dungeons\\shiliantang\\jieyinren.lua","Th�  luy�n  ���ng ti�p d�n nh�n "},
	
	-- {1327, 20,3554,6188, "\\script\\event\\zhongqiu_jieri\\200909\\rongshu\\shitouernpc.lua","Ti�u N��ng"},
	-- {1327, 174,1628,3218, "\\script\\event\\zhongqiu_jieri\\200909\\rongshu\\shitouernpc.lua","Ti�u N��ng"},
	-- {1327, 121,1963,4511, "\\script\\event\\zhongqiu_jieri\\200909\\rongshu\\shitouernpc.lua","Ti�u N��ng"},
	-- {1327, 153,1612,3226, "\\script\\event\\zhongqiu_jieri\\200909\\rongshu\\shitouernpc.lua","Ti�u N��ng"},
	-- {1327, 99,1615,3166, "\\script\\event\\zhongqiu_jieri\\200909\\rongshu\\shitouernpc.lua","Ti�u N��ng"},
	-- {1327, 100,1626,3181, "\\script\\event\\zhongqiu_jieri\\200909\\rongshu\\shitouernpc.lua","Ti�u N��ng"},
	-- {1327, 53,1632,3199, "\\script\\event\\zhongqiu_jieri\\200909\\rongshu\\shitouernpc.lua","Ti�u N��ng"},
		
	
	-- {1393,176,1657,3261,"\\script\\missions\\dangboss\\gongnv_npc.lua","Ch��ng  ��ng cung n� "},
	-- {1393,176,1577,2957,"\\script\\missions\\dangboss\\gongnv_npc.lua","Ch��ng  ��ng cung n� "},
	-- {1393,176,1439,3267,"\\script\\missions\\dangboss\\gongnv_npc.lua","Ch��ng  ��ng cung n� "},
	-- {1393,176,1385,2977,"\\script\\missions\\dangboss\\gongnv_npc.lua","Ch��ng  ��ng cung n� "},


--	{1454, 80,1768,3029, "\\script\\event\\zhongqiu_jieri\\200909\\dajibing\\head.lua","�󼪱�"},
--	{1454, 11,3136,5065, "\\script\\event\\zhongqiu_jieri\\200909\\dajibing\\head.lua","�󼪱�"},
--	{1454, 162,1622,3184, "\\script\\event\\zhongqiu_jieri\\200909\\dajibing\\head.lua","�󼪱�"},
--	{1454, 1,1596,3200, "\\script\\event\\zhongqiu_jieri\\200909\\dajibing\\head.lua","�󼪱�"},
--	{1454, 78,1579,3230, "\\script\\event\\zhongqiu_jieri\\200909\\dajibing\\head.lua","�󼪱�"},
--	{1454, 37,1776,3049, "\\script\\event\\zhongqiu_jieri\\200909\\dajibing\\head.lua","�󼪱�"},
--	{1454, 176,1577,2950, "\\script\\event\\zhongqiu_jieri\\200909\\dajibing\\head.lua","�󼪱�"},
	
	-- {218, 80,1737,2988, "\\script\\activitysys\\npcdailog.lua","C�  gi�i ti�n sinh "},
	-- {218, 11,3133,4987, "\\script\\activitysys\\npcdailog.lua","C�  gi�i ti�n sinh "},
	-- {218, 1,1620,3145, "\\script\\activitysys\\npcdailog.lua","C�  gi�i ti�n sinh "},
	-- {218, 37,1812,3090, "\\script\\activitysys\\npcdailog.lua","C�  gi�i ti�n sinh "},
	-- {218, 176,1496,2971, "\\script\\activitysys\\npcdailog.lua","C�  gi�i ti�n sinh "},
	-- {218, 162,1594,3210, "\\script\\activitysys\\npcdailog.lua","C�  gi�i ti�n sinh "},
	-- {218, 78,1546,3240, "\\script\\activitysys\\npcdailog.lua","C�  gi�i ti�n sinh "},
	

	-- {1448,11,3123,4996,	"\\script\\activitysys\\npcdailog.lua","Long nhi"},
	-- {1448,1,1618,3144,	"\\script\\activitysys\\npcdailog.lua","Long nhi"},
	-- {1448,37,1809,3090,	"\\script\\activitysys\\npcdailog.lua","Long nhi"},
	-- {1448,176,1501,2974,	"\\script\\activitysys\\npcdailog.lua","Long nhi"},
	-- {1448,162,1589,3215,	"\\script\\activitysys\\npcdailog.lua","Long nhi"},
	-- {1448,78,1534,3241,	"\\script\\activitysys\\npcdailog.lua","Long nhi"},
	-- {1448,80,1737,2985,	"\\script\\activitysys\\npcdailog.lua","Long nhi"},
	-- {1448,37,1769,3056, "\\script\\event\\jiefang_jieri\\201004\\longer.lua","Long nhi"},
	
	-- {1576, 176,1408,3309, "\\script\\activitysys\\npcdailog.lua","NPC Duong mon"},	
	-- {1577, 176,1412,3311, "\\script\\activitysys\\npcdailog.lua","NPC Duong mon"},	
	
	-- {1801, 176,1420,3298, "\\script\\activitysys\\npcdailog.lua","V�  l�m minh ch� "},	
	-- {1802, 176,1424,3300, "\\script\\activitysys\\npcdailog.lua","V�  l�m minh ch� "},		
--	{455, 37,1762,3049, "\\script\\event\\other\\caipiao\\npcdialog.lua","����"},

	-- {108, 176,1451,3233, "\\script\\missions\\arena\\npc\\officer.lua","C�nh k�  tr��ng quan vi�n"},
};

Include("\\script\\activitysys\\g_activity.lua")
-- Include("\\script\\event\\other\\shensuanzi\\class.lua")
Include("\\script\\activitysys\\functionlib.lua")

Include("\\script\\task\\150skilltask\\g_task.lua")

Bil_TanThuQuanTab = 
{
	---- {1456,	20,	3545,	6196,	"\\script\\global\\bil4i3n\\bil4i3n_tanthuquan.lua",	"T�n Th� Quan"}, 
	-- {665,	20,	3545,	6196,	"\\script\\global\\bil4i3n\\bil4i3n_tanthuquan.lua",	"T�n Th� Quan"}, 
	-- {665,	53,	1622,	3193,	"\\script\\global\\bil4i3n\\bil4i3n_tanthuquan.lua",	"T�n Th� Quan"}, 
	-- {665,	101,	1673,	3179,	"\\script\\global\\bil4i3n\\bil4i3n_tanthuquan.lua",	"T�n Th� Quan"},
	-- {665,	174,	1628,	3209,	"\\script\\global\\bil4i3n\\bil4i3n_tanthuquan.lua",	"T�n Th� Quan"},
	-- {665,	121,	1950,	4516,	"\\script\\global\\bil4i3n\\bil4i3n_tanthuquan.lua",	"T�n Th� Quan"}, 
	-- {665,	99,	1610,	3183,	"\\script\\global\\bil4i3n\\bil4i3n_tanthuquan.lua",	"T�n Th� Quan"}, 
	-- {665,	100,	1628,	3188,	"\\script\\global\\bil4i3n\\bil4i3n_tanthuquan.lua",	"T�n Th� Quan"}, 
	-- {665,	153,	1603,	3234,	"\\script\\global\\bil4i3n\\bil4i3n_tanthuquan.lua",	"T�n Th� Quan"},
	
	{87,	53,	1624,	3167,	"\\script\\global\\bil4i3n\\bil4i3n_hoanhbatientu.lua",	"Ho�nh Ba Ti�n T�"},
	
	-- {1617,	78,	1556,	3234,	"\\script\\_event\\vulan\\npc_main.lua",	"Vu Lan Cung N�"},
}

function bilAddNpcTanThuQuan(Tab)
	bilCreateNPCInitManual()
	bilInitNPCMainTestGame()
	for i = 1 , getn(Tab) do 
		local itemlist = Tab[i]
		local SId = SubWorldID2Idx(itemlist[2]);
		if (SId >= 0) then
			
			local npcindex = AddNpc(itemlist[1], 1, SId, itemlist[3] * 32, itemlist[4] * 32, 1, itemlist[6]);
			SetNpcTimer(npcindex,random(10, 20)*18)
			SetNpcScript(npcindex, itemlist[5]);
		else
			if itemlist[1] == 1454 then
				print(itemlist[6], itemlist[2])
			end
		end;
	end	
end;

function bilInitNPCMainTestGame()
	if bilOpenTestGame == 1 then
		local bilNpcIdx = AddNpc(455, 1, SubWorldID2Idx(53), 1624 * 32, 3185 * 32, 1, "H� Tr� T�n Th�");
		SetNpcScript(bilNpcIdx, "\\script\\global\\bil4i3n\\bil4i3n_testgame_ver3_doxanh.lua");
	end
end

function bilCreateNPCInitManual()
	local bilTabNPCMapID_78 = {
		-- {665,	78,	1597,	3225,	"\\script\\global\\bil4i3n\\bil4i3n_tanthuquan.lua",	"T�n Th� Quan", 1}, 
		{663,	78,	1603,	3224,	"\\script\\task\\newtask\\education\\·��_����.lua",	"Long Ng�", 0}, 
		{87,	78,	1593,	3245,	"\\script\\global\\bil4i3n\\bil4i3n_hoanhbatientu.lua",	"Ho�nh Ba Ti�n T�", 0},
		{455,	78,	1606,	3222,	"\\script\\global\\bil4i3n\\bil4i3n_sugiamonphai.lua",	"S� gi� m�n ph�i", 0},
	}
	local bilTabNPCMapID_37 = {
		-- {665,	37,	1657,	3158,	"\\script\\global\\bil4i3n\\bil4i3n_tanthuquan.lua",	"T�n Th� Quan", 1}, 
		{663,	37,	1656,	3150,	"\\script\\task\\newtask\\education\\·��_����.lua",	"Long Ng�", 0}, 
		{455,	37,	1652,	3155,	"\\script\\global\\bil4i3n\\bil4i3n_sugiamonphai.lua",	"S� gi� m�n ph�i", 0},
	}
	if (bilNativePlace2ManualMap == 1) then
		if bilNativePlace2ManualMap_MapID == 78 then
			for i = 1, getn(bilTabNPCMapID_78) do
				local bilSubWID = SubWorldID2Idx(bilTabNPCMapID_78[i][2])
				local bilNpcIdx = AddNpc(bilTabNPCMapID_78[i][1], 1, bilSubWID, bilTabNPCMapID_78[i][3] * 32, bilTabNPCMapID_78[i][4] * 32, 1, bilTabNPCMapID_78[i][6]);
				SetNpcScript(bilNpcIdx, bilTabNPCMapID_78[i][5]);
				if (bilTabNPCMapID_78[i][7] == 1) then
					SetNpcTimer(bilNpcIdx,random(10, 20)*18)
				end
			end
		end
	end
	if (bilNativePlace2ManualMap == 1) then
		if bilNativePlace2ManualMap_37_MapID == 37 then
			for i = 1, getn(bilTabNPCMapID_37) do
				local bilSubWID = SubWorldID2Idx(bilTabNPCMapID_37[i][2])
				local bilNpcIdx = AddNpc(bilTabNPCMapID_37[i][1], 1, bilSubWID, bilTabNPCMapID_37[i][3] * 32, bilTabNPCMapID_37[i][4] * 32, 1, bilTabNPCMapID_37[i][6]);
				SetNpcScript(bilNpcIdx, bilTabNPCMapID_37[i][5]);
				if (bilTabNPCMapID_37[i][7] == 1) then
					SetNpcTimer(bilNpcIdx,random(10, 20)*18)
				end
			end
		end
	end
end

function main()
    dofile("script/global/autoexec.lua");
	DynamicExecute("\\script\\missions\\tianchimijing\\floor1\\gamefloor1.lua","GameFloor1:Start")
	DynamicExecute("\\script\\missions\\tianchimijing\\floor2\\gamefloor2.lua","GameFloor2:Start")
	DynamicExecute("\\script\\missions\\tianchimijing\\floor3\\gamefloor3.lua","GameFloor3:Start")
	DynamicExecute("\\script\\missions\\tianchimijing\\floor4\\gamefloor4.lua","GameFloor4:Start")
	
	DynamicExecute("\\script\\missions\\yuegedao\\yuegedao\\yuegedaoworld.lua", "YueGeDaoWorld:Start")
	DynamicExecute("\\script\\missions\\yuegedao\\yuegemigu\\yuegemiguworld.lua", "YueGeMiGuWorld:Start")

	DynamicExecute("\\script\\changefeature\\initmap.lua", "AddDailogNpc")
	DynamicExecute("\\script\\global\\npc\\huoke.lua", "CallHuoKeInit")
	DynamicExecute("\\script\\missions\\tianchimijing\\floor1\\yunchihead.lua", "AddEnterNpc")
	
	DynamicExecute("\\script\\_event\\init.lua", "_EVENT:Init")
	
	-- tbShenSuanZi:Init()
	
	OpenGlbMission(8)
	

	OpenGlbMission(MSID_STAT_GOODS_SALE)
	
	mapcount = getn(maptab)
	for i = 1, mapcount do 
		idx = SubWorldID2Idx(maptab[i]);
		if (idx ~= -1) then 
			SubWorld = idx;
			OpenMission(2);
		end;
	end

	buildAllCityInfoLeague()
	
	-- add_dialognpc(au06_tab_kidnpc); -- chi?n t�n t�n gi�
	bilAddNpcTanThuQuan(Bil_TanThuQuanTab); 

	load_mission_aexp();
	add_dialognpc(adddialognpc);
	-- add_dialognpc(nw_npclist)
	add_dialognpc(npclist_sevencity)
	add_newtasknpc(addnewtasknpc);
	add_xishancunnpc(xishancunnpc);
	
	add_spreadernpc(spreadernpc);		
	add_killertasknpc(addkillertasknpc);
	add_alltollgatenpc();   
	--add_allpartnernpc();    
	--add_zhongqiunpc();	
	cd_addsignnpc()		
	wlls_autoexe()	

	-- add_dialognpc(%tbActNpcList)
	tongwar_addsignnpc()
	add_tongnpc()	
	local n_date = tonumber(GetLocalDate("%Y%m%d"));
	local szRegion = GetProductRegion();
	if (szRegion == "cn" or szRegion == "cn_ib") then
		-- add_dialognpc(addmasknpc)	
		add_wulinnpc_2nd()	
		
		add_lv120skillnpc()		

		add_dialognpc(ch06_addchristmasnpc);
		add_lottery_npc();	
	--	addGraveStone();
		qm07_addGraveStone()
	end

	if (szRegion == "cn_ib") then
		addEmissaryNpc()      
	end

	if (szRegion == "vn") then
		-- add_dialognpc(ACT2YEAR_YN_NPC);	-- S� gi� v� l�m, m�ng th�ng tin n�m � Include
		AnonymVale_auto();		
		--add_dialognpc(tab_springfestivalNPC);
		-- add_dialognpc(addmoontown_mulao);	
		--add_dialognpc(tbxmas2007_girl_binger) 
		--add_dialognpc(newyear_2008_chunjiecailu) 

		add_dialognpc(tbaddJinShanDao_NpcAndTrap.tbDialogNpc);
		tbaddJinShanDao_NpcAndTrap:AddTrapR()
		tbaddJinShanDao_NpcAndTrap:AddTrapL()
		tbaddJinShanDao_NpcAndTrap:AddMons()
		--add_obstacle_map();
		-- if (n_date <= 20200101) then			
			-- add_dialognpc(tab_zingplay_npc);
		-- end
		-- if(SubWorldID2Idx(11) >= 0) then
			-- local npcidx = AddNpc(245, 1, SubWorldID2Idx(11), 390 * 8 * 32, 317 * 16 * 32, 1, "��������");
			-- SetNpcScript(npcidx, "\\script\\event\\jiefang_jieri\\200904\\denggao\\npc.lua");
		-- end		
		tbChangeDestiny:addNpc();	
		-- tbNewPracticeMap:addNpc(); --T�ch Huy�t C�c
		tbBeatTiger:AddNpc();	
	end

	add_trap_daliheidong()

	add_trap_bianjingximen()
	add_heisha_entertrap();
	
	G_ACTIVITY:LoadActivitys()
	G_TASK:LoadAllConfig()
	G_ACTIVITY:OnMessage("ServerStart");
	
	tbTimeLineManager:LoadAllTimeLine(tbTimeLineList);
	AutoFunctions:Run()
	
	-- local szFile = "\\script\\event\\great_night\\great_night_head.lua"
	-- DynamicExecute(szFile, "OnGreatNightServerStart")
end;

function load_mission_aexp()
	mapTab = {235, 236, 237, 238, 239, 240, 241};
	nCount = getn(mapTab);
	
	oldSubWorld = SubWorld;
	for i = 1, nCount do
		idx = SubWorldID2Idx(mapTab[i]);
		if (idx ~= -1) then 
			SubWorld = idx;
			OpenMission(9);	
		end;
	end;
	
	SubWorld = oldSubWorld;
end;

function add_dialognpc(Tab)
	for i = 1 , getn(Tab) do 
		local itemlist = Tab[i]
		SId = SubWorldID2Idx(itemlist[2]);
		if (SId >= 0) then
			
			npcindex = AddNpc(itemlist[1], 1, SId, itemlist[3] * 32, itemlist[4] * 32, 1, itemlist[6]);
			SetNpcScript(npcindex, itemlist[5]);
		else
			if itemlist[1] == 1454 then
				print(itemlist[6], itemlist[2])
			end
		end;
	end	
end;

function add_newtasknpc(Tab1)
	for i = 1 , getn(Tab1) do
		Mid = SubWorldID2Idx(Tab1[i][4]);
		if (Mid >= 0 ) then
			TabValue5 = Tab1[i][5] * 32
			TabValue6 = Tab1[i][6] * 32
			newtasknpcindex = AddNpc(Tab1[i][1],Tab1[i][2],Mid,TabValue5,TabValue6,Tab1[i][7],Tab1[i][8]);
			SetNpcScript(newtasknpcindex, Tab1[i][10]);
		end;
	end;
end;

