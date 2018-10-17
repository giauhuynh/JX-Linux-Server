Include("\\script\\battles\\battlehead.lua")


TOWNPORTAL_MAXCOUNT = 30

function main(nItemIdx)
	local n_param = tonumber(GetItemParam(nItemIdx,1)) + 1
	local itemname = "<color=blue>"..GetItemName(nItemIdx).."<color>"
	SetSpecItemParam(nItemIdx,1,n_param)
	SyncItem(nItemIdx)
	if (n_param >= TOWNPORTAL_MAXCOUNT) then
		RemoveItemByIndex(nItemIdx)
		Msg2Player("<#> "..itemname.."<#> �� s� d�ng h�t "..TOWNPORTAL_MAXCOUNT.."<#> l�n, v�t ph�m b� h�y!")
	else
		Msg2Player("<#> "..itemname.."<#> S� l�n d�ng c�n l�i "..(TOWNPORTAL_MAXCOUNT - n_param).."<#> l�n")
	end
	motuimaune()
	return 1	
end;

function GetDesc( nItemIdx )
	local szDesc = ""
	local n_param = tonumber(GetItemParam( nItemIdx, 1 ))
	szDesc = szDesc..format("\nC�n s� l�n <color=green> %d <color> l�n", (TOWNPORTAL_MAXCOUNT - n_param));
	return szDesc;
end



function motuimaune()

	local totalcount =CalcFreeItemCellCount();
	if totalcount == 0 then 
                                                                                  Say("<color=yellow>��i hi�p �� c� ��y r��ng m�u.",0)
		return
	end	
	for k=1,totalcount do 		
	AddItem(1,2,0,5,0,0,0);
	end
end