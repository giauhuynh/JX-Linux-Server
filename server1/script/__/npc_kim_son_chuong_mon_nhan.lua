
-- \script\__\npc_kim_son_chuong_mon_nhan.lua

Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
function about_tong() 
Talk(6,"","Nhµ ng­¬i hái thµnh lËp bang héi cã ®iÒu kiÖn g× , tíi ®©y ta tõ tõ nãi cho ng­¬i nghe !","§Çu tiªn ng­¬i nhÊt ®Şnh ph¶i xuÊt s­, tiÕp theo ng­¬i ko lµ thµnh viªn cña bang h«i nµo kh¸c!","§¹t tíi nh÷ng yªu cÇu nµy ng­¬i chØ cÇn ®Õn chiÕn tr­êng tèng kim ®¹t ®­îc mét thanh nh¹c v­¬ng kiÕm lÊy c¸i nµy lµm tİn vËt bang chñ lµ ®­îc råi . nÕu nh­ ng­¬i thµnh lËp bang ph¸i cã nhiÒu ng­êi ñng hé th× cã thÓ vËn hµnh bang héi chİnh thøc","§Çu tiªn ng­¬i ph¶i cã n¨ng lùc , 3 ngµy sau khi lËp bang İt nhÊt ph¶i t×m ®­îc 16 ng­êi cïng ng­¬i chİ thó t­¬ng ®Çu gia nhËp bang héi, nÕu nh­ kh«ng ®ñ ®iÒu kiÖn lËp tøc gi¶i t¸n bang héi kh«ng cã biÖn ph¸p kh¸c , c¸i nµy cã thÓ gäi lµ 3 ngµy kh¶o nghiÖm kú'."," ë bang héi cã 16 ng­êi sau kh¶o nghiÖm giang hå sÏ c«ng nhËn bang  , nÕu nh­ 3 h«m sau kh«ng ®ñ 16 ng­êi giang hå còng kh«ng thõa nhËn bang héi ng­¬i","Cuèi cïng , thµnh lËp bang héi ph¶i cã l­îng lín tiÒn b¹c . cè g¾ng ®¹t tíi môc tiªu ®i !") 
end 

function main() 
	Tong_name,oper = GetTong() 
	
	if GetTask(5883) == 2308 then
		if Tong_name == "" or Tong_name == nil then
			return Talk(1, "Direct_CreateTong", "VÉn ch­a quyÕt ®Şnh ®­îc bang héi cña m×nh sao?")
		else
			SetTask(5883, 0)
		end
	end
	
	if Tong_name == "" or Tong_name == nil then
		if (GetCamp() == 4) and (GetLevel() >= 90) and (HaveItem(195) == 1)  then
			Say("<color=Orange>Kim s¬n ch­ëng m«n nh©n<color>: L¹i cã ng­êi ®Õn t×m ta ph¶i ch¨ng lµ v× bang héi , b¾t ®Çu chuyÖn khëi nghiÖp giang hå !",2,"B¾t ®Çu x©y dùng bang /create_pay","Chê mét chót /wait_a_moment")
		else
			Say("§Ó thµnh lËp bang héi, vŞ thiÕu hiÖp cÇn ph¶i cã <enter><color=yellow>1 Nh¹c V­¬ng KiÕm, ®¼ng cÊp trªn 90, mang theo 200   v¹n l­îng vµ ®· xuÊt s­<color>, ®ñ ®iÒu kiÖn h·y ®Õn ®©y gÆpta!")
		end
	else
		Say("<color=Orange>Kim s¬n ch­ëng m«n nh©n<color>: VŞ thiÕu hiÖp ®Õn ®©y t×m ta cã viÖc g× kh«ng?", 2, "T×m hiÓu ph­¬ng ph¸p thµnh lËp bang héi/about_tong", "Chµo ngµi ta ®i ®©y./wait_a_moment")
	end
end 

function create_pay() 
Say("<color=Orange>Kim s¬n ch­ëng m«n nh©n<color>: nh­ vËy , ng­¬i chØ cÇn cã ®Çy ®ñ tiÒn b¹c ®Ó cho bang ph¸i cã thÓ ph¸t triÓn lªn lµ ®­îc råi , nãi thİ dô nh­ cã c¸ 200 v¹n l­îng b¹c ®i . ",2,"Kh«ng thµnh vÊn ®Ò , ta ®· cã 200 v¹n l­îng b¹c /create_pay_yes","Qu¸ phİ tiÒn , İt mét chót cã ®­îc hay kh«ng /create_pay_no") 
end 

function create_pay_yes()
	if (GetCash() >= 2000000) then 
		Pay(2000000) 
		DelItem(195) 
		SetTask(99,1) 
		SetTask(5883,2308) 
		Direct_CreateTong() 
	else 
		Talk(1,"","<color=Orange>Kim s¬n ch­ëng m«n nh©n<color>: muèn thµnh lËp bang héi ph¶i cã nÒn kinh tÕ æn ®Şnh, khi nµo cã ®ñ tiÒm lùc kinh tÕ th× h·y quay l¹i t×m ta.") 
	end 
end 

function create_pay_no() 
	Talk(1,"","<color=Orange>Kim s¬n ch­ëng m«n nh©n<color>: muèn thµnh lËp bang héi ph¶i cã nÒn kinh tÕ æn ®Şnh, khi nµo cã ®ñ tiÒm lùc kinh tÕ th× h·y quay l¹i t×m ta, xem ra nhµ ng­¬i vÉn ch­a muèn lËp bang råi.") 
end 

function Direct_CreateTong() 
	CreateTong(1) 
end 

function wait_a_moment() 
end 

function gettongownercity() 
local strTongName = GetTongName() 
if (strTongName == nil or strTongName == "") then 
return 0 
end 
local strCityTongName 
for nCityID=1, 7 do 
strCityTongName = GetCityOwner(nCityID) 
if (strCityTongName ~= "" and strCityTongName == strTongName) then 
return nCityID 
end 
end 
return 0 
end 

function check_award_condition(city_index, show_talk) 
if (city_index == 0) then 
if (show_talk == 1) then 
Talk(1, "", "<#> chØ cã chiÕm lÜnh thµnh phè ®İch bang ph¸i míi cã thÓ dÉn t­ëng , dÉn huynh ®Ö cña m×nh ®i chiÕm lÜnh mét tßa thµnh ®i !") 
end 
return 0 
end 

local tong_master = GetTongMaster() 
local player_name = GetName() 
if (tong_master ~= player_name) then 
if (show_talk == 1) then 
Talk(1, "", "<#> chØ cã bang chñ míi cã thÓ nhËn lÊy bang ph¸i t­ëng th­ëng , gäi bang chñ tíi ®©y ") 
end 
return 0 
end 

local wday = tonumber(date("%w")) 
local hour = tonumber(date("%H")) 
if (wday ~= 1 or hour < 9 or hour >= 20) then 
if (show_talk == 1) then 
Talk(1, "", "<#> chØ cã mçi tuÇn mét 9:00~20:00 míi lµ dÉn t­ëng thêi gian , ®Õn lóc ®ã trë l¹i ®i ") 
end 
return 0 
end 

local date = tonumber(date("%Y%m%d")) 
if (date == get_citybonus_date(city_index)) then 
if (show_talk == 1) then 
Talk(1, "", "<#> tuÇn nµy ®İch phÇn th­ëng ®· lÜnh , cuèi tuÇn trë l¹i ®i . ") 
end 
return 0 
end 

return 1 
end 

function talk_citytong_award() 
-- local city_index = gettongownercity() 
-- if (check_award_condition(city_index, 1) == 1) then 
-- Say("<#> nhËn lÊy thµnh chñ bang héi t­ëng th­ëng ", 
-- 2, 
-- "<#> ta muèn dÉn 60 c¸ /#take_tong_award(60)", 
-- "<#> ta t¹m thêi kh«ng dÉn /nothing") 
-- end 
end 

-- script viet hoa By http://tranhba.com  nhËn lÊy bao tiÒn l× x× 
function take_tong_award(count) 
-- script viet hoa By http://tranhba.com  mét bao tiÒn l× x× chiÕm mét c¸ch tö 
-- if (CalcFreeItemCellCount() < count) then 
-- Talk(1, "", "<#> l­ng cña ng­¬i tói ®Çy , söa sang l¹i sau n÷a dÉn t­ëng .") 
-- return 
-- end 

-- local city_index = gettongownercity() 
-- if (check_award_condition(city_index, 0) == 0) then 
-- return 
-- end 

-- local today = tonumber(date("%Y%m%d")) 
-- set_citybonus_date(city_index, today) 
-- script viet hoa By http://tranhba.com  cho bao tiÒn l× x× 
-- for i = 1, count do 
-- AddItem(6,1,1535,1,1,1) 
-- end 
-- local msg = date("[%y-%m-%d %H:%M] ") .. GetAccount() .. "(".. GetName().. ") get " .. count .. " <#> ®¹i bao tiÒn l× x× from kim s¬n ch­ëng m«n nh©n " 
-- WriteLog(msg); 
-- Talk(1, "", "<#> ®©y lµ ng­¬i cöa ®İch phÇn th­ëng , cÇm ®i ®i ") 
end 
