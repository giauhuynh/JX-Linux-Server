	TONGWAR_LGTYPE = 10

	TONGWAR_LGMTASK_JOB = 1

	LOGFILE = "relay_log\\tongwar.log"

	function TaskShedule()

	-- thi�t tr� ph��ng �n t�n g�i

	TaskName( "Tham gia v� l�m �� nh�t bang tranh �o�t chi�n ")

	-- ch� ch�p h�nh m�t l�n

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

	-- thi�t tr� x� �o�n th�nh vi�n tin t�c (vai danh, ch�c v�, x� �o�n lo�i h�nh, x� �o�n t�n g�i)

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

	-- n�u v� nil ho�c 0, ph�n h�i 1, b�ng kh�ng ph�n h�i 0

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


