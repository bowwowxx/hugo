#!/bin/sh
./hugo --theme=grid-side --baseUrl="http://bowwow.tips"
info="update blog at `date`"
git --git-dir=$PWD/public/.git --work-tree=$PWD/public commit -am "$info"
git --git-dir=$PWD/public/.git --work-tree=$PWD/public push origin gh-pages
