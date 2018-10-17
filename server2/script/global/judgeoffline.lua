-- script viet hoa By http://tranhba.com  dông hé lùa chän c¸ch tuyÕn bµy qu¶n lóc ch©n cña vèn 
-- script viet hoa By http://tranhba.com 2004.11.24 
Include("\\script\\global\\baijuwanhead.lua");
Include("\\script\\global\\judgeoffline_limit.lua");		-- script viet hoa By http://tranhba.com  2006Äê10ÔÂ30ÈÕ¼ÓÈëÏŞÖÆÔÚËùÓĞ³ÇÊĞ³µ·òÅÔºÍÌìÍõ°ïÍĞ¹ÜµÄ½Å±¾  by peres
Include("\\script\\item\\ib\\zimudai.lua");
Include("\\script\\lib\\player.lua")
Include("\\script\\trip\\define.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_autooffline4player.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

arraymap = 
{ 
["1"] = " ph­îng t­êng ", 
["11"] = " thµnh ®« ", 
["37"] = " biÖn kinh ", 
["80"] = " D­¬ng Ch©u ", 
["78"] = " t­¬ng d­¬ng ", 
["162"] = " §¹i Lı ", 
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
-- script viet hoa By http://tranhba.com  ["59"] = " Thiªn v­¬ng ", 
["81"] = " Vâ §­¬ng ", 
["103"] = " ThiÕu L©m ", 
["115"] = " C¸i Bang ", 
["131"] = " C«n L«n ", 
["154"] = " thóy khãi ", 
["183"] = " n¨m ®éc ", 
-- script viet hoa By http://tranhba.com  ["208"] = " ®¹i lao ", -- script viet hoa By http://tranhba.com by tö kh«ng ph¶i lµ c¸ 2007/11/13 cÊm chØ ®¹i lao bµy qu¶n 
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
["586"] = " c«ng céng bang héi b¶n ®å ", 
["587"] = " thµnh ®« bang héi b¶n ®å ", 
["588"] = " §¹i Lı bang héi b¶n ®å ", 
["589"] = " ph­îng t­êng bang héi b¶n ®å ", 
["590"] = " tr­íc khi an bang héi b¶n ®å ", 
["591"] = " t­¬ng d­¬ng bang héi b¶n ®å ", 
["593"] = " D­¬ng Ch©u bang héi b¶n ®å ", 
["594"] = " biÖn kinh bang héi b¶n ®å ", 
["595"] = " c«ng céng bang héi b¶n ®å ", 
["596"] = " c«ng céng bang héi b¶n ®å ", 
["597"] = " c«ng céng bang héi b¶n ®å ", 
}; 

function judgeoffline(player_count, offline_count) 

-- script viet hoa By http://tranhba.com  szHour = date("%H"); 
-- script viet hoa By http://tranhba.com  nHour = tonumber(szHour); 

-- script viet hoa By http://tranhba.com  sparetime = GetTask(AEXP_TASKID); 
-- script viet hoa By http://tranhba.com  if (nHour >= AEXP_INVALIDTIMEBEGIN and nHour < AEXP_INVALIDTIMEEND) then 
-- script viet hoa By http://tranhba.com  Say("<#> ng­¬i ë ®©y <color=red>"..AEXP_INVALIDTIMEBEGIN..":00<color>-<color=red>"..AEXP_INVALIDTIMEEND..":00<color> thêi gian ®o¹n bªn trong lùa chän c¸ch tuyÕn bµy qu¶n , cã thÓ tiÕp tôc bµy s¹p giao dŞch , nh­ng lµ sÏ kh«ng ®¹t ®­îc kinh nghiÖm trŞ gi¸ , sÏ kh«ng tù ®éng nhËn lÊy phóc duyªn . kho¶ng thêi gian nµy hÖ thèng sÏ kh«ng khÊu trõ ng­¬i c¸ch tuyÕn bµy qu¶n thêi gian , mµ ng­¬i nh­ng tiÕn hµnh trß ch¬i thêi gian lµ sÏ tiÕp tôc tİnh to¸n . ", 2,"Ng­¬i nhÊt ®Şnh ph¶i tiÕn vµo c¸ch tuyÕn bµy qu¶n sao ?/judgecontion","T¹m thêi kh«ng cÇn . /donothing"); 
-- script viet hoa By http://tranhba.com  return 5 
-- script viet hoa By http://tranhba.com  else 
-- script viet hoa By http://tranhba.com  judgecontion(); 
-- script viet hoa By http://tranhba.com  end 
judgecontion(); 

return 0 
end 

function UyThacNhanExpBCH(_1)
	if _1 == 1111 then
		return bilAutoOfflineLiveAllowBeginOfflineLive(1111)
	end

	if GetTask(5887) <= 0 then
		return bil.Talk("Qóy nh©n sÜ hiÖn ®· hÕt thêi gian ñy th¸c cña B¹ch C©u Hoµn, kh«ng thÓ sö dông c«ng n¨ng nµy!")
	end
	
	local _, a = bil.SplitTime(GetTask(5887))
	return Say("Thêi gian ñy th¸c b»ng B¹ch C©u Hoµn cña quı nh©n sÜ cßn "..a..", quı nh©n sÜ cã muèn tiÕp tôc ñy th¸c?",2,
		"TiÕp tôc ñy th¸c!/#UyThacNhanExpBCH(1111)",
		"T¹m thêi ch­a cÇn dïng ®Õn/donothing")
end

function judgecontion() 
	if bilAllowUyThacBachCauHoan ~= 1 then
		Say("HiÖn t¹i m¸y chñ chØ hæ trî chøc n¨ng <color=yellow>ñy th¸c miÔn phİ<color>, gióp c¸c th­¬ng gia b¸n hµng.", 2, "MiÔn phİ ñy th¸c, hç trî b¸n hµng/beginoffline", "KÕt thóc ®èi tho¹i./donothing"); 
	else
		Say("HiÖn t¹i m¸y chñ chØ hæ trî chøc n¨ng <color=yellow>ñy th¸c miÔn phİ<color>, gióp c¸c th­¬ng gia b¸n hµng.", 3,
		"MiÔn phİ ñy th¸c, hç trî b¸n hµng/beginoffline",
		"ñy th¸c nhËn ®iÓm kinh nghiÖm b»ng B¹ch C©u Hoµn/UyThacNhanExpBCH",
		"KÕt thóc ®èi tho¹i./donothing"); 
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
Say("<#> ng­¬i cßn thõa l¹i c¸ch tuyÕn bµy qu¶n kinh nghiÖm thêi gian lµ 0 phót , hoÆc lµ còng kh«ng lùa chän c¸ch tuyÕn bµy qu¶n kü n¨ng , xin/mêi lÇn n÷a x¸c nhËn sau sö dông n÷a nªn chøc n¨ng . ", 0); 
return 3 
end 

if (GetOnlineCommissionStatus() ~= 0) then 
Msg2Player("<#> ng­¬i b©y giê ®· ë ë tuyÕn bµy xİa vµo ") 
else 
Msg2Player("Ngµi ®ang ®øng ë ë tuyÕn ñy th¸c tr¹ng th¸i ") 
SetOnlineCommissionStatus(1) 
WriteLog(format("[OfflineLive]\t%s\tAccount:%s\tName:%s\tbegin_onlinecommission, last online time:%s", 
GetLocalDate("%Y-%m-%d %X"), GetAccount(), GetName(), getBaiJutimeinfo())); 
-- script viet hoa By http://tranhba.com EnableClientInput(0) 
end 
end 

-- script viet hoa By http://tranhba.com  kÕt thóc ë tuyÕn bµy qu¶n 
function end_onlinecommission() 
if (GetOnlineCommissionStatus() == 0) then 
Msg2Player("<#> tr­íc m¾t ng­¬i kh«ng cã ë tuyÕn ñy th¸c ") 
else 
SetOnlineCommissionStatus(0) 
-- script viet hoa By http://tranhba.com EnableClientInput(1) 
Msg2Player("<#> ng­¬i ®· hñy bá ë tuyÕn ñy th¸c ") 
WriteLog(format("[OfflineLive]\t%s\tAccount:%s\tName:%s\tend_onlinecommission, last online time:%s", 
GetLocalDate("%Y-%m-%d %X"), GetAccount(), GetName(), getBaiJutimeinfo())); 
end 
end 

function check_if_can_offline() 

local nTripMode = GetTripMode() 
if nTripMode == TRIP_MODE_SERVER then 
Talk(1, "","Xin ®¹i hiÖp l­îng thø , kh«ng thÓ ë n¬i c«ng céng sö dông tİnh n¨ng ñy th¸c") 
return 1 
end 
-- script viet hoa By http://tranhba.com  ®Çu tiªn ph¸n ®o¸n dông hé chç ë khu vùc 
mapid = SubWorldIdx2MapCopy(SubWorld); 
strmapid = ""..mapid..""; 
-- script viet hoa By http://tranhba.com  kh«ng cã ë tr­íc mÆt trªn b¶n ®å 
if (arraymap[strmapid] == nil) then 
Say("§¹i hiÖp kh«ng thÓ ë khu vùc nµy sö dông chøc n¨ng ñy th¸c, mêi ®¹i hiÖp ®Õn khu vùc cho phĞp ñy th¸c # bao gåm tÊt c¶ thµnh trÊn # th«n trang vµ bªn trong thËp ®¹i m«n ph¸i. ", 0); 
return 1 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n cã hay kh«ng ë mét İt h¹n chÕ khu vùc , nãi thİ dô nh­ phu xe # Thiªn v­¬ng gióp chê 
if offlineCheckPermitRegion()~=1 then 
Say("§¹i hiÖp kh«ng thÓ ë khu vùc nµy sö dông chøc n¨ng ñy th¸c, mêi ®¹i hiÖp ®Õn khu vùc cho phĞp ñy th¸c # bao gåm tÊt c¶ thµnh trÊn # th«n trang vµ bªn trong thËp ®¹i m«n ph¸i. ", 0); 
return 1; 
end; 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n dông hé ®İch tr¹ng th¸i chiÕn ®Êu 
if (GetFightState() ~= 0) then 
Say("§¹i hiÖp kh«ng thÓ ë khu vùc nµy sö dông chøc n¨ng ñy th¸c, mêi ®¹i hiÖp ®Õn khu vùc cho phĞp ñy th¸c # bao gåm tÊt c¶ thµnh trÊn # th«n trang vµ bªn trong thËp ®¹i m«n ph¸i. ", 0); 
return 2 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n dông hé cßn thõa l¹i thêi gian 
-- script viet hoa By http://tranhba.com  local sparetime = getsparetime(); 
-- script viet hoa By http://tranhba.com  if (sparetime <= 0) then 
-- script viet hoa By http://tranhba.com  Say("<#> ng­¬i cßn thõa l¹i c¸ch tuyÕn bµy qu¶n kinh nghiÖm thêi gian lµ 0 phót , hoÆc lµ còng kh«ng lùa chän c¸ch tuyÕn bµy qu¶n kü n¨ng , xin/mêi lÇn n÷a x¸c nhËn sau sö dông n÷a nªn chøc n¨ng . ", 0); 
-- script viet hoa By http://tranhba.com  return 3 
-- script viet hoa By http://tranhba.com  end 

-- script viet hoa By http://tranhba.com  khi mét m¸y phôc vô khİ nh©n sè cña v­ît qua 800 ng­êi , lµ kh«ng cho phĞp nhµ ch¬i ë n¬i nµy thai phôc vô khİ bªn trong tiÕn hµnh c¸ch tuyÕn bµy qu¶n 
player_count = GetPlayerCount(); 
local nmax_count_limit = AEXP_OFFLINE_PLAYERCOUNT_LIMIT; 
if (mapid >= 835 and mapid <= 840) then 
nmax_count_limit = AEXP_OFFLINE_PLAYERCOUNT_SPECIAL;-- script viet hoa By http://tranhba.com 750 
end; 
if (player_count > nmax_count_limit) then 
Say("N¬i nµy tÊp nËp ån µo nh­ vËy lµm sao ®¹i hiÖp cã thÓ ñy th¸c, mêi ®i ®Õn c¸c khu vùc trèng v¾ng h¬n.",0); 
return 4 
end 


end 

function beginoffline() 
-- local bRet = check_if_can_offline() 
-- if bRet then 
-- return bRet 
-- end 
if (GetFightState() ~= 0) then 
Say("§¹i hiÖp kh«ng thÓ ë khu vùc nµy sö dông chøc n¨ng ñy th¸c, mêi ®¹i hiÖp ®Õn khu vùc cho phĞp ñy th¸c bao gåm: tÊt c¶ thµnh trÊn, th«n trang vµ bªn trong thËp ®¹i m«n ph¸i.", 0); 
return 2
end 
if (GetOnlineCommissionStatus() ~= 0) then 
	Talk(1, "", "ñy th¸c kh«ng thµnh c«ng!")
return 1 
end 
-- script viet hoa By http://tranhba.com  b¾t ®Çu c¸ch tuyÕn treo ky 
-- Bil_SetTask(2, 1)
-- OfflineLive(PlayerIndex); 
if GetLevel() < 10 then
	Talk(1, "", "Ng­êi ch¬i d­íi cÊp 10 kh«ng ®­îc phĞp ñy th¸c, mong ®¹i hiÖp th«ng c¶m!")
	return 1
end
bilAutoOfflineLiveMain()
end 

-- script viet hoa By http://tranhba.com  c¸i g× ®Òu kh«ng lµm hµm sè , cã thÓ nhiÒu ®Şa ph­¬ng ®iÒu dông ®Õn , söa ®æi ph¶i thêi ®iÓm xin chó ı 
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
local szSayCmd = " xin/mêi lùa chän ñy th¸c chøc n¨ng :"; 
for i = 1, nExpSkillCount do 
aryszExpSkill[i] = format("%s/#onSetUpgradeSkill(%d)",aryExpSkill[i][2],aryExpSkill[i][1]); 
end 
tinsert(aryszExpSkill, "Tr? l t¹c /judgecontion") 
Say(szSayCmd, getn(aryszExpSkill), aryszExpSkill); 
end 

-- script viet hoa By http://tranhba.com  thiÕt trİ c¸ch tuyÕn bµy qu¶n kü n¨ng 
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
