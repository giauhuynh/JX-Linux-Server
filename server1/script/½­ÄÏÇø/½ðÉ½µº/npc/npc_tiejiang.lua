-- ��ɽ�� ְ�� ����
-- By: li_xin(2005-01-27)
--update:zhaowenyi(2005-02-20)������ɫ���ƽ�װ������

Include("\\script\\global\\��ɫ���ƽ�װ������.lua")
function main(sel)
	--Say("��Ҫ����ɽ�죬û���������ı�����ŢҪ�Կ���������Ҫ��ʲô������Ҫ��������װ����ƽ�װ���������ң��۸�һ������!", 3, "����/yes", "����/onFoundry", "ֻ�Ǣ���/no")
	Say("Mu�n � T�y S�n T�, kh�ng c� ta l�i h�i binh kh� s� r�ng mu�n �n thua thi�t a. Ng��i mu�n mua c�i g�? C�n mu�n mu�n d�n t�o huy�n tinh trang b� ho�c ho�ng kim trang b� s� t�i t�m ta, gi� c� nh�t ��nh h�p l�!", 
			2, "Giao d�ch/yes", 			
			"K�t th�c/no")
end;

function yes()
	Sale(13);  				
end;

function no()
end;
