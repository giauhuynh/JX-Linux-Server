function main()
	Say("Qu�n nhu quan th� th�nh: Ch� ta c� nhi�u lo�i d��c ph�m qu�, nh�ng v�t ph�m s� d�ng chi�n tr��ng.ng��i mu�n mua th� g�?", 2, "Mua d��c ph�m/nhanmausieunhanhcity", "H�y b� /OnCancel")
end

function nhanmausieunhanhcity()
	local totalcount =CalcFreeItemCellCount();
	if totalcount == 0 then 
                                                                                  Say("<color=yellow>��i hi�p �� c� ��y r��ng m�u.",0)
		return
	end	
	for k=1,totalcount do 		
	AddItem(1,2,0,5,0,0,0,0);
	end
end

function OnCancel()
end
