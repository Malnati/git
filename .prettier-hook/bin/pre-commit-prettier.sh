#!/bin/sh
# https://prettier.io/docs/en/precommit.html

printf "
 Running pre-commit hook.

"
if [ $(npm list -g --depth=0|grep prettier >/dev/null 2>&1) ]; then
    printf "
     You will need prettier installed globally. 
     So you could run for yourself $> sudo npm install -g prettier 

    "
fi

FILES=$(git diff --cached --name-only --diff-filter=ACMR "*.js" "*.jsx" | sed 's| |\\ |g')
[ -z "$FILES" ] && exit 0

printf "
 Executing prettier formatter against cached javascript (*.js *.jsx) files.

"
# Prettify all selected files
echo "$FILES" | xargs prettier --write

printf "
 Re-adding files after prettier checking.

"
# Add back the modified/prettified files to staging
echo "$FILES" | xargs git add


exit 0
