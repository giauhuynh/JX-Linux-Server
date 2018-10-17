	-- TËng kim

	function TaskShedule()

	TaskName( "T≠¨ng D≠¨ng chi’n dﬁch (tËng kim)" );

	TaskInterval( 1440 );

	TaskTime( 14, 50 );

	TaskCountLimit( 0 );

	-- OutputMsg( "                           Chien truong Tong - Kim - 15h (14 : 50) " );

	end

function TaskContent()
	Battle_StartNewRound( 1, 1 );	-- GM÷∏¡Ó£¨∆Ù∂ØµÕº∂–¬’Ωæ÷
	Battle_StartNewRound( 1, 2 );	-- GM÷∏¡Ó£¨∆Ù∂Ø÷–º∂–¬’Ωæ÷
	Battle_StartNewRound( 1, 3 );	-- GM÷∏¡Ó£¨∆Ù∂Ø∏ﬂº∂–¬’Ωæ÷
	zMsg2SubWorld  = "<color=yellow>Chi’n tr≠Íng TËng - Kim<color> <color=green>Cao c p<color> Æ∑ Æ’n giÍ b∏o danh, c∏c anh hÔng hµo hi÷p h∑y nhanh ch©n Æ’n Ba L®ng Huy÷n g∆p l‘ quan Æ” b∏o danh, ThÍi gian b∏o danh lµ <color=pink>10<color> phÛt."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


