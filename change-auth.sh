#!/bin/sh

git filter-branch --env-filter '

an="$GIT_AUTHOR_NAME"
am="$GIT_AUTHOR_EMAIL"
cn="$GIT_COMMITTER_NAME"
cm="$GIT_COMMITTER_EMAIL"

if [ "$GIT_COMMITTER_EMAIL" = "Rajesh.Gaikwad@gmail.com" ]
then
      cn="Rajesh Gaikwad"
      cm="Rajesh.Gaikwad@onedigitalad.com"
fi
if [ "$GIT_AUTHOR_EMAIL" = "Rajesh.Gaikwad@gmail.com" ]
then
  an="Rajesh Gaikwad"
  am="Rajesh.Gaikwad@onedigitalad.com"
fi

export GIT_AUTHOR_NAME="$an"
export GIT_AUTHOR_EMAIL="$am"
export GIT_COMMITTER_NAME="$cn"
export GIT_COMMITTER_EMAIL="$cm"
'
