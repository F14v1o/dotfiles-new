#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias tson='tailscale up'
alias sync-dotfiles="cd ~/newdotfiles && ./backup.sh && git add . && git commit -m 'Sync latest changes' && git push"
alias tsoff='tailscale down'
# ==============================================================================
# TERMINAL WELCOME DASHBOARD
# ==============================================================================

# Color definitions
COLOR_ARCH='\033[1;36m' # Cyan
COLOR_HEAD='\033[1;34m' # Blue
COLOR_KEY='\033[1;32m'  # Green
COLOR_VAL='\033[0m'     # Reset

# 1. Arch Linux ASCII Logo
echo -e "${COLOR_ARCH}"
echo "       /\        "
echo "      /  \       "
echo "     /\   \      "
echo "    /      \     "
echo "   /   _    \    "
echo "  /   | |    \   "
echo " /_.._|_|_\___ \ "
echo -e "${COLOR_VAL}"

echo "=================================================================="
echo " HOST: FLAVIO | SYSTEM: ARCH LINUX " sync-dotfiles
echo "=================================================================="
echo ""

# 2. Essential System Commands
echo -e "${COLOR_HEAD}SYSTEM MAINTENANCE COMMANDS:${COLOR_VAL}"
echo " * Update System & AUR :  yay"
echo " * Remove Orphan Packages:  sudo pacman -Rns \$(pacman -Qdtq)"
echo " * Clean Package Cache :  sudo paccache -r"
echo ""

# 3. Application Shortcuts Map
echo -e "${COLOR_HEAD}APPLICATION HOTKEYS:${COLOR_VAL}"
echo -e " [${COLOR_KEY}Alt+N${COLOR_VAL}] Neovim          | [${COLOR_KEY}Alt+C${COLOR_VAL}] Google Chrome"
echo -e " [${COLOR_KEY}Alt+Y${COLOR_VAL}] YouTube Xbox    | [${COLOR_KEY}Alt+M${COLOR_VAL}] YouTube Music"
echo -e " [${COLOR_KEY}Alt+W${COLOR_VAL}] WhatsApp        | [${COLOR_KEY}Alt+D${COLOR_VAL}] Discord"
echo -e " [${COLOR_KEY}Alt+A${COLOR_VAL}] Miruro          | [${COLOR_KEY}Alt+Q${COLOR_VAL}] qBittorrent"
echo -e " [${COLOR_KEY}Ctrl+N${COLOR_VAL}] NotebookLM"
echo ""
echo "=================================================================="
