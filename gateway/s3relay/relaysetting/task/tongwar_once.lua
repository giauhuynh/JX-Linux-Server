	TONGWAR_LGTYPE = 10

	TONGWAR_LGMTASK_JOB = 1

	LOGFILE = "relay_log\\tongwar.log"

	function TaskShedule()

	-- thiÕt trÝ ph­¬ng ¸n tªn gäi

	TaskName( "Tham gia vâ l©m ®Ö nhÊt bang tranh ®o¹t chiÕn ")

	-- chØ chÊp hµnh mét lÇn

	TaskInterval( 244000 )

	TaskCountLimit( 1 )

	end

	function TaskContent()

	for i = 1, 7 do

	local strCityName = GetCityAreaName(i)

	local strCityTongName = GetCityOwner(i)

	if (FALSE(LG_GetLeagueObj(TONGWAR_LGTYPE, strCityName))) then

	nLeagueID = LG_CreateLeagueObj()

	LG_SetLeagueInfo(nLeagueID, TONGWAR_LGTYPE, strCityName)

	LG_ApplyAddLeague(nLeagueID, "", "")

	LG_FreeLeagueObj(nLeagueID)

	if (not FALSE(strCityTongName))then

	nMemberID = LGM_CreateMemberObj()

	-- thiÕt trÝ x· ®oµn thµnh viªn tin tøc (vai danh, chøc vÞ, x· ®oµn lo¹i h×nh, x· ®oµn tªn gäi)

	LGM_SetMemberInfo(nMemberID, strCityTongName, 1, TONGWAR_LGTYPE, strCityName)

	LGM_ApplyAddMember(nMemberID, "", "")

	LGM_FreeMemberObj(nMemberID)

	LG_ApplySetMemberTask(TONGWAR_LGTYPE, strCityName, strCityTongName, TONGWAR_LGMTASK_JOB, 1)

	end

	WriteStringToFile(LOGFILE, strCityName.."\t ".. strCityTongName.."\n ")

	end

	end

	end

	function _msg(... )

	local str = ""

	for i = 1, getn(arg) do

	str = str.."".. arg[i]

	end

	OutputMsg(str)

	end

	-- nÕu v× nil hoÆc 0, ph¶n håi 1, b»ng kh«ng ph¶n håi 0

	function FALSE(value)

	if (value == 0 or value == nil or value == "") then

	return 1

	else

	return nil

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


