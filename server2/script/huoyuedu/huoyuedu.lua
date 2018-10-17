

tbHuoYueDu = {}
tbHuoYueDu.szFilePath = "\\settings\\huoyuedu\\huoyuedu.txt"
tbHuoYueDu.nMaxHuoYueDu = 100	
tbHuoYueDu.TSK_TotalHuoYueDu = 2880 
tbHuoYueDu.TSK_Award = 2882 
OPENED = 1	
CLOSED = 2  
STATE = OPENED

tbActivity2ID = {}

function tbHuoYueDu:LoadTable(szPath)
end

function tbHuoYueDu:AddHuoYueDu(szActivity)
end

function tbHuoYueDu:AddTaskDaily(nActivityId)
end

function tbHuoYueDu:GetTaskDailyCount(nActivityId)
end

function tbHuoYueDu:AddHuoYueDuAll(tbPlayer, szActivity)
end

function tbHuoYueDu:CheckTimes(nActivityId)
end

function tbHuoYueDu:ClearAll()
end

tbHuoYueDu:LoadTable(tbHuoYueDu.szFilePath)

