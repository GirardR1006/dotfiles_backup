#!/bin/zsh
BACKUP_DIR=~/dotfiles_backup
BACKUP_FILE=$BACKUP_DIR/rc_list.csv
echo `basename $1`';'`readlink -f $1`';' >> $BACKUP_FILE
cp $1 $BACKUP_DIR/`basename $1`.sauv
echo $1 $BACKUP_DIR/`basename $1`.sauv  
