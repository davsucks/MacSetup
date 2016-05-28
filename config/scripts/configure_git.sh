#!/usr/bin/env bash

git config --global merge.commit no
git config --global merge.ff yes
git config --global push.default simple
git config --global pull.rebase true

git config --global alias.cm 'commit -m'
git config --global alias.co checkout
git config --global alias.dc 'diff --cached'
git config --global alias.dh 'diff --head'
git config --global alias.pr 'pull --rebase'
git config --global alias.rc 'rebase --continue'
git config --global alias.st status