--Ī��Ů
--by xiaoyang (2004\12\15)
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\master\\lib_setmembertask.lua")
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")

function OnDeath()
Uworld1001 = nt_getTask(1001)
	if (Uworld1001 == 30) then
		Talk(1,"Uworld1001_give","��ng t��ng r�ng ng��i c� th� ��nh th�ng ta. N�u nh� ta kh�ng tr�ng ��c, kh�ng ��i n�o c� th� b�i d��i tay 1 ai c�.")
	else
		Bil_DefaultTalk4Npc()
	end
end

function newtask1()
	AddOwnExp(20000)
	Msg2Player("M�c S�u �ang ch� ng��i.")

end

function Uworld1001_give()

	SetMemberTask(1001,30,40,newtask1) --����3end
	
end
		
