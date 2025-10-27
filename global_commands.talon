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
open settings: key(cmd-,)

# accessibility
speak this: key(alt-esc)
tee sleep: speech.disable()

# text formatting
bold it: key(cmd-b)
italicize it: key(cmd-i)
underline it: key(cmd-u)
link it: key(cmd-k)
copy it: key(cmd-c)
cut it: key(cmd-x)
paste it: key(cmd-v)
paste in place: key(cmd-alt-shift-v)
undo it: key(cmd-z)
redo it: key(cmd-y)
chuck it:
  key(ctrl-a)
  key(ctrl-k)
chuck line:
  key(cmd-right)
  key(cmd-backspace)
  key(backspace)
chuck leftest: key(cmd-backspace)
chuck rightest: key(ctrl-k)
chomp it: key(alt-backspace)
gobble it: key(alt-delete)

record screen: key(cmd-shift-5)
[show] app windows:
  key(esc)
  sleep(250ms)
  key(ctrl-down)
[show] all windows:
  key(esc)
  sleep(250ms)
  key(ctrl-up)

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

insert [markdown] (todo | checkbox): insert("- [ ] ")

# there must be a better way to do this -_-
time <user.number_string>:
  insert(user.number_string)
  key(left)
  key(left)
  insert(":")
  key(right)
  key(right)
  key(space)

# home row
row search [<user.text>]:
  key(cmd-alt-l)
  sleep(200ms)
  insert(user.text or "")
(row|clickable): key(cmd-shift-space)
scroll mode: key(cmd-shift-j)

spotlight [<user.text>]:
  key(cmd-space)
  sleep(200ms)
  insert(user.text or "")
emoji [<user.text>]:
  key(cmd-ctrl-space)
  sleep(300ms)
  insert(user.text or "")
ask ay eye [<user.text>]:
  key(alt-space)
  sleep(200ms)
  insert(user.text or "")

# command line
quit proc: key(ctrl-c)
(exit | leave) proc: key(ctrl-d)

# binti specific commands
jira [link] [<user.number_string>]:
  insert("[ENG-{user.number_string}](https://binti.atlassian.net/browse/ENG-{user.number_string}) ")
PR link [<user.number_string>]:
  insert("[PR #{user.number_string}](https://github.com/binti-family/family/pull/{user.number_string}) ")
PR path [<user.number_string>]:
  insert("https://github.com/binti-family/family/pull/{user.number_string} ")
insert work email: insert("kai@binti.com")

# experimental
# insert time [<user.number_string>] [<user.digit_string>]:
#   insert("{user.number_string}:{user.digit_string}")
