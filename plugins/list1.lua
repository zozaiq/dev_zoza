do

local function run(msg, macthes)
local reply_id = msg['id']
if is_momod(msg) and macthes[1] == 'list1' then
    local text = [[
🔹اوامر ادارة المجموعات 🔹
🔹➖🔸➖🔹➖🔸➖🔹➖🔸
🔹/who : قائمة الاعضاء | 👥
🔹/gpinfo : معلومات الكروب | 💢
🔹/settings : الاعدادات | ⚙
🔹➖🔸➖🔹➖🔸➖🔹➖🔸
🔹/promote : رفع ادمن | ➕
🔹/demote : تنزيل ادمن | ✖️
🔹/setadmin : رفع اداري | 🔝
🔹/demoteadmin : تنزيل اداري | 🔙
🔹/admins : قائمة الادمنية | 👥
🔹➖🔸➖🔹➖🔸➖🔹➖🔸
🔹/link : رابط الكروب | 🔗
🔹/setlink : وضع رابط | 📌
🔹/newlink : رابط جديد | 🆕
🔹➖🔸➖🔹➖🔸➖🔹➖🔸
🔹/setrules + وضع قوانين : القوانين | ⚙
🔹/rules : رؤية القوانين : 👁
🔹/setabout + وضع وصف : الوصف | 🔧
🔹/setname + وضع اسم : اسم | 🎫
🔹/setphoto : وضع صوره | 🎡
🔹➖🔸➖🔹➖🔸➖🔹➖🔸
/c ↴ حذف ⛔️
🔹-rules :  القوانين | 🎌
🔹-about : الوصف | 📃
🔹-modlist : الادمنية | 👥
🔹-muteuser : المكتومين | 🗣
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
	"^[/!#]([Ll][Ii][Ss][Tt]1)$",
	"[/!#](list1)$"
	},
	run = run,
}
end 