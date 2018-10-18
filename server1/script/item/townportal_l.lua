Include("\\script\\battles\\battlehead.lua")

TOWNPORTAL_MAXCOUNT = 1000

function main(nItemIdx)
	if (GetFightState() == 0 or IsDisabledUseTownP() == 1 or GetTaskTemp(200) == 1 ) or ( SubWorldIdx2ID( SubWorld ) >= 387 and SubWorldIdx2ID( SubWorld ) <= 395)then
		Msg2Player("HiÖn t¹i b¹n kh«ng thÓ sö dông bïa vÒ thµnh!");
		return 1
	end
	
	local W,X,Y = GetWorldPos();
	local nMapId = W;	
	for i = 1, getn(tbBATTLEMAP) do 
		if ( nMapId == tbBATTLEMAP[i] ) then
			Msg2Player("Lóc nµy b¹n kh«ng thÓ sö dông vËt phÈm nµy");
			return 1;
		end
	end
	local n_param = tonumber(GetItemParam(nItemIdx,1)) + 1
	-- local itemname = "<color=yellow>"..GetItemName(nItemIdx).."<color>"
	local itemname = "<color=0xa9ffe0>"..GetItemName(nItemIdx)..""
	SetSpecItemParam(nItemIdx,1,n_param)
	SyncItem(nItemIdx)
	if (n_param >= TOWNPORTAL_MAXCOUNT) then
		RemoveItemByIndex(nItemIdx)
		Msg2Player("<#> "..itemname.."<#> ®· sö dông"..TOWNPORTAL_MAXCOUNT.."<#> lÇn, kh«ng thÓ dïng ®­îc n÷a!")
	else
		Msg2Player("<#> "..itemname.."<#> cßn cã thÓ sö dông <color=yellow>"..(TOWNPORTAL_MAXCOUNT - n_param).."<#> <color>lÇn")
	end
	UseTownPortal();
	return 1	
end;

function GetDesc( nItemIdx )
	local szDesc = ""
	local n_param = tonumber(GetItemParam( nItemIdx, 1 ))
	szDesc = szDesc..format("\n<color=Green>Sö dông lËp tøc ®­a b¹n trë vÒ n¬i l­u r­¬ng, ®­îc phÐp sö dông<color=yellow> %d <color>lÇn n÷a.", (TOWNPORTAL_MAXCOUNT - n_param));
	return szDesc;
end