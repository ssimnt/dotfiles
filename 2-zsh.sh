# zsh plugins/themes
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

# rbenv
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | zsh

# Copy over config files
curl https://raw.githubusercontent.com/ssimnt/dotfiles/main/.p10k.zsh --output .p10k.zsh
curl https://raw.githubusercontent.com/ssimnt/dotfiles/main/.zshrc --output .zshrc
curl https://raw.githubusercontent.com/ssimnt/dotfiles/main/.tmux.conf --output .tmux.conf

# Download aliases script into custom folder
cd ~/.oh-my-zsh/custom/
curl https://raw.githubusercontent.com/ssimnt/dotfiles/251f3cda7114926a54a5bb2fc0a5eaafa938e9e1/aliases.zsh -o

# Download other dot files
cd ~
curl https://raw.githubusercontent.com/ssimnt/dotfiles/251f3cda7114926a54a5bb2fc0a5eaafa938e9e1/.zshrc -o
curl https://raw.githubusercontent.com/ssimnt/dotfiles/251f3cda7114926a54a5bb2fc0a5eaafa938e9e1/.p10k.zsh -o
curl https://raw.githubusercontent.com/ssimnt/dotfiles/251f3cda7114926a54a5bb2fc0a5eaafa938e9e1/.tmux.conf -o

# Reload
source .zshrc

# then prefix I to load tmux plugins
