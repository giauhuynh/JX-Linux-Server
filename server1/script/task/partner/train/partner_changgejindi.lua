Include("\\script\\task\\partner\\train\\partner_addtrainnpc.lua")

function Goto_jindichangge()
	Describe(DescLink_ChangGeMen.."���ڳ����Ž����У���Һ�ͬ�������ܹ���ý϶�ľ��飬ͬʱ�������ͬ���ؼ���ÿ��Сʱ���㣬���صļ�̳�������������ѣ�����ͬ�������ݣ��������벻�����·�����������Ҫǰ����", 2,
	"������Ҫȥ/sure_gotojindi",
	"�Ȼ����˵��/OnCancel")
end

function OnCancel()
end

function sure_gotojindi()
	local filehigh = pt_GetTabFileHeight( jindienter_pos_file ) - 1
	local row = random(filehigh)
	local posx = pt_GetTabFileData(jindienter_pos_file, row + 1, 1)
	local posy = pt_GetTabFileData(jindienter_pos_file, row + 1, 2)
	
	if (posx > 0 and posy > 0) then
		NewWorld(539, posx, posy)
		SetFightState(1)
	else
		print("jindienter_pos_file error row = "..row)
	end
end