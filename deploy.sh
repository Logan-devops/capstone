#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u ar8888 -p dckr_pat_11BFA3J5A0ke4a5023EN3B
    docker tag test ar8888/dev
    docker push ar8888/dev

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u ar8888 -p dckr_pat_11BFA3J5A0ke4a5023EN3B
    docker tag test ar8888/prod 
    docker push ar8888/prod
fi
