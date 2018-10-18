-- 临安　职能　钱庄老板
-- by：Dan_Deng(2003-09-16)
-- Update: Dan_Deng(2004-01-06) 从统一功能移动处理银票到此独有
-- Update: Fanghao_Wu(2004-9-04) 增加元宝兑换铜钱功能

-- Include("\\script\\global\\钱庄功能.lua")

-- function main(sel)
--	Talk(1,"main_proc","钱庄老板：俺这钱庄信誉一向都好得很，从不骗人。")
-- end;

Include("\\script\\global\\systemconfig.lua") -- 系统配置
Include("\\script\\global\\head_qianzhuang.lua") -- 头定义

function gamebank_proc()
end

function use_ticket()
end

function use_ingot()
end

------------- 查询银票 --------------------
function show_ticket()
end

------------- 查询元宝 --------------------
function show_ingot()
end

------------- 取元宝 -----------------------
function get_ingot()
end

------------- 取银票 -----------------------
function get_ticket()
end

function get_ticketok()
end

function get_ingot_35()
end

function get_ingot35ok()
end

function get_ingot_10()
end

function get_ingot10ok()
end;
------------- 兑现元宝 ---------------------
function pay_ingot()
end

------------- 兑现银票 ---------------------
function pay_ticket()
end

--获取扣除银票的种类
function pay_ticket_typediff()
end;
-- 把银票兑现成30小时
function pay_ticket_hours()
end

-- 把银票兑现成7天
function pay_ticket_days()
end

function pay_ingot_35a()
end

function pay_ingot_35b()
end

function pay_ingot_10a()
end

function pay_ingot_10b()
end

------------- 确认银票兑换铜钱---------------------
function change_ticket_to_coin()
end

------------- 银票兑换铜钱---------------------
function confirm_ticket_to_coin()
end

------------- 元宝兑换铜钱---------------------
function change_ingot_to_coin()	
end

function change_gold_to_coin()
end

function change_silver_to_coin()
end

------------ 关于铜钱 ------------------
function onAboutCoin()
end

----------------------------------------
function no()
end
