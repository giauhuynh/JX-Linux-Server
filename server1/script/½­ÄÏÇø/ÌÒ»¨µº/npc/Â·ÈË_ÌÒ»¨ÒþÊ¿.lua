-- ������ �һ��� ·��_�һ���ʿ.lua
-- by: Dan_deng(2004-05-15)
-- ���һ�ҩ����ѯʱ�䣬Ϊϴ�����Ϸ��Լ��

Include("\\script\\global\\timerhead.lua")
Include("\\script\\missions\\autohang\\function.lua")

function main()	

Talk(1, "", "Hi�n t�i ta kh�ng r�nh �� ti�p chuy�n ng��i kh�c, khi kh�c h�y quay l�i ��m ��o v�i l�o nh�!")
	-- strNeedLevel = "�һ�������������·;Σ�գ�����<color=red> "..AEXP_NEEDLEVEL.."��<color>�����ȥ����ȥ����ȥ!";

	-- if (AEXP_IsFreeTimeDoubleExp() == 1) then
		-- nLevel = GetLevel();	
		-- if (nLevel < AEXP_NEEDLEVEL) then
			-- Say(strNeedLevel, 0);
		-- else
			-- Say("�����һ���������ʢ����ʱ����������Ҫ�����ࡣ���Ǻ�����Ҳ��������ʱ�䡣���������õ�һ�졣�Ϸ�Ҳ�о�������ˬ�����ˣ��������ػ��������������У��Ͽ���ȡ�����ɣ�", 0);
		-- end
		
		-- return 1;		
	-- end
	
	-- nLevel = GetLevel();	
	-- if (nLevel < AEXP_NEEDLEVEL) then
		-- Say(strNeedLevel, 0);
	-- else
		-- Say("?d?gfhgd��ghfdsfgd��dsfsdfsdfsdfsfsdgdfgdfhgfh��",
			-- 4,
			-- "�õ�! �Һ�! /buy_yes",
			-- "����: �����,�ȶ��֮��Ż��й�Ч? /check_time",
			-- "����������Ԫ��¶/refine",
			-- "�´���˵/OnCancel");
	-- end
end


-- function refine()
	-- DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
-- end

-- function check_faction()
	-- if (GetTask(3) >= 10*256) and (GetTask(3) ~= 75*256) then			-- ����������ɳ�ʦ
		-- SetTask(137,3)
		-- return 3
	-- elseif (GetTask(7) >= 10*256) and (GetTask(7) ~= 75*256) then		-- ���ֻ�����ɳ�ʦ
		-- SetTask(137,7)
		-- return 7
	-- elseif (GetTask(2) >= 10*256) and (GetTask(2) ~= 75*256) then		-- ���Ż�����ɳ�ʦ
		-- SetTask(137,2)
		-- return 2
	-- elseif (GetTask(10) >= 10*256) and (GetTask(10) ~= 75*256) then	-- �嶾������ɳ�ʦ
		-- SetTask(137,10)
		-- return 10
	-- elseif (GetTask(1) >= 10*256) and (GetTask(1) ~= 75*256) then		-- ���һ�����ɳ�ʦ
		-- SetTask(137,1)
		-- return 1
	-- elseif (GetTask(6) >= 10*256) and (GetTask(6) ~= 75*256) then		-- ���̻�����ɳ�ʦ
		-- SetTask(137,6)
		-- return 6
	-- elseif (GetTask(4) >= 10*256) and (GetTask(4) ~= 75*256) then		-- ���̻�����ɳ�ʦ
		-- SetTask(137,4)
		-- return 4
	-- elseif (GetTask(8) >= 10*256) and (GetTask(8) ~= 75*256) then		-- ؤ�������ɳ�ʦ
		-- SetTask(137,8)
		-- return 8
	-- elseif (GetTask(5) >= 10*256) and (GetTask(5) ~= 75*256) then		-- �䵱������ɳ�ʦ
		-- SetTask(137,5)
		-- return 5
	-- elseif (GetTask(9) >= 10*256) and (GetTask(9) ~= 75*256) then		-- ���ػ�����ɳ�ʦ
		-- SetTask(137,9)
		-- return 9
	-- else																					-- �����ģ�����Ҫ����
		-- SetTask(137,20)
		-- return 20
	-- end
-- end;

-- function check_time()

	-- ���˫����
	-- if (AEXP_IsFreeTimeDoubleExp() == 1) then-- ���˫��������
		-- Say("�����һ���������������ʱ����������Ҫ�õ������ࡣ���Ǻ���������Ҳ���Ứʱ�䡣���᲻�ࡣ��������ȡ�����ɣ�", 0);
		-- return 1;
	-- end
	
	-- nCurValue = GetTask(AEXP_TASKID);
	
	-- if (nCurValue == 0) then	-- ���ܴ�δ�ȹ�������
		-- Say("����<color=red>������<color>û������!�ٺ�һ�뿴����!", 0);
		-- return 0;
	-- end

	-- nTemp = mod(nCurValue, AEXP_TIME_ONE);
	-- nHours = (nCurValue - nTemp) / AEXP_TIME_ONE; -- �Ѻȵ�����(Сʱ��)
	-- nMinutes = nTemp * 60 / AEXP_TIME_ONE;

	-- if (nHours == 0) and (nMinutes < AEXP_FREQ) then	-- �һ�ʱ�䲻��
		-- Say("������Ĺ�Чû���ˣ���ֻҪ����һ��Ϳ��Լ���������!", 0);
	-- elseif (nHours > 0) then				-- ����1Сʱ����
		-- Say("������Ĺ�Ч����ά��<color=red> "..nHours.."<color>Сʱ<color=red>"..nMinutes.."<color> ��", 0);
	-- else
		-- Say("������Ĺ�Ч����ά��<color=red> "..nMinutes.."<color> ��", 0);
	-- end
-- end;

-- g_arBuyNumber = {1, 2, 4, 8}; -- ��λ��Сʱ
-- function buy_yes()
	-- nLevel = GetLevel();
	-- arBuyStr = {};
	-- nCount = getn(g_arBuyNumber);

	-- for i = 1, nCount do
		-- nNumber = g_arBuyNumber[i];
		-- nMoney = AEXP_GetNeedMoney(nLevel, nNumber);
		-- if (nMoney > 0) then
			-- arBuyStr[i] = ""..nNumber.."��[ "..nMoney.." l��ng]".."/buy_deal";
		-- end
	-- end

	-- arBuyStr[nCount + 1] = "�һ������!/OnCancel"
	-- Say("����ȼ���?", nCount+1, arBuyStr);
-- end;

-- function buy_deal(nSel)
	-- nNumber = g_arBuyNumber[nSel+1]; -- ��λ��Сʱ
	
	--������� - start
	-- nCurValue = GetTask(AEXP_TASKID);
	-- temp = (AEXP_TIME_MAX - nCurValue) / AEXP_TIME_ONE; -- Ŀǰ�ɺȵ�����(Сʱ��)
	-- nRemainNumber = floor(temp);
	-- if (nRemainNumber <= 0) then
		-- Msg2Player("���Ѿ�����"..AEXP_HOUR_MAX.."��������, �о��Լ��Ѿ��Ȳ�����.����1Сʱ֮�������˲ſ��Ժȼ���. ")
		-- return 0;
	-- end

	-- if (nNumber > nRemainNumber) then
		-- Msg2Player("��о��Լ������Ժ�"..AEXP_HOUR_MAX.."��������,���ں�����"..(AEXP_HOUR_MAX - nRemainNumber).."��. ")
		-- nNumber = nRemainNumber;
	-- end
	--������� - end

	-- nLevel = GetLevel();
	-- nMoney = AEXP_GetNeedMoney(nLevel, nNumber);
	-- if (GetCash() >= nMoney) then
		-- Pay(nMoney);
		-- nValueTotal = nCurValue + (AEXP_TIME_ONE * nNumber);
		-- SetTask(AEXP_TASKID,  nValueTotal);

		-- ������ʱ����ʾ - start
		-- nTemp = mod(nValueTotal, AEXP_TIME_ONE);
		-- nHours = (nValueTotal - nTemp) / AEXP_TIME_ONE; -- �Ѻȵ�����(Сʱ��)
		-- nMinutes = nTemp * 60 / AEXP_TIME_ONE;
		-- Msg2Player("���Ѿ�����"..nNumber.."ƿ������. �����Զ�����"..nHours.."Сʱ"..nMinutes.."��");
		-- ������ʱ����ʾ - end
				
		-- if (nCurValue == 0) then -- �����ǵ�һ�κ�
			-- Talk(1,"","������ֻ���һ����ϲ��й�Ч! ������뿪�����ʧȥ��Ч")
		-- end
	-- else
		-- Talk(1,"","��������һ��������ҩƷ��������!����Ҫ��"..nMoney.."������!")
	-- end
-- end;

function OnCancel()
end;
