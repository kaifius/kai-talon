find it [<user.text>]:
  key(cmd-f)
  insert(user.text or "")
save it: key(cmd-s)
close it: key(cmd-w)
quit it: key(cmd-q)
open it: key(cmd-o)
search it: key(cmd-t)
focus last: key(cmd-tab)
new it: key(cmd-n)

bold it: key(cmd-b)
italicize it: key(cmd-i)
underline it: key(cmd-u)
link it: key(cmd-k)

test input [<user.text>]:
  insert("this is a test-24")
  insert(user.text)
  # insert("this is a test")
  # insert("this is a test")


copy it: key(cmd-c)
cut it: key(cmd-x)
paste it: key(cmd-v)
paste in place: key(cmd-alt-shift-v)
undo it: key(cmd-z)
redo it: key(cmd-y)
chuck it:
  key(ctrl-a)
  key(ctrl-k)
chuck leftest: key(cmd-backspace)
chuck rightest: key(ctrl-k)
chomp it: key(alt-backspace)
gobble it: key(alt-delete)

start recording: key(cmd-shift-5)
stop recording: key(f9)

rightest: key(cmd-right)
leftest: key(cmd-left)
downest: key(cmd-down)
uppest: key(cmd-up)
select rightest: key(cmd-shift-right)
select leftest: key(cmd-shift-left)
select downest: key(cmd-shift-down)
select uppest: key(cmd-shift-up)
hop left: key(alt-left)
hop right: key(alt-right)

tab next: key(cmd-shift-])
tab last: key(cmd-shift-[)

row search [<user.text>]:
  key(cmd-alt-l)
  sleep(200ms)
  insert(user.text or "")
row: key(cmd-shift-space)
clickable: key(cmd-shift-space)

spotlight [<user.text>]:
  key(cmd-space)
  insert(user.text or "")
emoji: key(cmd-ctrl-space)

# command line
quit proc: key(ctrl-c)
(exit | leave) proc: key(ctrl-d)

# binti specific commands
jira link [<user.number_string>]:
  insert("[ENG-{user.number_string}](https://binti.atlassian.net/browse/ENG-{user.number_string})")
insert work email: insert("kai@binti.com")
