-- �����³�ɮ�Ի��ű�

Include("\\script\\task\\newtask\\branch\\zhengpai\\branch_zhengpaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")

function main()
	Uworld1050 = nt_getTask(1050)
	if ( Uworld1050 ~= 0 ) then
		branch_chiseng()
	else
		Talk(1,"","������꣬�����ط����ĵ���Խ��Խ�٣����ɲ��������е��£�ֻ���ޡ����Ӹ�������æ��Ŀǰ�Ѿ���ɽ��ļ�µĵ��ӡ�ʩ����һ��ʱ���������!");
	end
end
