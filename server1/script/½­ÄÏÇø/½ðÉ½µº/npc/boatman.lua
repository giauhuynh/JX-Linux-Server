function main()
	Say("Ng��i mu�n v� D��ng Ch�u? 500 l��ng b�c!", 2, "L�n thuy�n/toyangzhou", "Kh�ng �i/no");
end

function toyangzhou()
	if( GetCash() >= 500 ) then
		NewWorld( 80,1369,3369 );
		DisabledUseTownP(0)	-- ���������뿪��ɽ�췵�����ݺ�ʹ�ûسǷ�
		SetFightState(1);
		Pay( 500 );
	else
		Talk( 1,"","Kh�ng �� ti�n kh�ng th� l�n thuy�n!");
	end
end

function no()
end