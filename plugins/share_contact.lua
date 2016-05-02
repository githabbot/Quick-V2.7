do

function run(msg, matches)
send_contact(get_receiver(msg), "+1 425 312 7492", "", "вøøмяαиge", ok_cb, false)
end

return {
patterns = {
"^!share$"

},
run = run
}

end
--#BY AMIR
