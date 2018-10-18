-- script viet hoa By http://tranhba.com  dông hé lùa chän c¸ch tuyÕn bµy qu¶n lóc ch©n cña vèn 
-- script viet hoa By http://tranhba.com 2004.11.24 
Include("\\script\\global\\baijuwanhead.lua");
Include("\\script\\global\\judgeoffline_limit.lua");		-- script viet hoa By http://tranhba.com  2006Äê10ÔÂ30ÈÕ¼ÓÈëÏÞÖÆÔÚËùÓÐ³ÇÊÐ³µ·òÅÔºÍÌìÍõ°ïÍÐ¹ÜµÄ½Å±¾  by peres
Include("\\script\\item\\ib\\zimudai.lua");
Include("\\script\\lib\\player.lua")
Include("\\script\\trip\\define.lua")

arraymap = 
{ 
["1"] = " ph­îng t­êng ", 
["11"] = " thµnh ®« ", 
["37"] = " biÖn kinh ", 
["80"] = " D­¬ng Ch©u ", 
["78"] = " t­¬ng d­¬ng ", 
["162"] = " §¹i Lý ", 
["176"] = " tr­íc khi an ", 
["20"] = " giang t©n th«n ", 
["53"] = " ba l¨ng huyÒn ", 
["54"] = " nam nh¹c trÊn ", 
["99"] = " vÜnh nh¹c trÊn ", 
["100"] = " Chu tiªn trÊn ", 
["101"] = " ®¹o h­¬ng th«n ", 
["121"] = " long m«n trÊn ", 
["153"] = " th¹ch cæ trÊn ", 
["174"] = " long tuyÒn th«n ", 
["13"] = " Nga Mi ", 
["25"] = " §­êng m«n ", 
["49"] = " ngµy nhÉn ", 
["59"] = " Thiªn v­¬ng ", 
["81"] = " Vâ §­¬ng ", 
["103"] = " ThiÕu L©m ", 
["115"] = " C¸i Bang ", 
["131"] = " C«n L«n ", 
["154"] = " thóy khãi ", 
["183"] = " n¨m ®éc ", 
-- script viet hoa By http://tranhba.com  ["208"] = " ®¹i lao ", 
-- script viet hoa By http://tranhba.com  LLG_ALLINONE_TODO_20070802 
["235"] = " hoa ®µo ®¶o # mét #", 
["236"] = " hoa ®µo ®¶o # hai #", 
["237"] = " hoa ®µo ®¶o # ba #", 
["238"] = " hoa ®µo ®¶o # bèn #", 
["239"] = " hoa ®µo ®¶o # n¨m #", 
["240"] = " hoa ®µo ®¶o # s¸u #", 
["241"] = " hoa ®µo ®¶o # b¶y #", 
["835"] = " V« danh cèc ( mét )", 
["836"] = " V« danh cèc ( hai )", 
["837"] = " V« danh cèc ( ba )", 
["838"] = " V« danh cèc ( bèn )", 
["839"] = " V« danh cèc ( n¨m )", 
["840"] = " V« danh cèc ( s¸u )", 
["586"] = " c«ng céng bang héi b¶n ®å mét ", 
["587"] = " s¬n thµnh bang héi b¶n ®å ", 
["588"] = " Miªu C­¬ng bang héi b¶n ®å ", 
["589"] = " sa m¹c bang héi b¶n ®å ", 
["590"] = " kinh s­ bang héi b¶n ®å ", 
["591"] = " bªn t¾c bang héi b¶n ®å ", 
["593"] = " Giang Nam bang héi b¶n ®å ", 
["594"] = " tuyÕt lÜnh bang héi b¶n ®å ", 
["595"] = " c«ng céng bang héi b¶n ®å hai ", 
["596"] = " c«ng céng bang héi b¶n ®å ba ", 
["597"] = " c«ng céng bang héi b¶n ®å bèn ", 
}; 

function judgeoffline(player_count, offline_count) 

-- script viet hoa By http://tranhba.com  szHour = date("%H"); 
-- script viet hoa By http://tranhba.com  nHour = tonumber(szHour); 

-- script viet hoa By http://tranhba.com  sparetime = GetTask(AEXP_TASKID); 
-- script viet hoa By http://tranhba.com  if (nHour >= AEXP_INVALIDTIMEBEGIN and nHour < AEXP_INVALIDTIMEEND) then 
-- script viet hoa By http://tranhba.com  Say("<#> ng­¬i ë ®©y <color=red>"..AEXP_INVALIDTIMEBEGIN..":00<color>-<color=red>"..AEXP_INVALIDTIMEEND..":00<color> thêi gian ®o¹n bªn trong lùa chän c¸ch tuyÕn bµy qu¶n , cã thÓ tiÕp tôc bµy s¹p giao dÞch , nh­ng lµ sÏ kh«ng ®¹t ®­îc kinh nghiÖm trÞ gi¸ , sÏ kh«ng tù ®éng nhËn lÊy phóc duyªn . kho¶ng thêi gian nµy hÖ thèng sÏ kh«ng khÊu trõ ng­¬i c¸ch tuyÕn bµy qu¶n thêi gian , mµ ng­¬i nh­ng tiÕn hµnh trß ch¬i thêi gian lµ sÏ tiÕp tôc tÝnh to¸n . ", 2,"Ng­¬i nhÊt ®Þnh ph¶i tiÕn vµo c¸ch tuyÕn bµy qu¶n sao ?/judgecontion","T¹m thêi kh«ng cÇn . /donothing"); 
-- script viet hoa By http://tranhba.com  return 5 
-- script viet hoa By http://tranhba.com  else 
-- script viet hoa By http://tranhba.com  judgecontion(); 
-- script viet hoa By http://tranhba.com  end 
judgecontion(); 

return 0 
end 

function judgecontion() 
-- script viet hoa By http://tranhba.com  do 
-- script viet hoa By http://tranhba.com  Talk(1, "","C¸ch tuyÕn bµy qu¶n chøc n¨ng t¾t ") 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com  end 

-- script viet hoa By http://tranhba.com  nÕu nh­ tíi b­íc nµy nh­ vËy thµnh c«ng b¾t ®Çu c¸ch tuyÕn bµy qu¶n 
local tbSpareTime = {}; 
-- script viet hoa By http://tranhba.com  ®Æc hiÖu râ rµng c©u hoµn b×nh th­êng râ rµng c©u hoµn b¹ch c©u hoµn 
local tbAexpTask = {AEXP_TIANXING_TIME_TASKID,AEXP_SPECIAL_TIME_TASKID,AEXP_TASKID, AEXP_SMALL_TIME_TASKID, 
-- script viet hoa By http://tranhba.com  ®Æc hiÖu kü n¨ng râ rµng c©u hoµn kü n¨ng râ rµng c©u hoµn kü n¨ng b¹ch c©u hoµn 
AEXP_SPECIAL_SKILL_TASKID, AEXP_SKILL_TIME_TASKID, AEXP_SMALL_SKILL_TASKID}; 
local btime = 0; 
for i = 1, getn(tbAexpTask) do 
tbSpareTime[i] = {}; 
tbSpareTime[i][1] = GetTask(tbAexpTask[i]); 
tbSpareTime[i][2], tbSpareTime[i][3] = getFrame2MinAndSec(tbSpareTime[i][1]); -- script viet hoa By http://tranhba.com  cho dông hé ®Ò kú biÓu hiÖn ®Õn phót 
if (tbSpareTime[i][1] >= FRAME2TIME * 60 and btime ~= 1) then 
btime = 1; 
end; 
end; 


if (btime == 1 and IsCharged() == 1) then 
local nSkillExpID = GetTask(AEXP_SKILL_ID_TASKID); 
local szSkillExpName = ""; 
if (nSkillExpID ~= 0) then 
szSkillExpName = "<color=yellow>"..GetSkillName(nSkillExpID).."<color>"; 
else 
szSkillExpName = "<color=blue>Ch# ch# k?n#g<color>"; 
end 

local szmsg = format("Ng­¬i c¸ch tuyÕn bµy qu¶n cßn thõa l¹i thêi gian lµ : ®Æc hiÖu râ rµng c©u hoµn <color=red>%d<color> giê <color=red>%d<color> ph©n ".. 
"<enter> râ rµng c©u hoµn <color=red>%d<color> giê <color=red>%d<color> ph©n ".. 
"<enter> b¹ch c©u hoµn <color=red>%d<color> giê <color=red>%d<color> ph©n ".. 
"<enter> ®Æc hiÖu tiªn th¶o lé <color=red>%d<color> giê <color=red>%d<color> ph©n ".. 
"<enter> kü n¨ng ®é thuÇn thôc (%s): ®Æc hiÖu kü n¨ng râ rµng c©u hoµn <color=red>%d<color> giê <color=red>%d<color> ph©n ".. 
"<enter> kü n¨ng râ rµng c©u hoµn <color=red>%d<color> giê <color=red>%d<color> ph©n ".. 
"<enter> kü n¨ng b¹ch c©u hoµn <color=red>%d<color> giê <color=red>%d<color> ph©n ".. 
"<enter> bµy qu¶n lóc nÕu nh­ cã ®Æc hiÖu râ rµng c©u hoµn hiÖu qu¶ , ­u tiªn theo nh­ nµy hiÖu qu¶ cho cïng kinh nghiÖm còng khÊu trõ kú ®èi øng hiÖu qu¶ thêi gian . ", 
tbSpareTime[1][2],tbSpareTime[1][3], 
tbSpareTime[2][2],tbSpareTime[2][3], 
tbSpareTime[3][2],tbSpareTime[3][3], 
tbSpareTime[4][2],tbSpareTime[4][3], 
szSkillExpName, tbSpareTime[5][2],tbSpareTime[5][3], 
tbSpareTime[6][2],tbSpareTime[6][3], 
tbSpareTime[7][2],tbSpareTime[7][3]); 
local szSay = 
{ " b¾t ®Çu c¸ch tuyÕn bµy qu¶n /beginoffline", 
" lùa chän c¸ch tuyÕn bµy qu¶n kü n¨ng /#selectofflineskill('judgecontion')", 
" b¾t ®Çu ë tuyÕn bµy qu¶n /begin_onlinecommission", 
" kÕt thóc ë tuyÕn bµy qu¶n /end_onlinecommission", 
" nhËn lÊy c¸ch tuyÕn t­ëng th­ëng /offlineaward", 
" ta suy nghÜ mét chót n÷a /donothing" 
}; 
Describe(szmsg, getn(szSay), szSay[1], szSay[2], szSay[3], szSay[4], szSay[5], szSay[6]); 
else 
if (IsCharged() ~= 1) then 
Talk(1, "", "<#> thiÕu phÝ sung trÞ gi¸ nh¾c nhë ? "); 
return 
end; 
-- script viet hoa By http://tranhba.com beginoffline(); 
-- script viet hoa By http://tranhba.com  dông hé cßn thõa l¹i thêi gian 
Say("<#>Th ¸ch gian c# l t¹c # th# kinh nghi# B ®ång h C# Ho yªu c# b# l?color=red>0<color> ph©n . Ng#i c?th?s?d#g #i B ®ång h C# Ho yªu #c Bi khiªm ho s« l?#i B ®ång h C# Ho yªu # t#g th ¸ch gian # th# c# m#h. <enter>ho s« l?ch#<color=yellow> # th# r ¸ch m#g mi cù ph?color>, c# n phô ch?c?th?nh nhÜ ## m# ch l©u triÕp kinh nghi#.", 
3, 
" b¾t ®Çu c¸ch tuyÕn bµy qu¶n /beginoffline", 
" nhËn lÊy c¸ch tuyÕn t­ëng th­ëng /offlineaward", 
" ta suy nghÜ mét chót n÷a /donothing"); 
end 
end 

-- script viet hoa By http://tranhba.com  b¾t ®Çu ë tuyÕn bµy qu¶n 
function begin_onlinecommission() 
local bRet = check_if_can_offline() 
if bRet then 
return bRet 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n dông hé cßn thõa l¹i thêi gian 
local sparetime = getsparetime(); 
if (sparetime <= 0) then 
Say("<#> ng­¬i cßn thõa l¹i c¸ch tuyÕn bµy qu¶n thêi gian lµ 0 phót . mêi/xin ng­¬i sö dông c¸ch tuyÕn bµy qu¶n vËt phÈm , sö dông n÷a nªn chøc n¨ng . ", 0); 
return 3 
end 

if (GetOnlineCommissionStatus() ~= 0) then 
Msg2Player("<#> ng­¬i tr­íc mÆt kh«ng xö vu ë tuyÕn bµy qu¶n tr¹ng th¸i #") 
else 
Msg2Player("B¾t ®Çu ë tuyÕn bµy qu¶n #") 
SetOnlineCommissionStatus(1) 
WriteLog(format("[OfflineLive]\t%s\tAccount:%s\tName:%s\tbegin_onlinecommission, last online time:%s", 
GetLocalDate("%Y-%m-%d %X"), GetAccount(), GetName(), getBaiJutimeinfo())); 
-- script viet hoa By http://tranhba.com EnableClientInput(0) 
end 
end 

-- script viet hoa By http://tranhba.com  kÕt thóc ë tuyÕn bµy qu¶n 
function end_onlinecommission() 
if (GetOnlineCommissionStatus() == 0) then 
Msg2Player("<#> ë tuyÕn bµy qu¶n b¾t ®Çu #") 
else 
SetOnlineCommissionStatus(0) 
-- script viet hoa By http://tranhba.com EnableClientInput(1) 
Msg2Player("<#> ë tuyÕn bµy qu¶n kÕt thóc #") 
WriteLog(format("[OfflineLive]\t%s\tAccount:%s\tName:%s\tend_onlinecommission, last online time:%s", 
GetLocalDate("%Y-%m-%d %X"), GetAccount(), GetName(), getBaiJutimeinfo())); 
end 
end 

function check_if_can_offline() 

local nTripMode = GetTripMode() 
if nTripMode == TRIP_MODE_SERVER then 
Talk(1, "", "Xin #i hi# l#ng th?kh tÇn g th?s?d#g t#h n#g # th# t t¹c server c tÇn g c#g") 
return 1 
end 
-- script viet hoa By http://tranhba.com  ®Çu tiªn ph¸n ®o¸n dông hé chç ë khu vùc 
mapid = SubWorldIdx2MapCopy(SubWorld); 
strmapid = ""..mapid..""; 
-- script viet hoa By http://tranhba.com  kh«ng cã ë tr­íc mÆt trªn b¶n ®å 
if (arraymap[strmapid] == nil) then 
Say("<#> ng­¬i kh«ng thÓ ë n¬i nµy khu vùc sö dông c¸ch tuyÕn bµy qu¶n chøc n¨ng , mêi/xin ng­¬i ®Õn t­¬ng øng ®Æc ®Þnh khu vùc # bao gåm tÊt c¶ thµnh trÊn # th«n trang cïng víi thËp ®¹i bªn trong m«n ph¸i # sö dông c¸ch tuyÕn bµy qu¶n . ", 0); 
return 1 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n cã hay kh«ng ë mét Ýt h¹n chÕ khu vùc , nãi thÝ dô nh­ phu xe # Thiªn v­¬ng gióp chê 
if offlineCheckPermitRegion()~=1 then 
Say("<#> ng­¬i kh«ng thÓ ë n¬i nµy khu vùc sö dông c¸ch tuyÕn bµy qu¶n chøc n¨ng , mêi/xin ng­¬i ®Õn t­¬ng øng ®Æc ®Þnh khu vùc # bao gåm tÊt c¶ thµnh trÊn # th«n trang cïng víi thËp ®¹i bªn trong m«n ph¸i # sö dông c¸ch tuyÕn bµy qu¶n . ", 0); 
return 1; 
end; 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n dông hé ®Ých tr¹ng th¸i chiÕn ®Êu 
if (GetFightState() ~= 0) then 
Say("<#> ng­¬i tr­íc m¾t xö vu tr¹ng th¸i chiÕn ®Êu trung , kh«ng c¸ch nµo tiÕn vµo c¸ch tuyÕn bµy qu¶n tr¹ng th¸i , mêi/xin ng­¬i tiÕn vµo kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu sau sö dông n÷a c¸ch tuyÕn bµy qu¶n . ", 0); 
return 2 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n dông hé cßn thõa l¹i thêi gian 
local sparetime = getsparetime(); 
if (sparetime <= 0) then 
Say("<#> ng­¬i cßn thõa l¹i c¸ch tuyÕn bµy qu¶n kinh nghiÖm thêi gian lµ 0 phót , hoÆc lµ còng kh«ng lùa chän c¸ch tuyÕn bµy qu¶n kü n¨ng , xin/mêi lÇn n÷a x¸c nhËn sau sö dông n÷a nªn chøc n¨ng . ", 0); 
return 3 
end 

-- script viet hoa By http://tranhba.com  khi mét m¸y phôc vô khÝ nh©n sè cña v­ît qua 800 ng­êi , lµ kh«ng cho phÐp nhµ ch¬i ë n¬i nµy thai phôc vô khÝ bªn trong tiÕn hµnh c¸ch tuyÕn bµy qu¶n 
player_count = GetPlayerCount(); 
local nmax_count_limit = AEXP_OFFLINE_PLAYERCOUNT_LIMIT; 
if (mapid >= 835 and mapid <= 840) then 
nmax_count_limit = AEXP_OFFLINE_PLAYERCOUNT_SPECIAL;-- script viet hoa By http://tranhba.com 750 
end; 
if (player_count > nmax_count_limit) then 
Say("<#> b©y giê c¸i chç nµy thËt sù lµ ng­êi ta tÊp nËp , ng­¬i cßn lµ ®Õn nh÷ng thø kh¸c thµnh trÊn # th«n trang hoÆc lµ m«n ph¸i n÷a tiÕn hµnh c¸ch tuyÕn bµy qu¶n ®i . ",0); 
return 4 
end 


end 

function beginoffline() 
local bRet = check_if_can_offline() 
if bRet then 
return bRet 
end 
-- script viet hoa By http://tranhba.com  ph¸n ®o¸n cã hay kh«ng ë ë tuyÕn bµy qu¶n 
if (GetOnlineCommissionStatus() ~= 0) then 
Say("<#> ng­¬i tr­íc mÆt xö vu ë tuyÕn bµy qu¶n tr¹ng th¸i #", 0) 
return 1 
end 
-- script viet hoa By http://tranhba.com  b¾t ®Çu c¸ch tuyÕn treo ky 
OfflineLive(PlayerIndex); 
end 

-- script viet hoa By http://tranhba.com  c¸i g× ®Òu kh«ng lµm hµm sè , cã thÓ nhiÒu ®Þa ph­¬ng ®iÒu dông ®Õn , söa ®æi ph¶i thêi ®iÓm xin chó ý 
function donothing() 

end 

TASKID_OFFLINELIVE_EXP = { 
AEXP_SMALL_TIME_TASKID, 
AEXP_TASKID, 
AEXP_SPECIAL_TIME_TASKID, 
AEXP_TIANXING_TIME_TASKID 
} 

TASKID_OFFLINELIVE_SKILL = { 
AEXP_SMALL_SKILL_TASKID, 
AEXP_SKILL_TIME_TASKID, 
AEXP_SPECIAL_SKILL_TASKID 
} 

function getsparetime() 
-- script viet hoa By http://tranhba.com  ph¸n ®o¸n dông hé cßn thõa l¹i thêi gian 
local nLeftTime = 0 
for i = 1, getn(TASKID_OFFLINELIVE_EXP) do 
		nLeftTime = nLeftTime + GetTask(TASKID_OFFLINELIVE_EXP[i])
end 
if (GetTask(AEXP_SKILL_ID_TASKID) ~= 0) then 
local nTime = 0 
for i = 1, getn(TASKID_OFFLINELIVE_SKILL) do 
			nTime = nTime + GetTask(TASKID_OFFLINELIVE_SKILL[i])
end 
if (nLeftTime < nTime) then 
nLeftTime = nTime 
end 
end 
return nLeftTime 
end 

-- script viet hoa By http://tranhba.com  lùa chän c¸ch tuyÕn bµy qu¶n kü n¨ng 
function selectofflineskill() 
local aryExpSkill = getexpskill(); 
local nExpSkillCount = getn(aryExpSkill); 
local aryszExpSkill = {}; 
local szSayCmd = " xin/mêi lùa chän ngµi cÇn c¸ch tuyÕn bµy qu¶n kü n¨ng #"; 
for i = 1, nExpSkillCount do 
aryszExpSkill[i] = format("%s/#onSetUpgradeSkill(%d)",aryExpSkill[i][2],aryExpSkill[i][1]); 
end 
tinsert(aryszExpSkill, "Tr?l t¹c /judgecontion") 
Say(szSayCmd, getn(aryszExpSkill), aryszExpSkill); 
end 

-- script viet hoa By http://tranhba.com  thiÕt trÝ c¸ch tuyÕn bµy qu¶n kü n¨ng 
function onSetUpgradeSkill(nUpgradeSkillID) 
SetTask(AEXP_SKILL_ID_TASKID, nUpgradeSkillID); 
judgecontion(); 
end 

function offlineaward() 
local player = Player:New(PlayerIndex) 
DynamicExecute( 
		"\\script\\global\\offlineaward.lua",
"dlg_offlineaward", 
player) 
end 
