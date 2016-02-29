#!/bin/bash

read -p "Commit ID: " COMMIT_ID

read -p "Commit Msg: " COMMIT_MSG

git checkout rel-1.0
git cherry-pick -n ${COMMIT_ID}
git commit -am "${COMMIT_MSG}"
git commit --amend


git checkout rel-1.1
git cherry-pick -n ${COMMIT_ID}
git commit -am "${COMMIT_MSG}"
git commit --amend

git checkout rel-1.2
git cherry-pick -n ${COMMIT_ID}
git commit -am "${COMMIT_MSG}"
git commit --amend

git checkout rel-1.3
git commit --amend


