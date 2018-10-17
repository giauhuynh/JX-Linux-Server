--����ͨ�����ű�(BlackBay.03.12.30)

Include([[\script\event\mid_autumn06\fairy_of_midautumn06.lua]]);
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

function main(sel)
	if bilNPCVanSuThong ~= 1 then
		return Msg2Player("<color=Orange>V�n s� th�ng: <color>H�m nay ta b�n, khi kh�c ng��i h�y ��n v�y!")
	end
	local tab_Content = {
		"d�ng 100000 l��ng b�c ��i l�y tin t�c m�t ng��i/Query1", 
		"d�ng 20000 l��ng b�c ��i l�y tin t�c m�t ng��i/Query2", 
		"d�ng 3000 l��ng b�c ��i l�y tin t�c m�t ng��i/Query3", 
		"th�i, ta kh�ng h�i/Nothing"
	};
	
	Say("Ta ch�nh l� v�n s� th�ng , kh�ng c� g� kh�ng bi�t . ng��i mu�n h�i c�i g� ?", getn(tab_Content), tab_Content);
end;

function Query1()
	if (GetCash() >= 100000) then
		QueryWiseMan("WisemanCallBack", "AbsentCallBack", 100000)
	else
		Nothing()
	end
end;

function Query2()
	if (GetCash() >= 20000) then
		QueryWiseMan("WisemanCallBack", "AbsentCallBack", 20000)
	else
		Nothing()
	end
end;

function Query3()
	if (GetCash() >= 3000) then
		QueryWiseMan("WisemanCallBack", "AbsentCallBack", 3000)
	else
		Nothing()
	end
end;

function Nothing()
	Talk(1, "", "Ng��i t��ng ta  n�i ��a sao?")
end;

--�˺���Ϊ�ɹ���ѯ��Ϣ�Ļص����������������Ͳ���˳������ı�
function WisemanCallBack(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank)
	if MapName == "" then
			Say("Th�t xin l�i , "..TargetName.." b�y gi� � khu v�c ��c bi�t, kh�ng bi�t v� tr� c� th� , nh� v�y ta c�ng ch� l�y 1 n�a s� ti�n th�i.",0)
			Pay(MoneyToPay / 2)
			return
	elseif (MoneyToPay == 3000) then
		Say("Ng��i n�y "..TargetName.." b�y gi� � <color=red> "..MapName.."<color> ng��i �i nhanh �i , n�u nh� h�n ��n ch� kh�c ta c�ng ch�o thua.",1,"�a t� /no")
	elseif (MoneyToPay == 20000) then
		Say("Ng��i n�y "..TargetName.." b�y gi� � <color=red> "..MapName.."<color>, v� tr� c� th� c� th� l� <color=red> ( "..nPosX..", "..nPosY..")<color>, ng��i n�u nh� mu�n t�m t�i ch� c�a h�n n�n nhanh m�t ch�t . ",1,"�a t� /no")
	elseif (MoneyToPay == 100000) then
		SexString = "Nam"
		if (nSex ~= 0) then
			SexString = "N�"
		end
		Say("Ng��i n�y "..TargetName..", ��ng c�p "..PlayerLevel..", Gi�i t�nh "..SexString..", V� tr� hi�n t�i l� <color=red>"..MapName.." ("..nPosX..", "..nPosY..")<color>, H�ng th� gi�i "..nWorldRank..". PK "..PKValue..". N�u nh� ng��i mu�n t�m t�i ch� c�a h�n n�n nhanh m�t ch�t . ",1,"�a t�/no")
	end
	Pay(MoneyToPay)
end;

--�˺���Ϊʧ�ܲ�ѯ(Ҳ���ǲ�����)��Ϣ�Ļص����������������Ͳ���˳������ı�
function AbsentCallBack(TargetName, MoneyToPay)
	Say("Ng��ng ng�ng , "..TargetName.." h�n b�y gi� ta kh�ng bi�t � ��u, ti�n ng��i ��a ta s� l�y 1 n�a",0)
	Pay(MoneyToPay / 2)
end;

function no()
end
