--������ ������ ����5�οͶԻ�
--������Т�����񣺹���̫�ı���
--suyu
-- Update: Dan_Deng(2003-08-10)

function main(sel)
	UTask_world19 = GetTask(47);
	if (UTask_world19 == 2) then
		if HaveItem(183) == 1 then
			Say("gia910",2,"gia911/yes","gia912/no")
		else
			Talk(1,"","gia913")
		end
	else
		i = random(0,3)
		if (i == 0) then
			Talk(1,"","�i!.. Bao gi� th� ta m�i c� th� t�m ���c m�t b�c th� ph�p qu� nh� th� n�y. ")
		elseif (i == 1) then
			Talk(1,"","��ng ��nh h� n�y c�n ���c g�i l� 'V�n M�ng Tr�ch'. ph�a B�c gi�p Tr��ng Giang, ph�a Nam gi�p b�n con s�ng T��ng, T�, Nguy�n, Phong. Danh hi�u l� 'B�t B�ch L� ��ng ��nh H�.")
		elseif (i == 2) then
			Talk(1,"","Ph�m V�n Ch�nh C�ng trong b�i 'Nh�c d��ng l�u k�' c� vi�t: 'D� quan phu Ba L�ng th�ng tr�ng, t�i ��ng ��nh nh�t h�. H�m vi�n s�n, Th�n Tr��ng Giang, h�o h�o thang thang, ho�nh v� t� nhai, tri�u huy t�nh �m, kh� t��ng v�n thi�n' . ��ng ��nh h� n�y x�ng")
		else
			Talk(1,"","��ng ��nh h� r�ng m�nh m�ng, n�i non ch�t v�t, ��c �i�m l�n nh�t l� ngo�i h� c� h�, trong h� c� n�i, c� nhi�u v� s�, lau s�y um t�m, n��c tr�i m�t s�c, h�i �u bay l��n. Xu�n Thu t� qu� lu�n thay ��i")
		end
	end
end;

function yes()
	i = 100 * (random(0,5)+10)
	Talk(2,"","gia918","gia919"..i.."gia920")
	DelItem(183)
	Earn(i)
	SetTask(47, 3)
	Msg2Player("gia921"..i.."gia922")
	AddNote("gia923")
end;

function no()
	Talk(1,"","gia924")
end;
