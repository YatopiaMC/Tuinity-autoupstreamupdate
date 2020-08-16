#!/usr/bin/env bash
PS1=$
basedir=`pwd`

function update {
  branch=$2
  if [ -z "$2" ]; then
    branch="master"
  fi
  cd "$basedir/$1"
  git fetch && git reset --hard origin/$branch
  git add $1
}

update Paper progress/1.16.2
git submodule update --recursive