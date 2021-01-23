#!/bin/bash

HERE=$(dirname $0)
REPO=$(cat .git/config | grep url | cut -d: -f2 | cut -d. -f1)
FROM="git@bitbucket.org:${REPO}"
TO="git@github.com:${REPO}"

clear
echo "Github Migration Tool"
echo ""
echo "Migrating from ${FROM} ${TO}"
echo ""

git remote rename origin bitbucket
git remote add origin ${TO}

for BRANCH in $(git branch)
do
    if [ ! -d ${BRANCH} ] && [ ! -f ${BRANCH} ]; then
        git push origin ${BRANCH}
    fi
done

for TAG in $(git tag)
do
    git push origin ${TAG}
done

echo ""

read -p "Remove old origin? (y/N) " REMOVE
if [ "${REMOVE}" == "y" ] || [ "${REMOVE}" == "Y" ]; then
    git remote rm bitbucket
fi

echo ""
echo "Done!"
echo ""