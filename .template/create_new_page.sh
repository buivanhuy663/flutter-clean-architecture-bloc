#!/bin/bash

BLOC="bloc"
COMPONENT="components"
PARENT_DIR=".template/template_new_page"
REPLACE_SNAKE="_replace_snake_came"
REPLACE_PASCAL="ReplacePascalCame"
AUTHO="{autho}"
CREATED_AT="{DateNow}"
EX="dart"

parse_git_user() {
   git config --get user.name
}

convert_pascal_to_snack_case() {
    nameSnake=$(echo $1 | sed -r 's/([A-Z])/_\L\1/g' | sed 's/^_//')
    namePascal=$1
}

convert_snake_to_pascal_case() {
    nameSnake=$1
    namePascal=$(echo $1 | sed -r 's/(^|_)([a-z])/\U\2/g')
}

respace_content_file() {
    if [ -f $3 ]; then
        sed -i "s/$1/$2/" $3
    fi
}

rename_file() {
    if [ -f $1 ]; then
        mv $1 $2
    fi
}

create_new_page() {
    {

        pageNameOld="${newDir}/${REPLACE_SNAKE}_page.${EX}"
        pageNameNew="${newDir}/${nameSnake}_page.$EX"

        pageModuleOld="${newDir}/${BLOC}/${REPLACE_SNAKE}_module.${EX}"
        pageModuleNew="${newDir}/${BLOC}/${nameSnake}_module.$EX"

        pagePresenterOld="${newDir}/${BLOC}/${REPLACE_SNAKE}_presenter.${EX}"
        pagePresenterNew="${newDir}/${BLOC}/${nameSnake}_presenter.$EX"

        pageStateOld="${newDir}/${BLOC}/${REPLACE_SNAKE}_state.${EX}"
        pageStateNew="${newDir}/${BLOC}/${nameSnake}_state.$EX"

        exampleComponentNew="${newDir}/${COMPONENT}/example_component.$EX"

        cp -r $PARENT_DIR $newDir

        # main page
        rename_file $pageNameOld $pageNameNew
        respace_content_file $REPLACE_PASCAL $namePascal $pageNameNew
        respace_content_file $REPLACE_SNAKE $nameSnake $pageNameNew
        respace_content_file $AUTHO $userName $pageNameNew
        respace_content_file $CREATED_AT $dateNow $pageNameNew

        # module
        rename_file $pageModuleOld $pageModuleNew
        respace_content_file $REPLACE_PASCAL $namePascal $pageModuleNew
        respace_content_file $REPLACE_SNAKE $nameSnake $pageModuleNew

        # presenter
        rename_file $pagePresenterOld $pagePresenterNew
        respace_content_file $REPLACE_PASCAL $namePascal $pagePresenterNew
        respace_content_file $REPLACE_SNAKE $nameSnake $pagePresenterNew

        # state
        rename_file $pageStateOld $pageStateNew
        respace_content_file $REPLACE_PASCAL $namePascal $pageStateNew
        respace_content_file $REPLACE_SNAKE $nameSnake $pageStateNew

        # exmaple component
        respace_content_file $REPLACE_PASCAL $namePascal $exampleComponentNew
        respace_content_file $REPLACE_SNAKE $nameSnake $exampleComponentNew

    } || {
        rm -rf $newDir
        echo "An error appeared. $nameSnake page creation failed."
    }
}

dir=$1
nameSnake=""
namePascal=""
export userName="$(parse_git_user)"
dateNow=$(date '+%Y-%m-%d')
echo $dateNow


convert_snake_to_pascal_case $2
newDir="${dir}/${nameSnake}"

if [ ! -d "$newDir" ]; then
    echo "$nameSnake generating."
    create_new_page
else
    echo "$newDir is exist. $nameSnake page creation failed."
fi

