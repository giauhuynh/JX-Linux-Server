-- ====================== �ļ���Ϣ ======================

-- ������Ե�����Խ�ϰ� - ǧ��Ӣ��
-- �ļ�������head.lua
-- �����ߡ����ӷ��~
-- ����ʱ�䣺2009-04-08 14:16:06

-- ======================================================

Include("\\script\\lib\\pay.lua");

TB_QIANQIU_YINGLIE0904 = {
	-- C --
	VERSION		= 20090428,--20090428,		-- ��Ż�汾
	START		= 20090428,--20090428		-- ǧ��Ӣ�ҿ�ʼʱ��
	CLOSE		= 20090531,		-- ǧ��Ӣ�ҽ���ʱ��
	ItemEnd		= 20090601,		-- ���߽���ʹ����
	
	-- MAX_EXP		= 300000000,	-- �������� 3��
	MAX_EXP		= 2000000,	-- �������� 3��
	-- PER_EXP		= 4000000,		-- ÿ�ξ������ 4����
	PER_EXP		= 1000000,		-- ÿ�ξ������ 4����
	MAX_YAOBAO	= 4,			-- ÿ�����4��ҽҩ��
	
	-- TSK --
	TSK_VERSION	= 1970,			-- ��¼�汾��
	TSK_SJ_MAXEXP	= 1971,		-- ��¼�μ�ǧ��Ӣ�һ�þ���
	TSK_YIYAO_BAO	= 1972,		-- ��¼ÿ��μӻ�����ҽҩ��
	
}

function TB_QIANQIU_YINGLIE0904:reset_task()
	if (GetTask(self.TSK_VERSION) ~= self.VERSION) then
		SetTask(self.TSK_VERSION, self.VERSION);
		SetTask(self.TSK_SJ_MAXEXP, 0);
		SetTask(self.TSK_YIYAO_BAO, 0);
	end
end

function TB_QIANQIU_YINGLIE0904:check_date()
	local n_date = tonumber(GetLocalDate("%Y%m%d"));
	
	if (n_date >= self.START and n_date <= self.CLOSE) then
		return 1;
	else
		return 0;
	end
end

function TB_QIANQIU_YINGLIE0904:check_right()
	local n_level = GetLevel();
	if (n_level < 50 or IsCharged() ~= 1) then
		return 0;
	end
	return 1;
end

function TB_QIANQIU_YINGLIE0904:check_mask_ex()
	if (CalcItemCount(2,0,11,482,-1) > 0) then
		return 3;
	end
	return 1
end

function TB_QIANQIU_YINGLIE0904:check_mask()
	--CalcItemCount(2,0,-1,-1,-1)
	if ((CalcItemCount(2,0,11,446,-1) > 0) or (CalcItemCount(2,0,11,450,-1) > 0)) then
		return 1.5;
	elseif (CalcItemCount(2,0,11,447,-1) > 0) then
		return 2;
--	elseif (CalcItemCount(2,0,11,482,-1) > 0) then
--		return 3;
	else
		return 1;
	end
end

function TB_QIANQIU_YINGLIE0904:add_sj_point_ex(npoint)
	local game_level = BT_GetGameData(GAME_LEVEL);
	if (game_level == 3) then
		if (self:check_right() == 1) then
			nMask = self:check_mask_ex();
			npoint = floor(npoint * nMask);
		end
	end
	return npoint;
end

function TB_QIANQIU_YINGLIE0904:add_sj_point(npoint)
	local game_level = BT_GetGameData(GAME_LEVEL);
	if (game_level == 3) then
		if (self:check_right() == 1) then
			nMask = self:check_mask();
			npoint = floor(npoint * nMask);
		end
	end
	return npoint;
end


function TB_QIANQIU_YINGLIE0904:sorter_award(game_level)
--	if (self:check_date() == 1 and game_level == 3) then
	if (game_level == 3) then
		local old_player = PlayerIndex;
		-- �ۼƻ���
		local tbPlayer = {}
		battle_rank_GetSortPlayer0808(tbPlayer, 0, battle_rank_sort_Point)
		for i = 1, 3 do 
			if tbPlayer[i] and tbPlayer[i] > 0 then
				PlayerIndex = tbPlayer[i];
				Msg2Player(format("<color=yellow>B�ng x�p h�ng �i�m: ��ng th� %d", i));
				self:add_rank_award(i);
			end
		end
		
		-- ��ն����
		tbPlayer = {}
		battle_rank_GetSortPlayer0808(tbPlayer, 0, battle_rank_sort_SER)
		for i = 1, 3 do
			if tbPlayer[i] and tbPlayer[i] > 0 then
				PlayerIndex = tbPlayer[i];
				Msg2Player(format("<color=yellow>B�ng x�p h�ng li�n tr�m: ��ng th� %d", i));
				self:add_rank_award(i);
			end
		end
		
		-- PK�������
		tbPlayer = {}
		battle_rank_GetSortPlayer0808(tbPlayer, 0, battle_rank_sort_PK)
		for i = 1, 3 do
			if tbPlayer[i] and tbPlayer[i] > 0 then
				PlayerIndex = tbPlayer[i];
				Msg2Player(format("<color=yellow>B�ng x�p h�ng PK: ��ng th� %d", i));
				self:add_rank_award(i);
			end
		end
		
		-- ��ɱNPC���� ��Ԫ˧����ģʽ
		if (MISSIONID == 16) then
			tbPlayer = {}
			battle_rank_GetSortPlayer0808(tbPlayer, 0, battle_rank_sort_NPC)
			for i = 1, 3 do
				if tbPlayer[i] and tbPlayer[i] > 0 then
					PlayerIndex = tbPlayer[i];
					Msg2Player(format("<color=yellow>B�ng x�p h�ng gi�t NPC: ��ng th� %d", i));
					self:add_rank_award(2);
				end
			end
		end
		PlayerIndex = old_player;
	end
end


function TB_QIANQIU_YINGLIE0904:add_rank_award(nrank)

end


function TB_QIANQIU_YINGLIE0904:add_end_award(tb_player, b_win)

end


function TB_QIANQIU_YINGLIE0904:add_lucky_award(tb_player)

end


function TB_QIANQIU_YINGLIE0904:check_yiyaobao()
	local n_value = GetTask(self.TSK_YIYAO_BAO);
	local n_last_date = GetByte(n_value, 1);
	local n_yiyaobao = GetByte(n_value, 2);
	local n_cur_date = tonumber(GetLocalDate("%j"));
	
	if (n_cur_date ~= n_last_date) then
		n_yiyaobao = 0;
		n_value = SetByte(n_value, 1, n_cur_date);
		n_value = SetByte(n_value, 2, n_yiyaobao);
		SetTask(self.TSK_YIYAO_BAO, n_value);
	end
	
	if (n_yiyaobao >= 4) then
		return 0;
	end
	
	return 1;
end


function TB_QIANQIU_YINGLIE0904:add_yiyaobao_tsk()
	local n_value = GetTask(self.TSK_YIYAO_BAO);
	SetTask(self.TSK_YIYAO_BAO, SetByte(n_value, 2, GetByte(n_value,2)+1 ));
end
