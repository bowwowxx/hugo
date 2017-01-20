#!/bin/sh
./hugo_0.18.1 --theme=cocoa-eh --baseUrl="https://bowwow.tips"
info="update blog at `date`"
git --git-dir=$PWD/public/.git --work-tree=$PWD/public pull
git add . && git commit -am "$info" && git push origin dev
git --git-dir=$PWD/public/.git --work-tree=$PWD/public add .
git --git-dir=$PWD/public/.git --work-tree=$PWD/public commit -am "$info"
git --git-dir=$PWD/public/.git --work-tree=$PWD/public push origin gh-pages
