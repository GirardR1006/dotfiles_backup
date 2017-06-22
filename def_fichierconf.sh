#!/bin/zsh
#Argument: fichier à sauvegarder sur le repo
#Effet: copie le fichier dans le repo et enregistre son chemin absolu dans un
#fichier


BACKUP_DIR=~/dotfiles_backup
BACKUP_FILE=$BACKUP_DIR/rc_list.csv
echo `basename $1`';'`readlink -f $1`';' >> $BACKUP_FILE
cp $1 $BACKUP_DIR/`basename $1`.sauv
echo 'Le fichier '$1 ' a été sauvegardé sous le nom ' $BACKUP_DIR/`basename $1`.sauv  
