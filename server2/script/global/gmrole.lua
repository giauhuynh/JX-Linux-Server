Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\functionlib.lua")

tbGmRole = {}
tbGmRole.nPak = curpack()
tbGmRole.tbAccount = 
{
	[""] = 
	{
		""
	}
}
tbGmRole.tbSkill = 
{
	-- 732,
	-- 733
}

function tbGmRole:CheckAccountAndRoleName()
end

function tbGmRole:Change2GM()
end

function tbGmRole:GMC_Menu()
end

function tbGmRole:NewWorld(szPos)
end

function tbGmRole:FindRole(szName)
end

function tbGmRole:Finded(szTargetName, szMapName, nSubWorldID, nPosX, nPosY)
end


function tbGmRole_Finded(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect)
end

function tbGmRole_UnFind(TargetName, MoneyToPay)
end