-- ====================== �ļ���Ϣ ======================

-- ������Ե�����Խ���շѰ� - ����:ɱ���ر�
-- �ļ�������shashou_mibao.lua
-- �����ߡ����ӷ��~
-- ����ʱ�䣺2010-05-24 11:40:18

-- ======================================================

Include("\\script\\lib\\awardtemplet.lua");		-- ����ģ��
local n_XuanTian_Chui = 6;

tbItem_Mibao = {
	{szName = "�ɲ�¶",tbProp = {6,1,71,1,1,0}, nRate = 15.873},--ok
	{szName = "��ç��", tbProp = {6,1,2350,1,1,0}, nRate = 0.2},--ok
	{szName = "��Գ��", tbProp = {6,1,2351,1,1,0}, nRate = 0.5},--ok
	{szName = "��ç��", tbProp = {6,1,2350,1,1,0}, nRate = 0.1},--ok
	{szName = "��Գ��", tbProp = {6,1,2351,1,1,0}, nRate = 0.1},--ok
	{szName = "������", tbProp = {6,0,3,1,1,0}, nRate = 25},--ok
	{szName = "������", tbProp = {6,0,6,1,1,0}, nRate = 25},--ok
	{szName = "��ս���", tbProp = {6,1,2006,1,1,0}, nRate = 20},--ok
	{szName = "�Ի͹�(��) ", tbProp = {6,1,906,1,1,0}, nRate = 10, nExpiredTime = 10080},--ok
	{szName = "�ƽ�֮�� ", tbProp = {6,1,907,1,1,0}, nRate = 0.5, nExpiredTime = 10080},--ok
	{szName = "�����������", tbProp = {6,1,1781,1,1,0}, nRate = 3, tbParam = {60}},	-- ���Ұ���60��--ok
}

function main(nItemIdx)
	local n_curcnt = CalcItemCount(3, 6,1,2348,-1);
	if (n_curcnt < %n_XuanTian_Chui) then
		Msg2Player(format("��Ҫ%d %s, ����������������!", %n_XuanTian_Chui, "���촸"));
		return 1
	end
	if (CalcFreeItemCellCount() >= 3 and ConsumeItem(3, %n_XuanTian_Chui, 6,1,2348,-1)) then
		tbAwardTemplet:GiveAwardByList(tbItem_Mibao, format("USE %s", "Ұ�ŵ��ر�"))
		AddStatData("baoxiangxiaohao_kaishashoumibao", 1)		-- ��������һ��
	else
		Msg2Player("���ڿ�λ����! ");
		return 1
	end
end
