
function Line(x,x1,y1,x2,y2)
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end

function Conic(x,x1,y1,x2,y2)
	if((x1 < 0) or (x2<0))then 
		return 0
	end
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*x*x/(x2*x2-x1*x1)-(y2-y1)*x1*x1/(x2*x2-x1*x1)+y1
end

function Extrac(x,x1,y1,x2,y2)
	if((x1 < 0) or (x2<0))then 
		return 0
	end
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end

function Link(x,points)
	num = getn(points)
	if(num<2) then
		return -1
	end
	for i=1,num do
		if(points[i][3]==nil) then
			points[i][3]=Line
		end
	end
	if(x < points[1][1]) then
		return points[1][3](x,points[1][1],points[1][2],points[2][1],points[2][2])
	end
	if(x > points[num][1]) then
		return points[num][3](x,points[num-1][1],points[num-1][2],points[num][1],points[num][2])
	end
	
	c = 2
	for i=2,num do
		if((x >= points[i-1][1]) and (x <= points[i][1])) then
			c = i
			break
		end
	end
	return points[c][3](x,points[c-1][1],points[c-1][2],points[c][1],points[c][2])
end

function GetParam(strParam, index)
nLastBegin = 1
for i=1, index - 1 do
nBegin = strfind(strParam, "|", nLastBegin)
nLastBegin = nBegin + 1
end;
num = 1

strnum = strsub(strParam, nLastBegin)
nEnd = strfind(strnum, "|")
if nEnd == nil then 
return strnum
end
str1 = strsub(strnum,1,nEnd -1);
return str1
end;

function GetNpcLevelData(Series, Level, StyleName, ParamStr)
	if(StyleName=="Level1") then
		return floor(Link(Level,{{1,1},{100,35}}))
	end;
	if(StyleName=="Level2" or StyleName=="Level3" or StyleName=="Level4") then
		return floor(Link(Level,{{1,1},{100,60},{101,60}}))
	end;

	if(StyleName=="AIMode") then  
		return ParamStr
	end
	if(StyleName=="AIParam1") then 
		return ParamStr
	end
	if(StyleName=="AIParam2") then 
		return ParamStr
	end
	if(StyleName=="AIParam3") then 
		return ParamStr
	end
	if(StyleName=="AIParam4") then 	
		return ParamStr
	end
	if(StyleName=="AIParam5") then 
		return ParamStr
	end
	if(StyleName=="AIParam6") then 
		return ParamStr
	end
	if(StyleName=="AIParam7") then 
		return ParamStr
	end
	if(StyleName=="AIParam8") then 
		return ParamStr
	end
	if(StyleName=="AIParam9") then 
		return ParamStr
	end
	
	if(StyleName=="Skill1" or StyleName=="Skill2" ) then 
		if(Series==0) then
			return 419
		elseif(Series==1) then
			return 420
		elseif(Series==2) then
			return 421
		elseif(Series==3) then
			return 422
		elseif(Series==4) then
			return 423
		end
		return 418
	end
	
	if( StyleName=="Skill3" or StyleName=="Skill4") then
		if(Series==0) then
			return 424
		elseif(Series==1) then
			return 425
		elseif(Series==2) then
			return 426
		elseif(Series==3) then
			return 427
		elseif(Series==4) then
			return 428
		end
		return 418
	end
	
	if(StyleName=="PhysicalDamageBase") then --ÍâÆÕ¹¥»÷
		-- return floor(5*Level*2/3)
		return floor(5*Level*2/5)
	end;
	if(StyleName=="PhysicalMagicBase") then --s¸t th­¬ng vËt lý
		if(Series==0) then
			-- return floor((Link(Level,{{1,5},{20,50},{60,300},{100,600}})/2)*2/3)
			return floor((Link(Level,{{1,5},{20,5},{60,5},{100,5}})/2)*2/3)
		elseif(Series==1) then
			return 0
		elseif(Series==2) then
			return 0
		elseif(Series==3) then
			return 0
		elseif(Series==4) then
			return 0
		end
		return 100
	end;
	if(StyleName=="PoisonDamageBase") then --Íâ¶¾¹¥»÷
		return 0
	end;
	if(StyleName=="PoisonMagicBase") then --ÄÚ¶¾¹¥»÷
		if(Series==0) then
			return 0
		elseif(Series==1) then
			-- return floor((Link(Level,{{1,5},{20,50},{60,300},{100,600}})/20)*2/3)
			return floor((Link(Level,{{1,5},{20,5},{60,5},{100,5}})/2)*2/3)
		elseif(Series==2) then
			return 0
		elseif(Series==3) then
			return 0
		elseif(Series==4) then
			return 0
		end
		return 100
	end;
	if(StyleName=="ColdDamageBase") then --Íâ±ù¹¥»÷
		return 0
	end;
	if(StyleName=="ColdMagicBase") then --ÄÚ±ù¹¥»÷
		if(Series==0) then
			return 0
		elseif(Series==1) then
			return 0
		elseif(Series==2) then
			-- return floor((Link(Level,{{1,5},{20,50},{60,300},{100,600}})/2)*2/3)
			return floor((Link(Level,{{1,5},{20,5},{60,5},{100,5}})/2)*2/3)
		elseif(Series==3) then
			return 0
		elseif(Series==4) then
			return 0
		end
		return 100
	end;
	if(StyleName=="FireDamageBase") then --Íâ»ð¹¥»÷
		return 0
	end;
	if(StyleName=="FireMagicBase") then --ÄÚ»ð¹¥»÷
		if(Series==0) then
			return 0
		elseif(Series==1) then
			return 0
		elseif(Series==2) then
			return 0
		elseif(Series==3) then
			-- return floor((Link(Level,{{1,5},{20,50},{60,300},{100,600}})/2)*2/3)
			return floor((Link(Level,{{1,5},{20,5},{60,5},{100,5}})/2)*2/3)
		elseif(Series==4) then
			return 0
		end
		return 100
	end;
	if(StyleName=="LightingDamageBase") then --ÍâÀ×¹¥»÷
		return 0
	end
	if(StyleName=="LightingMagicBase") then --ÄÚÀ×¹¥»÷
		if(Series==0) then
			return 0
		elseif(Series==1) then
			return 0
		elseif(Series==2) then
			return 0
		elseif(Series==3) then
			return 0
		elseif(Series==4) then
			-- return floor((Link(Level,{{1,5},{20,50},{60,300},{100,600}})/2)*2/3)
			return floor((Link(Level,{{1,5},{20,5},{60,5},{100,5}})/2)*2/3)
		end
		return 100
	end;
	if(StyleName=="PhysicsResist") then --ÆÕ¿¹
		if(Series==0) then
			return floor(Link(Level,{{1,0},{100,25}}))
		elseif(Series==1) then
			return floor(Link(Level,{{1,0},{20,-10},{60,-15},{100,-30}}))
		elseif(Series==2) then
			return floor(Link(Level,{{1,0},{100,25}}))
		elseif(Series==3) then
			-- return floor(Link(Level,{{1,10},{20,30},{60,70},{100,95}}))
			return floor(Link(Level,{{1,10},{20,20},{60,30},{100,35}}))
		elseif(Series==4) then
			return floor(Link(Level,{{1,0},{100,25}}))
		end
		return 0
	end
	if(StyleName=="ColdResist") then --±ù·À
		if(Series==2) then
			return floor(Link(Level,{{1,0},{100,25}}))
		elseif(Series==3) then
			return floor(Link(Level,{{1,0},{20,-10},{60,-15},{100,-30}}))
		elseif(Series==0) then
			return floor(Link(Level,{{1,0},{100,25}}))
		elseif(Series==4) then
			-- return floor(Link(Level,{{1,10},{20,30},{60,70},{100,95}}))
			return floor(Link(Level,{{1,10},{20,20},{60,30},{100,35}}))
		elseif(Series==1) then
			return floor(Link(Level,{{1,0},{100,25}}))
		end
		return 0
	end
	if(StyleName=="FireResist") then --»ð·À
		if(Series==3) then
			return floor(Link(Level,{{1,0},{100,25}}))
		elseif(Series==0) then
			return floor(Link(Level,{{1,0},{20,-10},{60,-15},{100,-30}}))
		elseif(Series==1) then
			return floor(Link(Level,{{1,0},{100,25}}))
		elseif(Series==2) then
			-- return floor(Link(Level,{{1,10},{20,30},{60,70},{100,95}}))
			return floor(Link(Level,{{1,10},{20,20},{60,30},{100,35}}))
		elseif(Series==4) then
			return floor(Link(Level,{{1,0},{100,25}}))
		end
		return 0
	end
	if(StyleName=="LightResist") then  --À×·À
		if(Series==4) then
			return floor(Link(Level,{{1,0},{100,25}}))
		elseif(Series==3) then
			return floor(Link(Level,{{1,0},{100,25}}))
		elseif(Series==0) then
			return floor(Link(Level,{{1,0},{100,25}}))
		elseif(Series==1) then
			-- return floor(Link(Level,{{1,10},{20,30},{60,70},{100,95}}))
			return floor(Link(Level,{{1,10},{20,20},{60,30},{100,35}}))
		elseif(Series==2) then
			return floor(Link(Level,{{1,0},{20,-10},{60,-15},{100,-30}}))
		end
		return 0
	end
	if(StyleName=="PoisonResist") then  --¶¾·À
		if(Series==1) then
			return floor(Link(Level,{{1,0},{100,25}}))
		elseif(Series==3) then
			return floor(Link(Level,{{1,0},{100,25}}))
		elseif(Series==4) then
			return floor(Link(Level,{{1,0},{20,-10},{60,-15},{100,-30}}))
		elseif(Series==0) then
			-- return floor(Link(Level,{{1,10},{20,30},{60,70},{100,95}}))
			return floor(Link(Level,{{1,10},{20,20},{60,30},{100,35}}))
		elseif(Series==2) then
			return floor(Link(Level,{{1,0},{100,25}}))
		end
		return 0
	end
	
	
Param1 = GetParam(ParamStr,1);
Param2 = GetParam(ParamStr,2);

result = GetData(Level, Param1, Param2);
return result;
end;

function GetNpcKeyData(Series, Level, StyleName, Param1, Param2, Param3)
if (StyleName == "Exp") then
	return GetExp(Level, Param1, Param2);
end;

if (StyleName == "Life") then
	return GetLife(Level, Param1, Param2);
end;

if (StyleName == "AttackRating") then
	if(Level < 30) then
		return GetAttackRating(Level, Param1, Param2)
	end
	return floor(GetAttackRating(Level, Param1, Param2)*1.2);
end;

if (StyleName == "Defense") then
	if(Level < 30) then
		return GetDefense(Level, Param1, Param2)
	end
	return floor(GetDefense(Level, Param1, Param2)*1.1);
end;

if (StyleName == "MinDamage") then
return GetMinDamage(Level, Param1, Param2);
end;

if (StyleName == "MaxDamage") then
return GetMaxDamage(Level, Param1, Param2);
end;

result = Param1 * Level * Level + Param2 * Level + Param3;
return result;
end;

function GetData(Level, Param1, Param2)
result = Param2 * Level + Param1;
return floor(result);
end;

function GetExp(Level, Param1, Param2)
return floor(Param1);
end;

function GetLife(Level, Param1, Param2)
return floor(Param1);
end;

function GetAttackRating(Level, Param1, Param2)

if (Level <= 10) then
DataPara1=10
DataPara2=3
return GetData(Level, DataPara1, DataPara2)
end;

if (Level <= 20) then
DataPara1=50
DataPara2=4
return GetData(Level-10, DataPara1, DataPara2)
end;

if (Level <= 30) then
DataPara1=100
DataPara2=5
return GetData(Level-20, DataPara1, DataPara2)
end;

if (Level <= 40) then
DataPara1=250
DataPara2=5
return GetData(Level-30, DataPara1, DataPara2)
end;

if (Level <= 50) then
DataPara1=400
DataPara2=5
return GetData(Level-40, DataPara1, DataPara2)
end;

if (Level <= 60) then
DataPara1=500
DataPara2=5
return GetData(Level-50, DataPara1, DataPara2)
end;

if (Level <= 70) then
DataPara1=600
DataPara2=5
return GetData(Level-60, DataPara1, DataPara2)
end;

if (Level <= 80) then
DataPara1=700
DataPara2=5
return GetData(Level-70, DataPara1, DataPara2)
end;

if (Level <= 90) then
DataPara1=800
DataPara2=5
return GetData(Level-80, DataPara1, DataPara2)
end;

if (Level <= 100) then
DataPara1=900
DataPara2=5
return GetData(Level-90, DataPara1, DataPara2)
end;

result = Param2 * Level + Param1;
return floor(result);
end;

function GetDefense(Level, Param1, Param2)

if (Level <= 10) then
DataPara1=10
DataPara2=0
return GetData(Level, DataPara1, DataPara2)
end;

if (Level <= 20) then
DataPara1=50
DataPara2=3
return GetData(Level-10, DataPara1, DataPara2)
end;

if (Level <= 30) then
DataPara1=100
DataPara2=5
return GetData(Level-20, DataPara1, DataPara2)
end;

if (Level <= 40) then
DataPara1=150
DataPara2=5
return GetData(Level-30, DataPara1, DataPara2)
end;

if (Level <= 50) then
DataPara1=200
DataPara2=5
return GetData(Level-40, DataPara1, DataPara2)
end;

if (Level <= 60) then
DataPara1=300
DataPara2=5
return GetData(Level-50, DataPara1, DataPara2)
end;

if (Level <= 70) then
DataPara1=400
DataPara2=5
return GetData(Level-60, DataPara1, DataPara2)
end;

if (Level <= 80) then
DataPara1=500
DataPara2=5
return GetData(Level-70, DataPara1, DataPara2)
end;

if (Level <= 90) then
DataPara1=600
DataPara2=5
return GetData(Level-80, DataPara1, DataPara2)
end;

if (Level <= 100) then
DataPara1=800
DataPara2=10
return GetData(Level-90, DataPara1, DataPara2)
end;

result = Param2 * Level + Param1;
return floor(result);
end;

function GetMinDamage(Level, Param1, Param2)

if (Level <= 10) then
DataPara1=3
DataPara2=0.3
return floor(GetData(Level, DataPara1, DataPara2))
end;

if (Level <= 20) then
DataPara1=8
DataPara2=0.3
return floor(GetData(Level-10, DataPara1, DataPara2))
end;

if (Level <= 30) then
DataPara1=13
DataPara2=0.4
return floor(GetData(Level-20, DataPara1, DataPara2))
end;

if (Level <= 40) then
DataPara1=20
DataPara2=0.5
return floor(GetData(Level-30, DataPara1, DataPara2))
end;

if (Level <= 50) then
DataPara1=29
DataPara2=0.5
return floor(GetData(Level-40, DataPara1, DataPara2))
end;

if (Level <= 60) then
DataPara1=39
DataPara2=0.6
return floor(GetData(Level-50, DataPara1, DataPara2))
end;

if (Level <= 70) then
DataPara1=50
DataPara2=0.7
return floor(GetData(Level-60, DataPara1, DataPara2))
end;

if (Level <= 80) then
DataPara1=65
DataPara2=0.8
return floor(GetData(Level-70, DataPara1, DataPara2))
end;

if (Level <= 90) then
DataPara1=85
DataPara2=0.9
return floor(GetData(Level-80, DataPara1, DataPara2))
end;

if (Level <= 100) then
DataPara1=112
DataPara2=1
return floor(GetData(Level-90, DataPara1, DataPara2))
end;

result = Param2 * Level + Param1;
return floor(result);
end;

function GetMaxDamage(Level, Param1, Param2)

if (Level <= 10) then
DataPara1=3
DataPara2=0.3
return floor(GetData(Level, DataPara1, DataPara2))
end;

if (Level <= 20) then
DataPara1=8
DataPara2=0.3
return floor(GetData(Level-10, DataPara1, DataPara2))
end;

if (Level <= 30) then
DataPara1=13
DataPara2=0.4
return floor(GetData(Level-20, DataPara1, DataPara2))
end;

if (Level <= 40) then
DataPara1=20
DataPara2=0.5
return floor(GetData(Level-30, DataPara1, DataPara2))
end;

if (Level <= 50) then
DataPara1=29
DataPara2=0.5
return floor(GetData(Level-40, DataPara1, DataPara2))
end;

if (Level <= 60) then
DataPara1=39
DataPara2=0.6
return floor(GetData(Level-50, DataPara1, DataPara2))
end;

if (Level <= 70) then
DataPara1=50
DataPara2=0.7
return floor(GetData(Level-60, DataPara1, DataPara2))
end;

if (Level <= 80) then
DataPara1=65
DataPara2=0.8
return floor(GetData(Level-70, DataPara1, DataPara2))
end;

if (Level <= 90) then
DataPara1=85
DataPara2=0.9
return floor(GetData(Level-80, DataPara1, DataPara2))
end;

if (Level <= 100) then
DataPara1=112
DataPara2=1
return floor(GetData(Level-90, DataPara1, DataPara2))
end;

result = Param2 * Level + Param1;
return floor(result);
end;

