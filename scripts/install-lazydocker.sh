#!/bin/sh

curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash 
sudo cp $HOME/.local/bin/lazydocker /usr/bin/lazydocker