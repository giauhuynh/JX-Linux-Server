

Include("\\script\\global\\systemconfig.lua") 
Include("\\script\\global\\head_qianzhuang.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua") 

IncludeForRegionVer("\\script\\global\\", "gamebank_proc.lua")

function main() 
	if (CheckGlobalTradeFlag() == 0) then
		return 
	end 
	Uworld1000 = nt_getTask(1000) 
	if ( Uworld1000 == 360 ) or ( Uworld1000 == 370 ) then 
		education_qianzhuanglaoban() 
	else 
		Talk(1,"gamebank_proc","B�n ti�m l�m �n l� c�ng l�m c�ng t�t , ta quy�t ��nh sang n�m n�a khai m� m�y nh� ph�n ph�i. nh�ng chuy�n n�y ta mu�n c�ng h� b� V��ng ��i nh�n th��ng l��ng, kh�ng c� h�n b�o v�, ti�n c�a ta l�m sao c� th� �n ��nh") 
	end 
end 
