-- 临安　职能　神秘商人
-- By Li_Xin (2004-07-20)

Include("\\script\\global\\shenmi_chapman.lua") 
Include("\\script\\lib\\gb_taskfuncs.lua");
Include("\\script\\task\\system\\task_string.lua")
Include("\\script\\event\\act2years_yn\\baibaoxiang.lua") 
Include("\\script\\event\\leize_upplatina\\platina_upgrade.lua")--白金装备
Include("\\script\\event\\leize_upplatina\\recoin_platinaequip.lua")--重铸白金装备
function main()
	if (CheckGlobalTradeFlag() == 0) then		-- 全局经济系统交易开关
		return
	end
	
	local tbDecOpp =
	{
		"<dec><npc>Ta t� t﹜ v鵦 xa x玦 v筺 d苖 t韎 trung nguy猲 nghe n鉯 n琲 y xu蕋 hi謓 <color=yellow>L玦 tr筩h ch飝<color> ta t鮪g xem m閠 b� t辌h n鉯 v� l玦 tr筩h ch飝 l� <color=yellow>Trang b� ho祅g kim <color> th╪g c蕄 th祅h <color=yellow>Trang b� b筩h kim<color> c� hay kh玭g mu鑞 th� m閠 l莕 ch� c莕 琻g ta 10000 lng b筩.",
		
		--Change request 04/06/2011,关闭铸造白金装备 - Modified by DinhHQ - 20110605
		--"我想升级白金装备/upgrade_paltinaequip",
		--"我想把黄金装备铸造成白金装备/upgrade_goldformplatina",
		
		--"我想请你重铸白金装备/recoin_platina_main",
		--"<#>我想将这件白金装备升级/get1",
		--"<#>我想将这件黄金装备打造成白金装备/get2",
		--"<#> 拆解 <装备损耗>/deal_brokenequip",
		--"我想了解白金装备拆解/unweave_paltinaequip",
		--"<#>百宝箱/BaiBaoXiang_Give_UI",
		"<#>Ta ch糿g qua 甶 ngang qua/no",
		
	};
	local ndate = tonumber(GetLocalDate("%y%m%d%H"))
	
	--Say(str[1],5,str[6],str[2],str[3],str[4], str[5])
	CreateTaskSay(tbDecOpp);
end;

function no()
end;
