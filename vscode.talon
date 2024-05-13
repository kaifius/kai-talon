app: vscode
-

# window navigation
focus right: user.vscode("workbench.action.focusRightGroup")
focus left: user.vscode("workbench.action.focusLeftGroup")
move right: user.vscode("workbench.action.moveEditorToNextGroup")
move left: user.vscode("workbench.action.moveEditorToPreviousGroup")
edit: user.vscode("workbench.action.focusActiveEditorGroup")
(term | term it): user.vscode("workbench.action.terminal.focus")
close it all: user.vscode("workbench.action.closeAllEditors")

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
  insert(user.text or "")

git reset [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git reset ")
  insert(user.text or "")

git reset hard [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git reset --hard ")
  insert(user.text or "")

git co [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git checkout ")
  insert(user.text or "")

git co main:
  user.vscode("workbench.action.terminal.focus")
  insert("git checkout main && git pull origin main --prune && git fetch")

git (co | branch) new [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git checkout -b ")
  insert(user.text or "")

git branch:
  user.vscode("workbench.action.terminal.focus")
  insert("git branch ")

git branch move [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git branch -m ")
  insert(user.text or "")

git branch delete [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git branch -d ")
  insert(user.text or "")

git branch force delete [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git branch -D ")
  insert(user.text or "")

git rebase [<user.text>]:
  user.vscode("workbench.action.terminal.focus")
  insert("git rebase ")
  insert(user.text or "")

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
