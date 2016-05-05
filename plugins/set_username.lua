+local function run(msg, matches)
 +  if not is_momod(msg) then
 +      return nil
 +    end
 +--create by RoyalTeam ID CHANNEL : @RoyalTeamCh	
 +  local username = matches[1]
 +  local chat = 'channel#id'..msg.to.id
 +  
 +  if msg.to.type == 'channel' then
 +    print('addabout '..chat..' to '..text)
 +    channel_set_username(chat, username, ok_cb, false)
 +    return 'username \n@'..username..'\nsaved'
 +  else
 +    return 'username not save'
 +  end  
 +end
 +--create by danger
 +return {
 +  description = "set channel topic",
 +  usage = "!topic [whatever]: set channel topic",
 +  patterns = {
 +    "^[!/#]setusername +(.+)$"
 +  }, 
 +  run = run 
 +} 
