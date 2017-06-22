#!/bin/zsh
CUR_DIR=$(pwd)
BACKUP_DIR=~/dotfiles_backup
BACKUP_FILE=$BACKUP_DIR/rc_list.csv
cd $BACKUP_DIR
git add $BACKUP_FILE
for i in find $BACKUP_DIR -name '*.sauv'
    git add $i
    git commit -m 'added new file'
    git push
cd $CUR_DIR
