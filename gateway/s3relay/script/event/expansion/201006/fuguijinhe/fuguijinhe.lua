Include("\\script\\lib\\remoteexc.lua")
Include("\\script\\sharedata_key.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\lib\\baseclass.lua")
Include("\\script\\lib\\common.lua")

tbBetInfo = {}

tbBetInfo.nTotalBet = 0;
tbBetInfo.tbNormalNum = {};
tbBetInfo.tbSpecNum = {};

function AddBetCount(ParamHandle, ResultHandle)
end

function tbBetInfo:AddBetCount(nCount)
end

function tbBetInfo:SetTotalBetCount(nCount)
end

function tbBetInfo:GetBetCount()
end

function tbBetInfo:ClearNumInfo()
end

function tbBetInfo:IsNumExist(nValue)
end

function tbBetInfo:GenNumber()
end

function LoadBetInfo()
end

function SendBetCount()
end

function SendBetNumber()
end

function SaveBetInfo()
end
