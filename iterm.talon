os: mac
app: iterm2
-
focus right: key(cmd-])
focus left: key(cmd-[)

# binti commands
(be command|binti) [<user.text>]:
  insert("b ")
  user.insert_formatted(user.text, "DASH_SEPARATED")
  insert(" ")

binti console [<user.text>]:
  insert("b k8s-railsc -e ")
  user.insert_formatted(user.text, "DASH_SEPARATED")

binti shell [<user.text>]:
  insert("b k8s-shell -e ")
  user.insert_formatted(user.text, "DASH_SEPARATED")

[binti] cloud credentials:
  insert("b gcloud-credentials")
