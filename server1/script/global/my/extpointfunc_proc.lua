QUESTKEY_TICKET = 488;					-- 银票的物品ID

function OnExtPointChange_Proc(nExtPointIndex, nChangeValue)
end

function OnPayYuanBao(nChangeValue)
end

function OnPayYinPiao(nChangeValue)
end

function LiguanLog(object)
end
	
function OnYearGift(nChangeValue)
end		


ExtFunTab=
{nil,
 nil, -- OnPayYuanBao,
 OnPayYinPiao,
 OnYearGift,
 nil,
 nil,
 nil,
 nil
};