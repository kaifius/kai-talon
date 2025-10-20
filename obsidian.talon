# TODO do a proper integration and don't rely on keyboard shortcuts
app: obsidian
-
#=========================== navigation / view ==============================#
please [<user.text>]:
  key(cmd-shift-k)
  sleep(100ms)
  insert(user.text)
[open] preferences: key(cmd-,)
go back: key(cmd-alt-left)
go forward: key(cmd-alt-right)
# go to line number
go [<user.number_string>]:
  key(ctrl-g)
  sleep(100ms)
  insert(user.number_string)
  key(enter)
  key(cmd-right)

# a little clunky, but this is the same as above without hitting enter at the
# end so that you can type :[column number] after the line number, because I
# haven't figured out how to take two number arguments in one talon command
go line [<user.number_string>]:
  key(ctrl-g)
  sleep(100ms)
  insert(user.number_string)

go heading [<user.text>]:
  key(cmd-shift-h)
  sleep(100ms)
  insert(user.text)
  key(enter)

next heading: key(ctrl-shift-k)
previous heading: key(ctrl-shift-j)

bar right: key(cmd-r)
bar left: key(cmd-shift-r)

follow link: key(cmd-enter)

#========================== list management ===========================#
# Hotkeys++
toggle to do: key(cmd-m)
toggle list: key(cmd-shift-m)

# TODO do a proper integration; this only works on one line, unchecked todos
migrate to do:
  # copy line
  key(cmd-right)
  key(cmd-shift-left)
  key(cmd-c)

  # change checkbox to ">"
  key(left)
  key(alt-backspace)
  key(alt-backspace)
  insert("> ")

# TODO do a proper integration; this only works on one line, unchecked todos
partial check to do:
  # copy line
  key(cmd-right)
  key(cmd-shift-left)
  key(cmd-c)

  # change checkbox to "/"
  key(left)
  key(alt-backspace)
  key(alt-backspace)
  insert("/ ")

# TODO do a proper integration; this only works on one line, unchecked todos
strike to do:
  # strike through line
  key(cmd-right)
  key(cmd-shift-left)
  key(cmd-shift-x)

  # delete checkbox
  key(cmd-left)
  key(alt-backspace)
  key(alt-backspace)

#=========================== text editing =============================#
(dedent|didn't|detent): key(cmd-[)
indent: key(cmd-])

# self-defined hotkeys via Hotkeys++
chuck line: key(ctrl-k)
[line] copy down: key(alt-shift-down)
[line] copy up: key(alt-shift-up)
[line] move up: key(alt-up)
[line] move down: key(alt-down)
drop this: key(ctrl-shift-enter)
float this: key(ctrl-enter)
quote this: key(cmd-.)
embed links: key(cmd-shift-1)
toggle line length: key(alt-w)
trim this: key(alt-shift-t)

# self-defined hotkeys via Code Editor Shortcuts
cursify: key(alt-shift-i)

#=========================== tab management ===========================#
# self-defined hotkeys
[tab] focus right: key(cmd-alt-shift-right)
[tab] focus left: key(cmd-alt-shift-left)
[tab] focus up: key(cmd-alt-shift-up)
[tab] focus down: key(cmd-alt-shift-down)

# self-defined hotkeys via tab-shifter
[tab] move right: key(cmd-ctrl-])
[tab] move left: key(cmd-ctrl-[)

tab new: key(cmd-t)

#============================= day planner ============================#
planner tag [<user.text>]:
  key(cmd-right)
  insert(" \[")
  user.insert_formatted(user.text, "DASH_SEPARATED")
  insert("]")
