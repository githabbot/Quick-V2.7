do

function run(msg, matches)
send_contact(get_receiver(msg), "+1 302 300 3275", "", "ＱＵＩＣＫＧＵＡＲＤ", ok_cb, false)
end

return {
patterns = {
"^!share$"

},
run = run
}

end
--#BY AMIR
