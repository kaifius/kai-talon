app: vscode
-

# window navigation
[pane] focus right: user.vscode("workbench.action.focusRightGroup")
[pane] focus left: user.vscode("workbench.action.focusLeftGroup")
[pane] move right: user.vscode("workbench.action.moveEditorToNextGroup")
[pane] move left: user.vscode("workbench.action.moveEditorToPreviousGroup")
[pane] edit: user.vscode("workbench.action.focusActiveEditorGroup")
pane split [right]: user.vscode("workbench.action.splitEditor")
pane split left: user.vscode("workbench.action.splitEditorLeft")
pane split up: user.vscode("workbench.action.splitEditorUp")
pane split down: user.vscode("workbench.action.splitEditorDown")
(term | term it): user.vscode("workbench.action.terminal.focus")
close it all: user.vscode("workbench.action.closeAllEditors")
# use keyboard shortcuts to get context-specific use
# (i.e. make it work in the terminal)
tab next: key(cmd-shift-])
tab last: key(cmd-shift-[)

# line commands
line select: user.vscode("expandLineSelection")
line copy down: user.vscode("editor.action.copyLinesDownAction")
line copy up: user.vscode("editor.action.copyLinesUpAction")
line move down: user.vscode("editor.action.moveLinesDownAction")
line move up: user.vscode("editor.action.moveLinesUpAction")
line comment: user.vscode("editor.action.commentLine")
comment it: user.vscode("editor.action.commentLine")
# TODO
# line indent: user.vscode("")
# line dedent: user.vscode("")
# indent: user.vscode("")
# dedent: user.vscode("")

# terminal commands
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
toggle wrap: user.vscode("editor.action.toggleWordWrap")
grep it [<user.text>]:
  user.vscode("workbench.action.findInFiles")
  insert(user.text)

# git commands
git status:
  user.vscode("workbench.action.terminal.focus")
  insert("git status -sb")

git diff:
  user.vscode("workbench.action.terminal.focus")
  insert("git icdiff")

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

git branch delete [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git branch -d ")
  user.insert_formatted(user.text, "DASH_SEPARATED")

git branch force delete [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git branch -D ")
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

# rails commands
bundle [install]:
  user.vscode("workbench.action.terminal.focus")
  insert("bundle install")

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
  insert("b rails-server")

over mind start:
  user.vscode("workbench.action.terminal.focus")
  insert("overmind start")

over mind stop:
  user.vscode("workbench.action.terminal.focus")
  insert("overmind stop")
