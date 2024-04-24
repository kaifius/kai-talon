app: vscode
-

# window navigation
focus right: user.vscode("workbench.action.focusRightGroup")
focus left: user.vscode("workbench.action.focusLeftGroup")
move right: user.vscode("workbench.action.moveEditorToNextGroup")
move left: user.vscode("workbench.action.moveEditorToPreviousGroup")
edit: user.vscode("workbench.action.focusActiveEditorGroup")
term: user.vscode("workbench.action.terminal.focus")
term it: user.vscode("workbench.action.terminal.focus")

# line commands
line select: user.vscode("expandLineSelection")
line copy down: user.vscode("editor.action.copyLinesDownAction")
line copy up: user.vscode("editor.action.copyLinesUpAction")
line move down: user.vscode("editor.action.moveLinesDownAction")
line move up: user.vscode("editor.action.moveLinesUpAction")
line comment: user.vscode("editor.action.commentLine")

# terminal commands
term bigger: user.vscode("workbench.action.terminal.resizePaneUp")
term smaller: user.vscode("workbench.action.terminal.resizePaneDown")
term max: user.vscode("workbench.action.toggleMaximizedPanel")
term min: user.vscode("workbench.action.toggleMaximizedPanel")

# git commands
git status:
  user.vscode("workbench.action.terminal.focus")
  insert("git status -sb")

git diff:
  user.vscode("workbench.action.terminal.focus")
  insert("git icdiff")

git add:
  user.vscode("workbench.action.terminal.focus")
  insert("git add .")

git add patch:
  user.vscode("workbench.action.terminal.focus")
  insert("git add -p")

git commit:
  user.vscode("workbench.action.terminal.focus")
  insert("git commit -m \"\"")
  key(left)

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

git commit amend:
  user.vscode("workbench.action.terminal.focus")
  insert("git commit --amend")

git push:
  user.vscode("workbench.action.terminal.focus")
  insert("git push")

git log:
  user.vscode("workbench.action.terminal.focus")
  insert("git lg")

git reset:
  user.vscode("workbench.action.terminal.focus")
  insert("git reset")
