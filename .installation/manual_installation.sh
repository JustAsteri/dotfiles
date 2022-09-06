#/bin/bash

cd ~/Downloads
mkdir repos
cd repos

# FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Oh-my-fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install

# Oh-my-tmux
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# Starship
curl -sS https://starship.rs/install.sh | sh

# Neovim pip packages
pip3 install neovim
pip3 install --user pylint

# Neovim plugin manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Espanso
mkdir -p ~/opt
wget -O ~/opt/Espanso.AppImage 'https://github.com/federico-terzi/espanso/releases/download/v2.1.6-beta/Espanso-X11.AppImage'
chmod u+x ~/opt/Espanso.AppImage
sudo ~/opt/Espanso.AppImage env-path register
espanso service register
espanso start

# Rofi
cd ~/Downloads/repos
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh
## Delete repo
cd ..
rm -rf rofi/