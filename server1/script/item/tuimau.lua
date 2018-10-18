Include("\\script\\battles\\battlehead.lua")


TOWNPORTAL_MAXCOUNT = 30

function main(nItemIdx)
	local n_param = tonumber(GetItemParam(nItemIdx,1)) + 1
	local itemname = "<color=blue>"..GetItemName(nItemIdx).."<color>"
	SetSpecItemParam(nItemIdx,1,n_param)
	SyncItem(nItemIdx)
	if (n_param >= TOWNPORTAL_MAXCOUNT) then
		RemoveItemByIndex(nItemIdx)
		Msg2Player("<#> "..itemname.."<#> Æ∑ sˆ dÙng h’t "..TOWNPORTAL_MAXCOUNT.."<#> l«n, vÀt ph»m bﬁ hÒy!")
	else
		Msg2Player("<#> "..itemname.."<#> SË l«n dÔng cﬂn lπi "..(TOWNPORTAL_MAXCOUNT - n_param).."<#> l«n")
	end
	motuimaune()
	return 1	
end;

function GetDesc( nItemIdx )
	local szDesc = ""
	local n_param = tonumber(GetItemParam( nItemIdx, 1 ))
	szDesc = szDesc..format("\nCﬂn sË l«n <color=green> %d <color> l«n", (TOWNPORTAL_MAXCOUNT - n_param));
	return szDesc;
end



function motuimaune()

	local totalcount =CalcFreeItemCellCount();
	if totalcount == 0 then 
                                                                                  Say("<color=yellow>ßπi hi÷p Æ∑ c„ Æ«y r≠¨ng m∏u.",0)
		return
	end	
	for k=1,totalcount do 		
	AddItem(1,2,0,5,0,0,0);
	end
end