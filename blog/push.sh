#!/bin/sh
./hugo --theme=grid-side --baseUrl="https://bowwow.tips"
info="update blog at `date`"
git --git-dir=$PWD/public/.git --work-tree=$PWD/public git pull
git add . && git commit -am "$info" && git push origin dev
git --git-dir=$PWD/public/.git --work-tree=$PWD/public add .
git --git-dir=$PWD/public/.git --work-tree=$PWD/public commit -am "$info"
git --git-dir=$PWD/public/.git --work-tree=$PWD/public push origin gh-pages
