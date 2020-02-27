#!/usr/bin/env bash

git config --global pull.rebase true
git config --global log.decorate true
git config --global format.pretty format:"%h %C(yellow)%ci%C(reset) %C(green)%an%C(reset) |%C(yellow)%C(bold)%d%C(reset) %s"

commit='commit -S'
git config --global alias.a 'add'
git config --global alias.aa 'add .'
git config --global alias.amend "$commit --amend --no-edit"
git config --global alias.cm "$commit -m"
git config --global alias.co checkout
git config --global alias.dc 'diff --cached'
git config --global alias.dh 'diff head'
git config --global alias.pr 'pull --rebase'
git config --global alias.pra 'pull --rebase --autostash'
git config --global alias.rc 'rebase --continue'
git config --global alias.rh 'reset HEAD'
git config --global alias.ss 'show --stat'
git config --global alias.st 'status'
git config --global alias.shove push

