-- NPC Th�m C�u - BLH
-- GiaKaKa - 22/4/2014
--suyu
-- Update: Dan_Deng(2003-08-10)
--ע�⣺Խ��ֻ��һ��Ԫ����ϵ�����ҷǵ���Ԫ�������ƽн�Ԫ����ǧ��ע�⣬����ӷ 343

-- \script\__\npc_blh_tham_cuu.lua

function main()
	UTask_world20 = GetTask(48)
	if ((CheckStoreBoxState(1) == 0 or CheckStoreBoxState(2) == 0 or CheckStoreBoxState(3) == 0) and  UTask_world20 == 1) then			-- ���Ϣ����ӵ������������򸽼Ӵ�����
		Say("Ta c� 1 r��ng th�n k�, kh�ng nh�ng gi� ���c nhi�u v�t ph�m m� c�n c� th� kh�a l�i an to�n. C� trung nguy�n ch� m�nh ta c�. C� mu�n xem th� kh�ng?",4,"�� ta th� xem/buy_addibox", "H�i th�m m�t ch�t/task_ring","V� vi�c m� r�ng r��ng/box_help", "Kh�ng h�ng th�/no")
	elseif (UTask_world20 == 1) then
		task_ring()
	elseif (CheckStoreBoxState(1) == 0 or CheckStoreBoxState(2) == 0 or CheckStoreBoxState(3) == 0) then
		Say("Ta c� 1 r��ng th�n k�, kh�ng nh�ng gi� ���c nhi�u v�t ph�m m� c�n c� th� kh�a l�i an to�n. C� trung nguy�n ch� m�nh ta c�. C� mu�n xem th� kh�ng?",3,"�� ta xem th�/buy_addibox", "V� vi�c m� r�ng r��ng/box_help", "Kh�ng h�ng th�/no")
	else
		other_chat()
	end
end;

function task_ring()
	UTask_world20 = GetTask(48);
	if (UTask_world20 == 1) then
		Say("Mu�n mua gi�m c� n��ng �y c�a h�i m�n �? H�ng h�a c�n l�i c�a ta kh�ng nhi�u, ch� c�n l�i ��i b�ng tai v�ng n�y l� kh� r�, ch� c� 200 l��ng th�i. ",2,"Mua/yes", "T�n g�u/other_chat","Kh�ng mua/no")
	end
end

function other_chat()
	Talk(3,"", "Ta t� T� Xuy�n ��n, tr�n ���ng c� r�t nhi�u th� ph�, th�t l� nguy hi�m! ","Th�t kh�ng th� ng� ���c ta c� th� ��n khu v�c ��ng ��nh h� n�y m� kh�ng h� b� c��p! Ng��i th�y c� l� kh�ng? ","Ta nghe ng��i ta n�i m�i bi�t, � ��y kh�ng ch�u s� qu�n l� c�a quan ph�, m� t� m�t ph�i t�n Thi�n V��ng Bang g� ��, h�n g� � ��y th�t y�n b�nh! ")
end

function yes()
	if(GetCash() >= 200)then
		Talk(1,"","Khuy�n tai �� g�i l�i r�i! Xin gi� l�y")
		Pay(200);
		AddEventItem(181);
		Msg2Player("B�n nh�n ���c m�t ��i b�ng tai");
		AddNote("B�n mua ���c m�t ��i b�ng tai � ch� Th��ng Nh�n �em v� giao cho A Ph��ng")
--		SetTask(48, 2);
	else
		Talk(1,"","Kh�ch quan kh�ng �� ti�n, khi n�o �� h�y quay l�i")
	end
end;

function buy_addibox()
		local szMsg = 
		{
				"Th�m C�u: ��y l� chi�c r��ng ���c l�m t� �� san h� xanh, c� th� cho ng��i b� th�m v�t ph�m, c�n c� th� kh�a l�i m�t c�c an to�n",	--1
				"D�ng 50 Xu �� mua r��ng 2/#buy_addibox_yes(50)",	--2
				"��t qu�! L�n sau s� mua/no",			--3
				"Ta mu�n m� th�m r��ng th� 3/#Bil_iWantOpenStoreBox(2)",			--4
				"Ta mu�n m� th�m r��ng th� 4/#Bil_iWantOpenStoreBox(3)",			--5
		};
		Say(szMsg[1], 4, szMsg[2], szMsg[4], szMsg[5], szMsg[3]);
end

function Bil_iWantOpenStoreBox(BoxNum)
	local biCoin = 0
	if BoxNum == 2 then
		biCoin = 50
	elseif BoxNum == 3 then
		biCoin = 50
	else
		print("False! Bil_iWantOpenStoreBox - "..BoxNum)
		return
	end
	if CheckStoreBoxState(BoxNum) ~= 0 then
		return Talk(1,"","Ch�ng ph�i huynh �� �� nh� ta m� r��ng th� "..(BoxNum+1).." r�i sao?")
	else
		if CheckStoreBoxState(BoxNum - 1) == 0 then
			return Talk(1, "", "�� m� ���c r��ng th� "..(BoxNum+1).." ��i hi�p c�n ph�i m� r��ng th� "..BoxNum.." tr��c!")
		end
	end
	
	local nMyCoinCount = CalcEquiproomItemCount(4,417,1,-1)
	if (nMyCoinCount < biCoin) then
		return Talk(1,"","Tr�n ng��i c�a quan kh�ch kh�ng c� �� "..biCoin.." Ti�n ��ng, khi n�o thu th�p �� h�y ��n t�m ti�u �� �� m� th�m r��ng!")
	else
		if (biCoin ~= 0 and nMyCoinCount >= biCoin) then
			Say("�� m� r��ng th� <color=yellow>"..(BoxNum+1).."<color> chi ph� l�m r��ng r�t t�n k�m, c�n ��n <color=Orange>"..biCoin.."<color> Ti�n ��ng, ��i hi�p ch�c ch�n mu�n m� r��ng ch�!", 2, "Ta c�n nh�c k� r�i!/#Bil_iWantOpenStoreBox_Sure("..biCoin..", "..BoxNum..")", "Tr�i! ��t v�y sao, �� ta suy ngh� l�i/no")
		else
			print("False! BoxNum: "..BoxNum..", nMyCoinCount: "..nMyCoinCount.."")
		end
	end
end

function Bil_iWantOpenStoreBox_Sure(biCoin, BoxNum)
	local nMyCoinCount = CalcEquiproomItemCount(4,417,1,-1)
	if nMyCoinCount < biCoin then
		return
	end
	ConsumeEquiproomItem(biCoin,4,417,1,-1)
	OpenStoreBox(BoxNum)
	SaveNow(); 
	Talk(1,"","Xin ch�c m�ng! <color=yellow>r��ng ch�a �� c�a b�n �� ���c m� r�ng.<color>")
	Msg2Player("Xin ch�c m�ng! <color=yellow>r��ng ch�a �� c�a b�n �� ���c m� r�ng.<color> R��ng <color=yellow> "..(BoxNum+1).."")
end

function buy_addibox_yes(nNedCount)
	if (nNedCount == 0 or nNedCount == nil) then
		return
	end;
	if CheckStoreBoxState(1) ~= 0 then
		return Talk(1,"","Ch�ng ph�i huynh �� �� nh� ta m� r��ng th� 2 r�i sao?")
	end
	local nCount = CalcEquiproomItemCount(4,417,1,-1)
	
	if (nCount < nNedCount) then
		Talk(1,"","V� kh�ch quan n�y l�i kh�ng �em theo Ti�n ��ng r�i!, khi n�o c� th� h�y t�i ��y t�i h� s� l�m cho v� c� trung nguy�n n�y ch� c� ta m�i l�m ���c th�i!")
		return 1;
	end
	
	-- DelItemEx( 343 );
	ConsumeEquiproomItem(nNedCount,4,417,1,-1)

	OpenStoreBox(1)
	
	SaveNow(); -- ��������
	  	
	Talk(1,"","Xin ch�c m�ng! <color=yellow>r��ng ch�a �� c�a b�n �� ���c m� r�ng.<color>")
	Msg2Player("Xin ch�c m�ng! <color=yellow>r��ng ch�a �� c�a b�n �� ���c m� r�ng.<color>")
end


function box_help()
	str=
	{
	"<#>M�i nh�n v�t ch� mua ���c m�t ch�c n�ng m� r�ng r��ng th�i. N� s� theo b�n su�t, g�m c� 60 �, ch�c n�ng v� nguy�n l� s� d�ng gi�ng nh� r��ng ban ��u ch� kh�ng th� c�t gi� ti�n b�c. ",
	"<#>Sau khi mua ch�c n�ng m� r�ng r��ng, b�n nh�n ���c m�t m�t m� d�ng �� b�o v� c�c trang b� tr�n ng��i c�ng nh� trong r��ng",
	"<#>Sau khi nh�n v�o m�t m� s� kh�a l�i, c�n trong t�nh tr�ng kh�a, trang b� tr�n ng��i kh�ng ���c m�c l�n c�ng nh� c�i b�, nh�ng n� s� kh�ng �nh h��ng ��n ch�c n�ng s�n c� (Nh� �i�m s� PK qu� cao th� s� r�i c�c trang b� tr�n ng��i). ",
	"<#>Vi�c thi�t l�p m�t m�: nh�n v�o giao di�n r��ng ch�a �� n�i thi�t l�p m�t m�, s� hi�n ra m�t � nh�, tr�n �� c� t� 0-9 s� �� nh�p v�o. ",
	"<#>L�n ��u ti�n thi�t l�p m�t m� ta nh�n v�o h�ng ��, c�n n�u b�n �� thi�t l�p qua khi nh�n v�o s� l� ch�nh s�a m�t m�. ",
	"<#>Ta �� h��ng d�n xong r�i, n�u c�n g� tr� gi�p th� h�y quay l�i t�m ta nh�. ",
	};
	Talk(6,"",str[1],str[2], str[3], str[4], str[5], str[6]);
end
	
	
function no()
end;
