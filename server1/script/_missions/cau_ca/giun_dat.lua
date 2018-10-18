IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")

local m_CauCa_GiunDat_ONLOADED = function(_NpcIdx)
	local nItemIndex = AddItemNoStack(6,1,4333,1,0,0,0)
	ITEM_SetExpiredTime(nItemIndex, FormatTime2Date(1 * 24 * 60 *60 + GetCurServerTime()))
	SyncItem(nItemIndex)
	DelNpc(_NpcIdx)
end

local m_CauCa_GiunDat_ONBREAK = function()
	return Msg2Player("Qu¸ tr×nh ®µo giun thÊt b¹i!")
end

function main()
	RestoreOwnFeature()
	local a = GetLastDiagNpc()
	return tbProgressBar:OpenByConfig(1, %m_CauCa_GiunDat_ONLOADED, {a}, %m_CauCa_GiunDat_ONBREAK, {})
end


























