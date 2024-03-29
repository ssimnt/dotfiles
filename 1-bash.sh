sudo apt-get update -y && sudo apt-get upgrade -y

# utils
sudo apt-get install git curl wget unzip jq \
 build-essential libssl-dev autoconf bison \
 libpq-dev libyaml-dev libreadline6-dev zlib1g-dev \
 libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev -y

# git config
git config --global user.email "my.name@email.com"
git config --global user.name "Simon"

# a few cmd replacements
# batcat to alias as cat, exa for file listings, nala
sudo apt install bat exa nala

# DuckDuckGo-er
pip3 install ddgr

# Taskwarrior
sudo apt-get install taskwarrior

# tmux
sudo apt-get install tmux -y

# tmux plugin manager (prefix i to install)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# create dir for setup,repos, etc
cd ~
mkdir setup
cd setup

# get mono patched nerd fonts, install in Windows:
curl https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Bold/complete/Hack%20Bold%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf -O

# clone dracula & nord themes for dotfiles, winterm + zsh
git clone https://github.com/dracula/dircolors.git
git clone https://github.com/dracula/zsh.git
git clone https://github.com/dracula/windows-terminal.git
git clone https://github.com/arcticicestudio/nord-dircolors.git

# symlink dircolors to Dracula by default
ln -s ~/setup/dircolors/.dircolors ~/.dircolors

# get Nord colour scheme for WinTerm, repo is huge...
wget https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/windowsterminal/nord.json

# ...and generic dark mode .dircolors as a backup
curl https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.ansi-dark --output .dircolors_solarized

#  create a new windows terminal profile similar to:
#    [
#        {
#            "guid": "{xxx}",
#            "hidden": false,
#            "name": "Debian",
#            "startingDirectory" : "\\wsl$\Ubuntu\home\si,
#            "colorScheme" : "nord",
#            "fontFace" : "Hack NF",
#            "fontSize" : 11,
#            "source": "Windows.Terminal.Wsl",
#            "useAcrylic" : false,
#            "acrylicOpacity" : 0.85
#        },

# ...also need VSCode scheme for terminal, eighties or nord
# https://glitchbone.github.io/vscode-base16-term/#/nord
# i.e:
# Nord -->  « workbench.colorCustomizations » in your VScode user settings
# "terminal.background":"#2E3440",
# "terminal.foreground":"#E5E9F0",
# "terminalCursor.background":"#E5E9F0",
# "terminalCursor.foreground":"#E5E9F0",
# "terminal.ansiBlack":"#2E3440",
# "terminal.ansiBlue":"#EBCB8B",
# "terminal.ansiBrightBlack":"#4C566A",
# "terminal.ansiBrightBlue":"#EBCB8B",
# "terminal.ansiBrightCyan":"#D08770",
# "terminal.ansiBrightGreen":"#BF616A",
# "terminal.ansiBrightMagenta":"#A3BE8C",
# "terminal.ansiBrightRed":"#88C0D0",
# "terminal.ansiBrightWhite":"#8FBCBB",
# "terminal.ansiBrightYellow":"#5E81AC",
# "terminal.ansiCyan":"#D08770",
# "terminal.ansiGreen":"#BF616A",
# "terminal.ansiMagenta":"#A3BE8C",
# "terminal.ansiRed":"#88C0D0",
# "terminal.ansiWhite":"#E5E9F0",
# "terminal.ansiYellow":"#5E81AC"

# zsh
sudo apt install zsh -y
chsh -s $(which zsh)

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

exec zsh
