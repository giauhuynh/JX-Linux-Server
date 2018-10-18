-- COIN=10
COIN=1

function OnExtPointChange_Proc(nExtPointIndex, nChangeValue)
	if (ExtFunTab[nExtPointIndex + 1] == nil) then
		--print("Error!!!!!!!!, No ExtPoint Fun On"..nExtPointIndex)
		--WriteGoldLog("Importacne Error!!!!!!!!, No ExtPoint CallFun On"..nExtPointIndex..", "..GetAccount().." "..GetName().." nExtPointIndex"..nExtPointIndex.." nChangeValue"..nChangeValue, 0, 0, 0, 0)
		return 0;
	end
	ExtFunTab[nExtPointIndex + 1](nChangeValue)
	return 1;
end

function OnPayYuanBao(nChangeValue)
	nValue = -nChangeValue
	if (nValue > 0) then
	
	local a = nValue
	
	SetTask(5930, GetTask(5930) - nValue)
	
		
		if (nValue <= 100) then
			AddStackItem(nValue,4,417,1,1,0,0,0)
		else
			while ((nValue - 100) >= 0) do
				AddStackItem(100,4,417,1,1,0,0,0)
				nValue = nValue - 100
			end
			
			if nValue > 0 then
				AddStackItem(nValue,4,417,1,1,0,0,0)
			end
		end
		
		-- SetItemBindState(Bil_itIdex,-2);
		SaveNow(); -- ¡¢º¥¥Ê≈Ã
		-- WriteGoldLog( GetAccount().."("..GetName()..") MAKE a SILVER with a LOW CARD", 0, 1, 0, 0 );
		WriteGoldLog( GetAccount().."("..GetName()..") MAKE a SILVER with a LOW CARD", 0, a, 0, 0 );
		local nCurValue = GetExtPoint(1)
		WriteLog(date("%Y%m%d %H%M%S").."\t".."RÛt Ti“n ßÂng"..GetAccount().."\t"..GetName().."\t".."RÛt "..COIN.." Ti“n ßÂng cﬂn lπi "..nCurValue)
 		Say("§ng chÒ ti“n trang: ß©y lµ "..a.." Ti“n ßÂng cÒa kh∏ch quan! Xin nhÀn l y!", 0)
		Msg2Player( "Bπn nhÀn Æ≠Óc <color=yellow>"..a.." Ti“n ßÂng !");
		print(".")
		print("-------------------------------------------------------------------------------------------------------------")
		print("Tai khoan: "..GetAccount()..", Nhan vat: "..GetName().." vua rut ra "..a.." Tien Dong")
		print("-------------------------------------------------------------------------------------------------------------")
		print(".")
 	elseif( nValue > 1) then
			WriteGoldLog(GetAccount().."("..GetName()..") PAY EXPOINT ERROR ON YUANBAO , MUST PAY(1) BUT PAY("..nValue..")!!!!", 0,0,0,0)
			Msg2Player("Thao t∏c Ti“n ßÂng bﬁ lÁi, xin li™n h÷ GM Æ” gi∂i quy’t!")
	else
			WriteGoldLog(GetAccount().."("..GetName()..") PAY EXPOINT ERROR ON YUANBAO PAYVALUE <= 0", 0,0,0,0)
			Say("Xin lÁi! Kh∏ch quan kh´ng c„ gÎi Ti“n ßÂng tπi bÊn ti÷m. ", 0)
	end
end

ExtFunTab=
{
	nil,
 	OnPayYuanBao,
 	nil,
 	nil,
 	nil,
 	nil,
 	nil,
 	nil
};
