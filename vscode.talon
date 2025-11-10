app: vscode
-

# window navigation
focus right: user.vscode("workbench.action.focusRightGroup")
focus left: user.vscode("workbench.action.focusLeftGroup")
move right: user.vscode("workbench.action.moveEditorToNextGroup")
move left: user.vscode("workbench.action.moveEditorToPreviousGroup")
edit: user.vscode("workbench.action.focusActiveEditorGroup")
pain split: user.vscode("workbench.action.splitEditorToNextGroup")
# this needs to be a separate command from above to override some existing different
# behavior for "split right"
split right: user.vscode("workbench.action.splitEditorToNextGroup")
split left: user.vscode("workbench.action.splitEditorToPreviousGroup")
split up: user.vscode("workbench.action.splitEditorUp")
split down: user.vscode("workbench.action.splitEditorDown")
(tab close all | close it all): user.vscode("workbench.action.closeAllEditors")
# use keyboard shortcuts to get context-specific use
# (i.e. make it work in the terminal)
tab next: key(cmd-shift-])
tab last: key(cmd-shift-[)
go back: user.vscode("workbench.action.navigateBack")
go forward: user.vscode("workbench.action.navigateForward")

# line commands
line select: user.vscode("expandLineSelection")
line copy down: user.vscode("editor.action.copyLinesDownAction")
line copy up: user.vscode("editor.action.copyLinesUpAction")
line move down: user.vscode("editor.action.moveLinesDownAction")
line move up: user.vscode("editor.action.moveLinesUpAction")
comment: user.vscode("editor.action.commentLine")
comment it: user.vscode("editor.action.commentLine")
# TODO
# line indent: user.vscode("")
# line dedent: user.vscode("")
# indent: user.vscode("")
# dedent: user.vscode("")

# terminal commands
# can't use "focus term" because that is used to switch to the iTerm app
(go term | term it): user.vscode("workbench.action.terminal.focus")
term switch: user.vscode("workbench.action.terminal.toggleTerminal")
term bigger: user.vscode("workbench.action.terminal.resizePaneUp")
term smaller: user.vscode("workbench.action.terminal.resizePaneDown")
term max: user.vscode("workbench.action.toggleMaximizedPanel")
term min: user.vscode("workbench.action.toggleMaximizedPanel")

# TODO
# term hide: user.vscode("")
# commit temp:
#   user.vscode("workbench.acition.terminal.focus")
#   insert("tempcommit")
# reset (temp | tem | ten) commit:
#   user.vscode("workbench.acition.terminal.focus")
#   insert("resetTempCommit")

# cursorless commands
switch hats: user.vscode("cursorless.toggleDecorations")
cursorless hats: user.vscode("cursorless.toggleDecorations")

# misc commands
copy path: user.vscode("copyRelativeFilePath")
copy permalink: user.vscode("copy-github-permalink.copy")
toggle wrap: user.vscode("editor.action.toggleWordWrap")
grep it [<user.text>]:
  user.vscode("workbench.action.findInFiles")
  sleep(200ms)
  insert(user.text)
file save as: user.vscode("workbench.action.files.saveAs")
to do this: insert("# TODO ")
go to test: user.vscode("extension.goToTest")
# TODO make these more specific
(process | proc) quit: key("ctrl-c")
(process | proc) exit: key("ctrl-d")
code obsidian:
  user.vscode("workbench.action.terminal.focus")
  insert("codeObsidian")
cursify: user.vscode("editor.action.insertCursorAtEndOfEachLineSelected")

# git commands
git status:
  user.vscode("workbench.action.terminal.focus")
  insert("git status -sb")

git diff:
  user.vscode("workbench.action.terminal.focus")
  insert("git icdiff")

git (change|changed):
  user.vscode("workbench.action.terminal.focus")
  insert("git changed")

git diff (staged | stage):
  user.vscode("workbench.action.terminal.focus")
  insert("git icdiff --staged")

git add [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git add ")
  insert(user.text or "")

git add patch:
  user.vscode("workbench.action.terminal.focus")
  insert("git add -p")

git commit [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git commit -m \"\"")
  key(left)
  insert(user.text or "")

git add and commit:
  user.vscode("workbench.action.terminal.focus")
  insert("git add .; git commit -m \"\"")
  key(left)

git commit long:
  user.vscode("workbench.action.terminal.focus")
  insert("git commit")

git add and commit long:
  user.vscode("workbench.action.terminal.focus")
  insert("git add .; git commit")

git (commit amend | amend):
  user.vscode("workbench.action.terminal.focus")
  insert("git commit --amend")

git push:
  user.vscode("workbench.action.terminal.focus")
  insert("git push")

git push force:
  user.vscode("workbench.action.terminal.focus")
  insert("git push -f")

git log [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git lg ")
  user.insert_formatted(user.text, "DASH_SEPARATED")

git reset [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git reset ")
  user.insert_formatted(user.text, "DASH_SEPARATED")

git reset hard [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git reset --hard ")
  user.insert_formatted(user.text, "DASH_SEPARATED")

git (co | checkout) [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git checkout ")
  user.insert_formatted(user.text, "DASH_SEPARATED")

git (co | checkout) kai [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git checkout kai/")
  user.insert_formatted(user.text, "DASH_SEPARATED")

git (co | checkout) main:
  user.vscode("workbench.action.terminal.focus")
  insert("git checkout main ")

git pull:
  user.vscode("workbench.action.terminal.focus")
  insert("git pull ")

git fetch:
  user.vscode("workbench.action.terminal.focus")
  insert("git fetch ")

get latest:
  user.vscode("workbench.action.terminal.focus")
  insert("git checkout main && git pull origin main --prune && git fetch")

git (co | checkout) last:
  user.vscode("workbench.action.terminal.focus")
  insert("git checkout -")

git (co | branch) new [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git checkout -b ")
  user.insert_formatted(user.text, "DASH_SEPARATED")

git (co | branch) new kai [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git checkout -b kai/")
  user.insert_formatted(user.text, "DASH_SEPARATED")

git branch:
  user.vscode("workbench.action.terminal.focus")
  insert("git branch ")

git branch move [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git branch -m ")
  user.insert_formatted(user.text, "DASH_SEPARATED")

# TODO is there away to pass in 'force' 'kai' as arguments so that these four
# methods can be collapsed into one?
git branch delete [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git branch -d ")
  user.insert_formatted(user.text, "DASH_SEPARATED")

git branch delete kai [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git branch -d kai/")
  user.insert_formatted(user.text, "DASH_SEPARATED")

git branch force delete [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git branch -D ")
  user.insert_formatted(user.text, "DASH_SEPARATED")

git branch force delete kai [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git branch -D kai/")
  user.insert_formatted(user.text, "DASH_SEPARATED")

git rebase [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git rebase ")
  user.insert_formatted(user.text, "DASH_SEPARATED")

git rebase last:
  user.vscode("workbench.action.terminal.focus")
  insert("git rebase -")

git stash:
  user.vscode("workbench.action.terminal.focus")
  insert("git stash")

git stash save [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git stash save \"\"")
  key(left)
  insert(user.text or "")

git stash pop:
  user.vscode("workbench.action.terminal.focus")
  insert("git stash pop")

git stash list:
  user.vscode("workbench.action.terminal.focus")
  insert("git stash list")

# TODO don't use my aliases for these?
temp commit:
  user.vscode("workbench.action.terminal.focus")
  insert("tempcommit")

reset temp commit:
  user.vscode("workbench.action.terminal.focus")
  insert("resetTempCommit")

open changed files:
  user.vscode("workbench.action.terminal.focus")
  insert("openChangedFiles")

copy branch name:
  user.vscode("workbench.action.terminal.focus")
  insert("git branch --show-current | pbcopy")

# gh cli commands
open PR:
  user.vscode("workbench.action.terminal.focus")
  insert("gh pr view --web")

draft PR:
  user.vscode("workbench.action.terminal.focus")
  insert("gh pr create --fill --draft")

ready PR:
  user.vscode("workbench.action.terminal.focus")
  insert("gh pr create --fill")

# code commands
# todo e.g. "insert rspec it block"

# rails commands
bundle [install]:
  user.vscode("workbench.action.terminal.focus")
  insert("bundle install")

# TODO implement this without using clipboard?
rspec this:
  user.vscode("copyRelativeFilePath")
  user.vscode("workbench.action.terminal.focus")
  insert("rspec ")
  edit.paste()

rake db rollback:
  user.vscode("workbench.action.terminal.focus")
  insert("rake db:rollback")
rake db rollback step [<user.number_string>]:
  user.vscode("workbench.action.terminal.focus")
  insert("rake db:rollback STEP={user.number_string}")
rake db [migrate] status:
  user.vscode("workbench.action.terminal.focus")
  insert("rake db:migrate:status")
rake db migrate:
  user.vscode("workbench.action.terminal.focus")
  insert("b db-migrate")
rake run [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("rake ")
  user.insert_formatted(user.text, "SNAKE_CASE")

# binti commands
(be command|binti) [<user.text>] [args]:
  user.vscode("workbench.action.terminal.focus")
  insert("b ")
  user.insert_formatted(user.text, "DASH_SEPARATED")
  insert(" ")

snapshot load [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("b db-load-snapshot ")
  insert(user.text)

snapshot load pre prod:
  user.vscode("workbench.action.terminal.focus")
  insert("b db-load-snapshot pre-prod")

start server:
  user.vscode("workbench.action.terminal.focus")
  insert("rails server")

open console:
  user.vscode("workbench.action.terminal.focus")
  insert("rails console")

over mind start:
  user.vscode("workbench.action.terminal.focus")
  insert("overmind start")

over mind start no web:
  user.vscode("workbench.action.terminal.focus")
  insert("overmind start -x web")

over mind stop:
  user.vscode("workbench.action.terminal.focus")
  insert("overmind stop")

go new [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("go new ")
  user.insert_formatted(user.text, "DASH_SEPARATED")

go branch [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("go ")
  user.insert_formatted(user.text, "DASH_SEPARATED")

branches with [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("branchesWith ")
  user.insert_formatted(user.text, "DASH_SEPARATED")

[force] delete branches with [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("forceDeleteBranchesWith ")
  user.insert_formatted(user.text, "DASH_SEPARATED")
