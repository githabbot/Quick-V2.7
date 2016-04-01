local lock = 1
local txt = "\n\nmaked by:@QuickGuardTEAM" --— shared by @BeatBot_Team
local function callback(extra, success, result) --— Calback Bara Load Kardn ax
  if success then
    local file = 'sticker/sticker.webp'
    print('File downloaded to:', result)
     os.rename(result, file)
     print('File moved to:', file)
     
  else
    print('Error downloading: '..extra)
  end
end
--—khob berim function run ro benvisim 
local function run(msg, matches)
local file = 'sticker/sticker.webp'

if msg.to.type == 'chat' then

if matches[1]== "استیکر ساز خاموش" or  matches[1]== "استیکر ساز روشن" then
    if is_owner(msg) then
lock = 1
return "Sticker Maker Locked ! \nNow Only [Sudo,Admin,Owner]'s can Be Use it"
else
return "Only For Sudo !"
end
end

--—------------------------------
if matches[1] == "استیکر"or matches[1] == "استیکر کن"or matches[1] == "تبدیل به استیکر" then
    if lock == 0 then
    send_document(get_receiver(msg), "./"..file, ok_cb, false)
    return 'بصبر'..txt
else
    if is_momod(msg) then 
        send_document(get_receiver(msg), "./"..file, ok_cb, false)
    return 'بصبر '..txt
   end
   if not is_momod(msg) then
    return "Sticker Maker Is Locked For Members !"..txt
    end
end
end
if matches[1] == "Sticker" then
    if lock == 0 then
    send_document(get_receiver(msg), "./"..file, ok_cb, false)
    return 'بصبر '..txt
else
    if is_momod(msg) then 
        send_document(get_receiver(msg), "./"..file, ok_cb, false)
    return 'بصبر '..txt
   end
   if not is_momod(msg) then
    return "Sticker Maker Is Locked For Members !"..txt
    end
end
end

if matches[1] == "show sticker" or matches[1] == "Show sticker" then
if lock == 1 then
    return 'Sticker Maker : Lock'
else
return 'Sticker Maker : Unlock'    
end

end
if msg.media then
    if msg.media.type == 'photo' then
        
      load_photo(msg.id, callback, msg.id)
      if lock == 0 then
             return 'Photo Saved ! \nFor Get This Photo Sticker Type Sticker And Send To Me'..txt
    else
        return ''
    end
    
end

   
end
else
return 'Sticker Make Only Work In My Groups !'..text
end

   end

return {
  patterns = {
  "^استیکر$",  
  "^استیکر کن$", 
  "^تبدیل به استیکر$",
  "^[Ss]how sticker$",
  "^استیکر ساز خاموش$",
  "^استیکر ساز روشن$",
    '%[(photo)%]'
  },
  run = run
}
--—tnx to @xx_mersad_xx
