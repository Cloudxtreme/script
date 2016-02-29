#!/bin/bash

git fetch

git checkout rel-1.0
git rebase origin/rel-1.0

git checkout rel-1.1
git rebase origin/rel-1.1

git checkout rel-1.2
git rebase origin/rel-1.2

git checkout rel-1.3
git rebase origin/rel-1.3

