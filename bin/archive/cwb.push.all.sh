#!/bin/bash

git checkout rel-1.0
git push origin HEAD:refs/for/rel-1.0


git checkout rel-1.1
git push origin HEAD:refs/for/rel-1.1

git checkout rel-1.2
git push origin HEAD:refs/for/rel-1.2

git checkout rel-1.3
git push origin HEAD:refs/for/rel-1.3


