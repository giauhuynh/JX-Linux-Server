-- Į����ԭ ְ�� ����
-- By: li_xin(2005-01-18)
--update:zhaowenyi(2005-02-20)������ɫ���ƽ�װ������

Include("\\script\\global\\��ɫ���ƽ�װ������.lua")
function main(sel)
	--Say(" �����ڣ�˭��֪���ҵĴ������ӵ�����ǹ��18���������У��͹��������֣�����������װ�����߻ƽ�װ������Ҫ�����ң�һ���۸񹫵�!", 3, "����/yes", "����/onFoundry", "˳��·��/no")
	Say("N�o n�o, v� huynh �� ch�c l� ng��i � trung nguy�n mu�n mua binh kh� ch� g�, l�i ��y ng�i nh�m mi�ng th�t ch�ng ta c�ng b�n chuy�n!", 
			2, 
			"Cho ta xem c�c lo�i binh kh� xem sao/yes", 
--			"����/onFoundry", 
			"th�i, ta ch� ��n xin c�c n��c/no")
end;

function yes()
	Sale(13);  				
end;

function no()
end;
