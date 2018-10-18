function main()
	Say("Qu©n nhu quan thñ thµnh: Chç ta cã nhiÒu lo¹i d­îc phÈm quý, nh÷ng vËt phÈm sö dông chiÕn tr­êng.ng­¬i muèn mua thø g×?", 2, "Mua d­îc phÈm/nhanmausieunhanhcity", "Hñy bá /OnCancel")
end

function nhanmausieunhanhcity()
	local totalcount =CalcFreeItemCellCount();
	if totalcount == 0 then 
                                                                                  Say("<color=yellow>§¹i hiÖp ®· cã ®Çy r­¬ng m¸u.",0)
		return
	end	
	for k=1,totalcount do 		
	AddItem(1,2,0,5,0,0,0,0);
	end
end

function OnCancel()
end
