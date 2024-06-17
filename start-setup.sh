#///////////////////////////////////#
#///   setup install my .vimrc   ///#
#///////////////////////////////////#

#
# Github: github.com/antogit-sys
#

#!/bin/bash

# Percorso completo del file .vimrc nella directory corrente
vimrc_file="./src/vimrc"

# Percorso completo del file .vimrc nella home directory
vimrc_home="$HOME/.vimrc"

# Verifica se esiste il file .vimrc nella home directory
if [ -f "$vimrc_home" ]; then
    # Se esiste, rinomina il file esistente in .vimrc.old
    cp "$vimrc_home" "$HOME/.vimrc.old"
    echo "File .vimrc esistente rinominato in .vimrc.old"
fi

# Sposta il nuovo file .vimrc dalla directory corrente alla home directory
cp "$vimrc_file" "$vimrc_home"
echo "File .vimrc spostato in $HOME"


