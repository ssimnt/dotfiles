sudo apt-get update -y && sudo apt-get upgrade -y

# utils
sudo apt-get install git curl wget unzip \
 build-essential libssl-dev autoconf bison \
 libpq-dev libyaml-dev libreadline6-dev zlib1g-dev \
 libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev -y

# git config
git config --global user.email "my.name@email.com"
git config --global user.name "Simon"

# highlight for ccat
sudo apt-get install highlight -y

# trying out bat instead of the above
sudo apt install bat

# exa for file listings
sudo apt install exa

# nala
sudo apt install nala

# DuckDuckGo-er
pip3 install ddgr

# tmux
sudo apt-get install tmux -y

# tmux plugin manager (prefix i to install)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# using dircolors.ansi-dark
curl https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.ansi-dark --output ~/.dircolors

# iTerm2 colour scheme for WinTerm
wget https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/windowsterminal/nord.json
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

# ...and mono patched nerd fonts, install in Windows:
curl https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Bold/complete/Hack%20Bold%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf -O

# zsh
sudo apt install zsh -y
chsh -s $(which zsh)

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# might need to "exec zsh" after omz setup?
exec zsh
