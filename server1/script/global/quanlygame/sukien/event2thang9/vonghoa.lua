IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\traogiaithdnb\\thdnb7.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\vng_event\\2012_vlnb\\main.lua")
Include("\\script\\global\\lottery_gold.lua")
Include("\\script\\GM_Tool\\dispose_item.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\bonus_onlinetime\\func_onlineaward.lua")
Include("\\script\\event\\superplayeract2007\\event.lua")
Include("\\script\\event\\zhongqiu2007\\item\\yuebinglihe.lua")
Include("\\script\\vng_feature\\resetbox.lua")
Include("\\script\\missions\\dangboss\\npcdailog.lua")


function main()
local nGoldPoint = GetExtPoint(5)
if nGoldPoint == 2001 then
		Say("Xin l�i ch� c� th� s� d�ng t�i �a 2000 c�i ��i hi�p �� �n qu� nhi�u",0)
	return 1
end
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 2 ) then
		Say("Xin l�i m�i 1 l�n s� d�ng v�ng hoa c�n c� 2xu trong g��ng ��i hi�p kh�ng c� xu,li�n h� admin �� n�p th� �ng h�",0)
	return 1
                                                                                  end 
ConsumeEquiproomItem(2,4,417,1,1)
vonghoachienthang()
end

function vonghoachienthang()
CastSkill(1172,1)
AddExtPoint(5,1)
AddOwnExp(1200000)
local nGoldPoint = GetExtPoint(5)
local s = random(1,12)


if nGoldPoint == 100 then
moc100f()
end;
if nGoldPoint == 200 then
moc200f()
end;
if nGoldPoint == 500 then
moc500f()
end;
if nGoldPoint == 1000 then
moc1000f()
end;
if nGoldPoint == 1500 then
moc1500f()
end;
if nGoldPoint == 2000 then
moc2000f()
end;


if s==1 then
AddItem(6,1,random(383,391),1,0,0,0)
end;
if s==2 then
AddItem(4,random(903,942),1,1,0,0,0)
end;
if s==3 then
AddItem(4,random(238,240),1,1,0,0,0)
end;
if s==4 then
AddItem(4,353,1,1,0,0,0)
end;
if s==5 then
AddItem(6,1,random(122,125),1,0,0,0)
end;
if s==6 then
AddItem(6,1,random(71,72),1,0,0,0)
end;
if s==7 then
AddItem(6,1,1181,1,0,0,0)
end;
if s==8 then
AddItem(6,1,random(2424,2425),1,0,0,0)
end;
if s==9 then
Earn(10000)
end;
if s==10 then
AddItem(4,random(747,788),1,1,0,0,0)
end;
if s==11 then
AddItem(6,1,2432,1,0,0,0)
end;
if s==12 then
AddEventItem(489)
end;
end


function moc100f()
tbAwardTemplet:GiveAwardByList({{szName="Chi�u D�",tbProp={0,10,5,10,0,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� nh�n 1 Chi�u D� v�nh vi�n <color=yellow>Khi ��t m�c 100 V�ng Hoa Qu�c Kh�nh")
end

function moc200f()
tbAwardTemplet:GiveAwardByList({{szName="Phi V�n",tbProp={0,10,8,10,0,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� nh�n 1 Phi V�n v�nh vi�n <color=yellow>Khi ��t m�c 200 V�ng Hoa Qu�c Kh�nh")
end

function moc500f()
tbAwardTemplet:GiveAwardByList({{szName="S�ch",tbProp={6,1,22,1,0},nCount=5,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="S�ch",tbProp={6,1,26,1,0},nCount=5,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� nh�n 5 VLMT 5TTK <color=yellow>Khi ��t m�c 500 V�ng Hoa Qu�c Kh�nh")
end

function moc1000f()
tbAwardTemplet:GiveAwardByList({{szName="H�ng �nh",tbProp={0,204},nCount=1,nQuality = 1,nExpiredTime=43200},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="H�ng �nh",tbProp={0,205},nCount=1,nQuality = 1,nExpiredTime=43200},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="H�ng �nh",tbProp={0,206},nCount=1,nQuality = 1,nExpiredTime=43200},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="H�ng �nh",tbProp={0,207},nCount=1,nQuality = 1,nExpiredTime=43200},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� nh�n 1 b� h�ng �nh <color=yellow>Khi ��t m�c 1000 V�ng Hoa Qu�c Kh�nh")
end				

function moc1500f()
tbAwardTemplet:GiveAwardByList({{szName="B�n Ti�u",tbProp={0,10,6,1,0,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� nh�n 1 B�n Ti�u v�nh vi�n <color=yellow>Khi ��t m�c 1500 V�ng Hoa Qu�c Kh�nh")
end


function moc2000f()
tbAwardTemplet:GiveAwardByList({{szName="H�ng �nh",tbProp={0,216},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,561,1},nCount=1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� nh�n 1 D�y Chuy�n AB v�nh vi�n + 1 M�t n� k� n�ng 1 c�p 1 th�ng <color=yellow>Khi ��t m�c 2000 V�ng Hoa Qu�c Kh�nh")
end				



