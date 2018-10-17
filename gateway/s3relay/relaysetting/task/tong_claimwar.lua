	-- bang héi tuyªn chiÕn, chóa hµm sè

	function ClaimWar(nClaimWarSrcTongID, nClaimWarDestTongID, nLeftMinutes)

	local strSrcTongName = GetTongNameByID(nClaimWarSrcTongID);

	local strDestTongName = GetTongNameByID(nClaimWarDestTongID);

	local szMsg = format( "Bang héi %s ? ®· tuyªn chiÕn h­íng bang héi %s, thêi gian chiÕn ®Êu cßn l¹i %d phót.", strSrcTongName, strDestTongName, nLeftMinutes);

	local szEndMsg = format( "Bang héi %s kÕt thóc tuyªn chiÕn h­íng bang héi %s.", strSrcTongName, strDestTongName);

	if (nLeftMinutes == 0) then

	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szEndMsg));

	else

	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg));

	end;

	end


