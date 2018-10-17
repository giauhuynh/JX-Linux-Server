-- ����Դͷ ·��_����а.lua��ؤ��90����������
-- By��XiaoYang(2004-04-29)
-- Update��dan_deng(2004-05-20)

Include("\\script\\global\\repute_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main()
	if allbrother_0801_CheckIsDialog(2) == 1 then
		allbrother_0801_FindNpcTaskDialog(2)
		return 0;
	end
	
	Uworld128 = GetTask(128)
	Uworld30 = GetByte(GetTask(30),2)
	if ((Uworld128 < 10) and (GetReputeLevel(GetRepute()) >= 5) and (GetLevel() >= 90) and (GetFaction() ~="gaibang") and (Uworld30 ==127)) or
		(GetLevel() >= 90 and GetCamp() == 4 and GetTask(5892) == 0) then
		Talk(8,"Uworld128_get","L�i c� ng��i ��n �!!!","Ng��i ��n n�i hoang vu n�y �� l�m g�?",
		"C� ph�i l� v� c�i bang ph�i?",
		"::��ng v�y, t�i h� ��n ��y l� v� c�i bang ph�i",
		"nh�ng ng��i ��n nh� ta gi�p �� ��u ph�i mang theo h�o t�u �� l�m qu� th� ta ��y c�n suy ngh� l�i, c�n ng��i....!",
		"::Th� ra v� ��i huynh ��y th�ch h�o t�u","::���c th�i, ��i tin c�a ta ","���c, ta s� ��i h�o t�u t� ng��i")
   elseif (Uworld128 == 10) and (HaveItem(76) == 1) then
   	Talk(11,"Uworld128_envelop",
	"::R��u c�a ng�i � ��y",
	"::Hu� tuy�n t�u, kh�ng bi�t �� v�a � v� huynh ��i ��y ch�a?",
	"Hu� tuy�n t�u, ng��i n�i th�t ch�?",
	"��ng l� r��i ngon r�i!",
	"th� l�c n�y ng��i nh� ta vi�c g� nh�?",
	"::Nh� v� huynh ��i v� tin t�c c�a c�i bang ph�i",
	"� �!",
	"� ��y ta c� 1 b�c m�t th�!",
	"nh� ng��i ��n t�ng �� c�i bang v� giao n� cho La khu�ng sinh, �ng ta s� c� manh m�i gi�p ��i hi�p!",
	"::c�m �n v� huynh ��i!")
   elseif (Uworld128 == 40) then
   	Talk(7,"Uworld128_kill","�� h� g�c ���c s�t th� r�i sao?",
	"��i hi�p th�t t�t b�ng!","::kh�ng c� g�!",
	"kh�ng bi�t t� ��u ��n, b�n ch�ng l�i mu�n h�i ta","c�ng c� th� l� v� manh m�i v� b� k�p c�a c�i bang!",
	"v� cu�n b� k�p n�y t�i h� �� giao cho La khu�ng sinh v� an to�n, ��i hi�p h�y �i g�p La khu�ng sinh bi�t ��u �ng �y l�i c� qu� cho ��i hi�p!",
	"::�a t�, t�i h� s� ��n c�i bang m�t chuy�n")
   elseif (Uworld128 == 10) then
   	Talk(1,"","R��u c�a ta ��u!")
   elseif (Uworld128 == 30) then
   	Talk(2,"","C�c h� ��y r�i","xin h�y h� g�c b�n s�t th� c�u t�i h�!")
   elseif (Uworld128 == 20) and (HaveItem(390) == 0) then
   	AddEventItem(390)
   	Msg2Player("6")
   	Talk(1,"","6")
   else
   	Talk(1,"","R��u ngon, r��u ngon!")
   end
end

function Uworld128_get()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- ����δѧҰ��ȭ�ģ������������
		Talk(1,"","T�i kh�ng th� �i mua r��i cho ng�i l�c n�y ���c!")
	else
		Say("Th� ng��i quy�t ��nh �i mua r��u cho ta ch�?",2,"t�i h� s� ti�n h�nh. /Uworld128_wait","th�i, �� h�m kh�c nh� ��i huynh, gi� ta b�n l�m/Uworld128_no")
	end
end

function Uworld128_wait()
	SetTask(128,10)
	SetTask(5892,1)
--	Uworld135 = GetGameTime()
   Msg2Player("��n t�u l�u � d��ng ch�u mua r��u cho Gi�i v� t�")
   AddNote("��n t�u l�u � d��ng ch�u mua r��u cho Gi�i v� t�")
end

function Uworld128_no()
end

function Uworld128_envelop()
	DelItem(76)
	AddEventItem(390)
	Msg2Player("Mang th� c�a Gi� v� t� giao cho La khu�ng sinh � t�ng �� c�i bang")
	AddNote("Mang th� c�a Gi� v� t� giao cho La khu�ng sinh � t�ng �� c�i bang")
	SetTask(128,20)
end

function Uworld128_kill()
	SetTask(128,50)
	Msg2Player("B�n ��n C�i bang g�p La khu�ng sinh �� ��i tho�i")
	AddNote("B�n ��n C�i bang g�p La khu�ng sinh �� ��i tho�i")
end
