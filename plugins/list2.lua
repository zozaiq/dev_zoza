do

local function run(msg, macthes)
local reply_id = msg['id']
if is_momod(msg) and macthes[1] == 'list2' then
    local text = [[
	🔹اوامر الحماية داخل المجموعة 🔹
🔹➖🔸➖🔹➖🔸➖🔹➖🔸
🔹/kick + <user|reply> :  طرد | ⛔️
🔹/silent + <user|reply> : كتم | 🔕
🔹/block + <user|reply>: بلوك | ♨️
🔹/ban + <user|reply>: حظر | 🚷
🔹/unban + <user> : الغاء الحظر | ⭕️
🔹/banlist : المحظورين | 🆘
🔹/id : ايدي | 🆔
🔹/kickme : مغادرة | 🚫
🔹➖🔸➖🔹➖🔸➖🔹➖🔸
🔹 اوامر القفل والفتح في المجموعة | ✂️
🔹➖🔸➖🔹➖🔸➖🔹➖🔸
/p audio : منع الصوتيات | 🔊
/p photo : منع الصور | 🌠
/p video : منع الفديوات | 🎥
/p gifs : منع الصور المتحركة | 🎡
/p doc : منع الملفات | 🗂
/p text : منع الكتابة | 📝
/p all : تفعيل وضع الصمت | 🔕
🔹➖🔸➖🔹➖🔸➖🔹➖🔸
/p — للمنع  /d — للسماح
🔹➖🔸➖🔹➖🔸➖🔹➖🔸
/k ↴ 🔒 اقفل | /n ↴ 🔓 افتح
links : الروابط | 🔗
contacts : جهات الاتصال | 📵
flood : التكرارات | 🔐
spam : الكلايش الطويلة | 📊
member : اضافة الاعضاء | 👤
rtl : الرتل | 🚸
tgservice : اشعارات الدخول | ⚛
sticker : الملصقات | 🎡
bots : البوتات | 🤖
fwd : اعادة التوجيه | ↩️
join : الدخول عبر الرابط | 🚷
media : الميديا | 🆘
badword : الكلمات السيئة | 🏧
leave : المغادرة | 🚶
strict : الحماية | ⛔️
all : الكل | 🔕
🔹➖🔸➖🔹➖🔸➖🔹➖🔸
🔹طريقة استخدام الاوامر 🔹
🔒/k +  للقفل — الامر  
🔓/n + للفتح — الامر 
🔹➖🔸➖🔹➖🔸➖🔹➖🔸
Channel : @DevHelpTv 🎗
	]]
	reply_msg(reply_id, text, ok_cb, false)
	end
	
	local reply_id = msg ['id']
	if not is_momod(msg) then
	local text = "Only managers 😐⛔️"
	reply_msg(reply_id, text, ok_cb, false)
	end
	
end
return {
    patterns ={
	"^[/!#]([Ll][Ii][Ss][Tt]2)$",
	"[/!#](list2)$"
	},
	run = run,
}
end 