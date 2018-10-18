--zero 20070713 木牌召唤
--任务变量 前16bit做木牌 前8bit做日期，记录日，后8bit记录次数
--           后16bit做铜牌 前8bit做日，后8bit次数
--           
--           使用GetByte(TaskValue,1)取木牌的日期
--               GetByte(TaskValue,2)取木牌使用次数
--               GetByte(TaskValue,3)取铜牌日期
--               GetByte(TaskValue,4)取铜牌使用次数
--设置任务变量方法
--               SetByte(TaskValue,i,n) 其中i表示第几字节，n表示日期或次数 10进制
Include( "\\script\\event\\mengjiang2007\\callboss.lua" )
Include("\\script\\lib\\pay.lua");
mupai_Task=1826;
function main( nItemIdx )
	local TaskValue=GetTask(mupai_Task);
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	-- if(nDate>20070820) then
		-- Say("L謓h b礽  qu� h筺 s� d鬾g, b� m蕋 hi謚 l鵦!",0)
		-- return 0;
	-- end
	if( IsCharged() == 0) then
		Say("Th藅 ng ti誧, ch� c� ngi ch琲  n筽 th� m韎 c� th� s� d鬾g.",0);
		return 1; 
	end
	if( GetLevel() <90 ) then
		Say("Th藅 ng ti誧, ch� c� ngi ch琲 c蕄 90 tr� l猲 m韎 c� th� s� d鬾g.",0);
		return 1;
	end
	nDate = tonumber(GetLocalDate("%d"));
	if(nDate ~= GetByte(TaskValue,1) ) then --不是今天次数恢复
		TaskValue=SetByte(TaskValue,1,nDate); --设置木牌日期 第1字节
		TaskValue=SetByte(TaskValue,2,40);    --恢复木牌次数40 第2字节
		SetTask(mupai_Task,TaskValue); -- 设置任务任务变量
	end
	local temp_count=GetByte(TaskValue,2);
	if(temp_count > 0 ) then --次数大于0次
		if( CallBoss(1) == 0) then
			TaskValue=SetByte(TaskValue,2,temp_count-1);
			SetTask(mupai_Task,TaskValue); --设置任务变量
			return 0;
		else
			return 1;
		end			 
	else
		Say("H玬 nay  s� d鬾g 40 M閏 B礽 r錳! H穣 i ng祔 mai m韎 c� th� ti誴 t鬰 s� d鬾g!",0);
		return 1;
	end
	
end

function GetDesc(nItem)

end