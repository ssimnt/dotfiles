# zsh plugins/themes
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

# rbenv
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | zsh

# Create symlinks to config files
ln -s .p10k.zsh ~/.p10k.zsh
ln -s .tmux.conf ~/.tmux.conf
ln -s .zshrc ~/.zshrc

# Link to aliases script in OMZ custom folder
ln -s aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh

# Reload
source .zshrc

# then prefix I to load tmux plugins...
