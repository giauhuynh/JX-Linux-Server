--中原南区 襄阳府 衙门卫兵2对话

FESTIVAL06_NPCNAME = "<color=yellow>衙门卫兵:<color>";
Include([[\script\global\路人_衙门卫兵.lua]]);

function main(sel)
    gsoldier_entance();
end;

function main_former()
	UTask_wd = GetTask(5);
	UTask_wd60sub = GetByte(GetTask(17),3)
	if (UTask_wd == 60*256+20) and (UTask_wd60sub == 2) then
		Say("Th� th祅h i nh﹏  tr鑞 v祇 m藅 o ph輆 sau nha m玭, Kim t芻 c遪 ch璦 t韎 m�  s� nh� v藋 !", 0)
		AddNote("дn nha m玭 c飊g v� binh i tho筰, bi誸 tng th� th祅h  tr鑞 v祇 m藅 o ph輆 sau nha m玭. ")
		Msg2Player("Th� th祅h Tng Dng  tr鑞 v祇 m藅 o ph輆 sau nha m玭.")
	else
		Talk(1,"","Nha m玭 v� binh:Чi nh﹏ c� l謓h, nh鱪g ngi kh玭g c� nhi謒 v� kh玭g 頲 qua y !")
	end
end;
