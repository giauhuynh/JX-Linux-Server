-- ������ �ٰ� ս��_Ī��Ԣ.lua ������ɻ�������
-- By: Dan_Deng(2004-05-28)

Include("\\script\\global\\repute_head.lua")

function OnDeath(sel)
	Uworld43 = GetTask(43)
	if (Uworld43 == 100) then
		Msg2Player("qua bao n�m th�ng luy�n t�p v� c�ng c�a ng��i c�ng �� ti�n b�,sinh m�ng,th�n ph�p m�i t�ng t�n m�t �t..")
		Talk(4,"U43_prise", 10869, 10870, 10871, 10872)
	end
end;

function U43_prise()
	SetTask(43,255)
	AddProp(2)
	AddStrg(1)
	AddDex(1)
	Task88_1 = GetByte(GetTask(88),1) + 1
	Task88_2 = GetByte(GetTask(88),2) + 1
	if (Task88_1 > 255) then Task88_1 = 255 end
	if (Task88_2 > 255) then Task88_2 = 255 end
	Task88 = GetTask(88)
	Task88 = SetByte(Task88,1,Task88_1)
	Task88 = SetByte(Task88,2,Task88_2)
	SetTask(88,Task88)			-- �Ǣ�������⹦������
	i = ReturnRepute(30,80,5)		-- ȱʡ�������������ĵȼ���ÿ���ݼ�
	AddRepute(i)		-- ������
	Msg2Player("Nhi�m v� ti�u di�t h�i hoa t�c : ho�n th�nh danh v�ng t�ng cao"..i.."��.")
	AddNote("Nhi�m v� ti�u di�t h�i hoa t�c : ho�n th�nh..")
end
