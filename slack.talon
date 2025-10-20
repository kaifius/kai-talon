app: slack
-
space next: key(cmd-shift-])
space last: key(cmd-shift-[)

thread next: key(alt-down)
thread last: key(alt-up)

tab next: key(alt-down)
tab last: key(alt-up)

mention [<user.text>]:
  key("@")
  insert(user.text)

emote [<user.text>]:
  key(":")
  user.insert_formatted(user.text, "NO_SPACES")

channel <user.text>:
  user.messaging_open_channel_picker()
  sleep(200ms)
  insert(user.formatted_text(user.text, "ALL_LOWERCASE"))
