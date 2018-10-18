--ÖĞÔ­ÄÏÇø ÏåÑô¸® ÑÃÃÅÎÀ±ø1¶Ô»°

FESTIVAL06_NPCNAME = "<color=yellow>ÑÃÃÅÎÀ±ø:<color>";
Include([[\script\global\Â·ÈË_ÑÃÃÅÎÀ±ø.lua]]);

function main(sel)
    gsoldier_entance();
end;

function main_former()
	UTask_wd = GetTask(5);
	UTask_wd60sub = GetByte(GetTask(17),3)
	if (UTask_wd == 60*256+20) and (UTask_wd60sub == 2) then
		Say("Thñ thµnh ®¹i nh©n ®· trèn vµo mËt ®¹o phİa sau nha m«n, Kim tÆc cßn ch­a tíi mµ ®· sî nh­ vËy !", 0)
		AddNote("§Õn nha m«n cïng vÖ binh ®èi tho¹i, biÕt t­íng thñ thµnh ®· trèn vµo mËt ®¹o phİa sau nha m«n. ")
		Msg2Player("Thñ thµnh T­¬ng D­¬ng ®· trèn vµo mËt ®¹o phİa sau nha m«n.")
	else
		Talk(1,"","Nha m«n vÖ binh:§¹i nh©n cã lÖnh, nh÷ng ng­êi kh«ng cã nhiÖm vô kh«ng ®­îc qua ®©y !")
	end
end;
