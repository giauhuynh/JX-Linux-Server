--万事通样例脚本(BlackBay.03.12.30)

Include([[\script\event\mid_autumn06\fairy_of_midautumn06.lua]]);
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

function main(sel)
	if bilNPCVanSuThong ~= 1 then
		return Msg2Player("<color=Orange>V筺 s� th玭g: <color>H玬 nay ta b薾, khi kh竎 ngi h穣 n v藋!")
	end
	local tab_Content = {
		"d飊g 100000 lng b筩 i l蕐 tin t鴆 m閠 ngi/Query1", 
		"d飊g 20000 lng b筩 i l蕐 tin t鴆 m閠 ngi/Query2", 
		"d飊g 3000 lng b筩 i l蕐 tin t鴆 m閠 ngi/Query3", 
		"th玦, ta kh玭g h醝/Nothing"
	};
	
	Say("Ta ch輓h l� v筺 s� th玭g , kh玭g c� g� kh玭g bi誸 . ngi mu鑞 h醝 c竔 g� ?", getn(tab_Content), tab_Content);
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
	Talk(1, "", "Ngi tng ta  n鉯 a sao?")
end;

--此函数为成功查询信息的回调函数，参数个数和参数顺序不允许改变
function WisemanCallBack(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank)
	if MapName == "" then
			Say("Th藅 xin l鏸 , "..TargetName.." b﹜ gi� � khu v鵦 c bi謙, kh玭g bi誸 v� tr� c� th� , nh� v藋 ta c騨g ch� l蕐 1 n鯽 s� ti襫 th玦.",0)
			Pay(MoneyToPay / 2)
			return
	elseif (MoneyToPay == 3000) then
		Say("Ngi n祔 "..TargetName.." b﹜ gi� � <color=red> "..MapName.."<color> ngi 甶 nhanh 甶 , n誹 nh� h緉 n ch� kh竎 ta c騨g ch祇 thua.",1," t� /no")
	elseif (MoneyToPay == 20000) then
		Say("Ngi n祔 "..TargetName.." b﹜ gi� � <color=red> "..MapName.."<color>, v� tr� c� th� c� th� l� <color=red> ( "..nPosX..", "..nPosY..")<color>, ngi n誹 nh� mu鑞 t譵 t韎 ch� c馻 h緉 n猲 nhanh m閠 ch髏 . ",1," t� /no")
	elseif (MoneyToPay == 100000) then
		SexString = "Nam"
		if (nSex ~= 0) then
			SexString = "N�"
		end
		Say("Ngi n祔 "..TargetName..", Ъng c蕄 "..PlayerLevel..", Gi韎 t輓h "..SexString..", V� tr� hi謓 t筰 l� <color=red>"..MapName.." ("..nPosX..", "..nPosY..")<color>, H筺g th� gi韎 "..nWorldRank..". PK "..PKValue..". N誹 nh� ngi mu鑞 t譵 t韎 ch� c馻 h緉 n猲 nhanh m閠 ch髏 . ",1," t�/no")
	end
	Pay(MoneyToPay)
end;

--此函数为失败查询(也就是不在线)信息的回调函数，参数个数和参数顺序不允许改变
function AbsentCallBack(TargetName, MoneyToPay)
	Say("Ngng ng飊g , "..TargetName.." h緉 b﹜ gi� ta kh玭g bi誸 � u, ti襫 ngi a ta s� l蕐 1 n鯽",0)
	Pay(MoneyToPay / 2)
end;

function no()
end
