--\script\中原南区\扬州\npc\扬州_宠物老板娘对话.lua

function main()
	return Say("<color=orange>Ch� ti謒 v藅 nu玦<color>: Ta chuy猲 cung c蕄 c竎 nhu y誹 ph萴 cho v藅 nu玦, ch糿g hay c竎 h� n ti謒 mu鑞 mua g�?", 2, "Giao d辌h/gdnow", "th玦/No")
end

function gdnow()
	Sale(192)
end

function No() return end