--description: ���ִ�_����
--author: wangzg	
--date: 2003/7/21
--update 2003/7/28 yuanlan

function main()
	UTask_world38=GetTask(66)
	if (UTask_world38==2) then
		Say("S� c� ta g�n ��y kh�ng t�, c�ch ��y kh�ng l�u l�n n�i s�n ���c m�t con m�nh h�, x��ng con h� n�y c� th� l�m d��c li�u qu�, ta mu�n 150 l��ng b�c", 2 ,"Mua/yes","Kh�ng mua/no")
	else	
		Say("Trong s� nh�ng ng��i �i s�n � v�ng n�y, ta x�ng th� hai kh�ng ai d�m x�ng th� nh�t! ",0)	
	end
end;

function yes()
	if (GetCash() < 150) then
		Talk(1,"","Ng��i kh�ng mang theo �� ti�n!")
	else
		Pay(150)
		AddEventItem(185)
		Msg2Player("Mua ���c x��ng h� t� Th� S�n")
		AddNote("Mua ���c x��ng h� t� Th� S�n")
	end
end;

function no()
end
	
